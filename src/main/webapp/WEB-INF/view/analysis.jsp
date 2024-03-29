<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.88.1">
        <title>元創智動AGV效益分析</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/css/dashboard.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        
        <style>
            .parse{
                width:87%;
                height: 70px;
                background-color: #DEDEDE;
                text-align: center;
                border: 0;
            }
            @media print {
                .container-fluid{
                    display: none;
                }
                .printt{
                    display: flow;
                }
            }
            .btnt{
                color: white;
            }
            .btnt:hover{
                color: red;
            }
            .btn-yid{
                --bs-btn-disabled-opacity:1;
                --bs-btn-bg:#93ba55;
                --bs-btn-border-color:#93ba55;
                --bs-btn-hover-bg:#89b04b;
                --bs-btn-hover-border-color:#89b04b;
                --bs-btn-active-bg:#6b922d;
                --bs-btn-active-border-color:#6b922d;
                color: white;
            }
        </style>
        
        
        
    </head>
    <body onload="init()" style="padding: 0px;line-height: 10px;">
        <img src="${pageContext.request.contextPath}/image/2023AGVS_UI_1280_800_top_20230223.png" alt="image error" style="max-width:100%;">
        <div class="container-fluid" style="padding: 20px;padding-left: 40px;padding-right: 40px;padding-bottom: 0px;">
            <div class="row">
                <div class="col">
                    <img src="${pageContext.request.contextPath}/image/icon_3.png" alt="image error">
                    <font size="4">效益分析</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-outline-primary" onclick="reSet('recently')">最近兩週</button>
                        <div class="btn-group" role="group">
                            <button id="btnGroupDrop1" type="button" class="btn btn-outline-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                              月
                            </button>
                            <ul id="yearsandmonths" class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                            </ul>
                        </div>
                    </div>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        列印表單
                    </button>
                    <button type="button" class="btn btn-primary" onclick="myexcel()">
                        匯出成Excel
                    </button>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">確認列印表單</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div id="printt">
                                        <img src="${pageContext.request.contextPath}/image/logo.png" alt="image error" border="0" id="logog">
                                        <table id="va" class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">日期</th>
                                                    <th scope="col">任務數</th>
                                                    <th scope="col">稼動率</th>
                                                    <th scope="col">工作時數</th>
                                                    <th scope="col">開機時數</th>
                                                    <th>
                                                        <input type="checkbox" id="checkAll" checked/>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody id="pt">
                                            </tbody>
                                      </table>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <div>
                                        <input type="checkbox" id="cancelweekend">
                                        <label for="cancelweekend">
                                            取消選取六日
                                        </label>
                                    </div>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">關閉</button>
                                    <button type="button" class="btn btn-primary" onclick="printOut()">列印</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="${pageContext.request.contextPath}/mvc/agv/" style=" float: right">
                        <input type="button" class="btn btn-yid" value="返回主畫面">
                    </a>
                </div>
            </div>
            <div class="row" style=" justify-content: center">
                <div class="col-10">
                    <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
                </div>
            </div>
            <hr size="4px" align="center" width="100%">
            <div class="row" style=" justify-content: center">
                <div class="col">
                    <div id="summ" class="col-12" style="background-color: #ffffff;opacity: .8;">
                        <table class="table table-borderless" style=" align-items: center;text-align: center;">
                            <thead>
                                <tr>
                                    <th>總任務數量</th>
                                    <th>平均任務數</th>
                                    <th>總開機時數</th>
                                    <th>總工作時數</th>
                                    <th>平均工作時數</th>
                                    <th>平均稼動率</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr style=" font-size: 1.5em">
                                    <td><p><input style="color: blue;" class="parse" type="text" id="task_sum" readonly/></p></td>
                                    <td><p><input style="color: blue;" class="parse" type="text" id="task" readonly/></p></td>
                                    <td><p><input style="color: blue;" class="parse" type="text" id="open_sum" readonly/></p></td>
                                    <td><p><input style="color: blue;" class="parse" type="text" id="work_sum" readonly/></p></td>
                                    <td><p><input style="color: blue;" class="parse" type="text" id="work" readonly/></p></td>
                                    <td><p><input style="color: blue;" class="parse" type="text" id="rate" readonly/></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <footer style="text-align: center">
            元創智動股份有限公司版權所有  TEL:02-26087894 Email:sales@yid.com.tw
        </footer>
        <!-- JavaScript Bundle with Popper -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.slim.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/feather.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/Chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
        <script>
            function init(){
                getYearsAndMonths();
            }

            function getYearsAndMonths(){
                var xhr = new XMLHttpRequest();
                var baseUrl = "${pageContext.request.contextPath}/mvc/api/analysis/yyyymm";
                xhr.open('GET', baseUrl, true);
                xhr.send();
                xhr.onload = function(){
                    if(xhr.status == 200){
                        var data = JSON.parse(this.responseText);
                        var html = "";
                        for(let i=0;i<data.length;i++){
                            var yyyy = data[i].year+"";
                            var mm = data[i].month+"";
                            mm = (mm.length == 1) ? '0'+mm : mm;
                            html+="<li><a class=\"dropdown-item\" onclick=\"reSet("+yyyy+mm+")\">"+data[i].year+"/"+data[i].month+"</a></li>";
                        }
                        html+="<li><a class=\"dropdown-item\" onclick=\"reSet('all')\">全部</a></li>";
                        document.getElementById("yearsandmonths").innerHTML = html;
                        reSet('recently');
                    }
                };
            }
            
            function reSet(x){
                var xhr = new XMLHttpRequest();
                var baseUrl = "${pageContext.request.contextPath}/mvc/api/analysis/mode?value=" + x;
                xhr.open('GET', baseUrl, true);
                xhr.send();
                xhr.onload = function(){
                    if(xhr.status == 200){
                        var data = JSON.parse(this.responseText);
                        console.log(data);
                        test(data);
                    }
                };
            }
            
            function test(data) {
//                var len = myChart.data.labels.length;
                var task_sum = 0;
                var work_sum = 0;
                var open_sum = 0;
                var x=0;
                myChart.data.labels = [];
                myChart.data.datasets[0].data = [];
                myChart.data.datasets[1].data = [];
                var html = "";
                for(let i=0 ; i < data.length ; i++) {
                    myChart.data.labels.push(data[i].month + '/' + data[i].day);
                    myChart.data.datasets[0].data.push(((data[i].workingHours/data[i].openHours)*100).toString().substring(0,2));
                    myChart.data.datasets[1].data.push(data[i].task);
                    task_sum += data[i].task;
                    work_sum += data[i].workingHours;
                    open_sum += data[i].openHours;
                    if(data[i].task>0)x++;
                    let week = "";
                    let datawd = "";
                    switch(data[i].week){
                        case 1:
                            week = "(一)";
                            datawd = "f";
                            break;
                        case 2:
                            week = "(二)";
                            datawd = "f";
                            break;
                        case 3:
                            week = "(三)";
                            datawd = "f";
                            break;
                        case 4:
                            week = "(四)";
                            datawd = "f";
                            break;
                        case 5:
                            week = "(五)";
                            datawd = "f";
                            break;
                        case 6:
                            week = "(六)";
                            datawd = "t";
                            break;
                        case 7:
                            week = "(日)";
                            datawd = "t";
                            break;
                    }
                    // 列印之表格
                    html += "<tr id=\""+data[i].month.toString()+data[i].day.toString()+"\"><th scope=\"row\">"+data[i].month + '/' + data[i].day+week+"</th><td>"+data[i].task+"</td><td>"+
                            ((data[i].workingHours/data[i].openHours)*100).toString().substring(0,2)+"%</td><td>"+data[i].workingHours+"</td><td>"+data[i].openHours+"</td>"+
                            "<td><input class=\"hh\" data-wd=\""+datawd+"\" type=\"checkbox\" id=\""+data[i].month.toString()+data[i].day.toString()+"d\" checked/></td></th>";
                }
                myChart.update();
                document.getElementById("task_sum").value = task_sum;
                document.getElementById("task").value = String((task_sum/x)*100).substring(0,2);
                document.getElementById("open_sum").value = String(open_sum)+"hr";
                document.getElementById("work_sum").value = String(work_sum)+"hr";
                document.getElementById("work").value = String(work_sum/x).substring(0,4)+"hr";
                document.getElementById("rate").value = String((work_sum/open_sum)*100).substring(0,2)+"%";
                document.getElementById("pt").innerHTML = html;
                console.log(myChart.data);
                // 選取方塊
                $(function(){
                    // 全選 or 全取消
                    $('#checkAll').click(function(event) {
                        var tr_checkbox = $('table tbody tr').find('input[type=checkbox]');
                        tr_checkbox.prop('checked', $(this).prop('checked'));
                        // 阻止向上冒泡，以防再次觸發點擊操作
                        event.stopPropagation();
                    });
                    $('#cancelweekend').click(function(event) {
                        var tr_checkbox = $('table tbody tr').find('input[data-wd="t"]');
                        tr_checkbox.prop('checked', !$(this).prop('checked'));
                        var tbr = $('table tbody tr');
                        var tbrr = $('.hh');
                        $('#checkAll').prop('checked', tbr.find('input[type=checkbox]:checked').length == tbrr.length ? true : false);
                        // 阻止向上冒泡，以防再次觸發點擊操作
                        event.stopPropagation();
                    });
                    // 點擊表格每一行的checkbox，表格所有選中的checkbox數 = 表格行數時，則將表頭的‘checkAll’單選框置為選中，否則置為未選中
                    $('table tbody tr').find('input[type=checkbox]').click(function(event) {
                        var tbr = $('table tbody tr');
                        var tbrr = $('.hh');
                        $('#checkAll').prop('checked', tbr.find('input[type=checkbox]:checked').length == tbrr.length ? true : false);
                        // 阻止向上冒泡，以防再次觸發點擊操作
                        event.stopPropagation();
                    });
                    // 點擊表格行(行内任意位置)，觸發選中或取消選中該行的checkbox
                    $('table tbody tr').click(function() {
                        $(this).find('input[type=checkbox]').click();
                    });

                });
            }
            //  列印
            function printOut() {
                $('.hh').each(function(index, elem) {
                    if (!$(elem).prop('checked')) {
                      console.log($(this));
                      $(this).parent().parent().remove();
                    }
                });
                $('input[type=checkbox]').remove();
                
                var printOutContent = document.getElementById("printt").innerHTML;
                var printOutContent1 = document.getElementById("summ").innerHTML;
                document.body.innerHTML = printOutContent+printOutContent1;
                var table = document.getElementById("pt");
                var len = document.getElementById("pt").rows.length;
                var llen=0;
                console.log(len);
                for(let i=0;i<len;i++)
                    if(table.rows[i].innerHTML != "")llen++;
                console.log(llen);
                var task_sum = 0;
                var rate_sum = 0;
                var work_sum = 0;
                var open_sum = 0;
                for(let i=0;i<len;i++){
                    if(table.rows[i].innerHTML != ""){
                        task_sum += Number(table.rows[i].cells[1].innerHTML);
                        rate_sum += Number(String(table.rows[i].cells[2].innerHTML).replace("%",""));
                        work_sum += Number(table.rows[i].cells[3].innerHTML);
                        open_sum += Number(table.rows[i].cells[4].innerHTML);
                    }
                }
                console.log("task_sum: "+task_sum);
                console.log("rate_sum "+rate_sum);
                console.log("open_sum "+open_sum);
                document.getElementById("task_sum").value = task_sum;
                document.getElementById("task").value = String((task_sum/len)*100).substring(0,2);
                document.getElementById("open_sum").value = String(open_sum)+"hr";
                document.getElementById("work_sum").value = String(work_sum)+"hr";
                document.getElementById("work").value = String(work_sum/len).substring(0,4)+"hr";
                document.getElementById("rate").value = String(Math.round(rate_sum/len)).substring(0,2)+"%";
                window.print();
                window.location.reload();
            }
            function myexcel(){
                $('input[type=checkbox]').remove();
                $('#logog').remove();
                var html = '<meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8" /><title>Excel</title>';
                html += '';
                html += document.getElementById('printt').innerHTML + '';
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
                window.location.reload();
            }
        </script>
        
    </body>
</html>