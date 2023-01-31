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
        <style>
            .parse{
                width:90px;
                height:70px;
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
        </style>
        
        
        
    </head>
    <body onload="init()" background="${pageContext.request.contextPath}/image/bgimg.jpg" style="padding: 20px;line-height: 10px;">
        <a href="${pageContext.request.contextPath}/mvc/agv/">
            <img src="${pageContext.request.contextPath}/image/logo.png" alt="image error" border="0">
        </a>
        <div class="container-fluid">
            <div class="row">
                <main class="col-md-9 col-lg-10 px-md-4">
                    <div class="my-4 w-50">
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
<!--                        <form>
                            <div class="nativeDatePicker">
                                <label for="bday">Enter your day:</label>
                                <input type="date" id="bday" name="bday"/>
                                <span class="validity"></span>
                            </div>
                        </form>-->
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                          列印表單
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
                                            <img src="${pageContext.request.contextPath}/image/logo.png" alt="image error" border="0">
                                            <table id="va" class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">日期</th>
                                                        <th scope="col">任務數</th>
                                                        <th scope="col">稼動率</th>
                                                        <th scope="col">工作時數</th>
                                                        <th>
                                                            <input type="checkbox" id="checkAll"/>
                                                        </th>
                                                        <!--<th scope="col"></th>-->
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
                                            <label for="flexCheckChecked">
                                                取消選取六日
                                            </label>
                                        </div>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">關閉</button>
                                        <button type="button" class="btn btn-primary" onclick="printOut('printt')">列印</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
                    <div id="summ" class="col-8 card" style="background-color: #ffffff;opacity: .8;">
                        <table class="table table-borderless" style=" align-items: center;text-align: center;">
                            <thead>
                                <tr>
                                    <th>總任務數量</th>
                                    <th>平均任務數</th>
                                    <th>平均稼動率</th>
                                    <th>平均工作時數</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr style=" font-size: 25px">
                                    <td><p><input class="parse" type="text" id="task_sum" readonly/></p></td>
                                    <td><p><input class="parse" type="text" id="task" readonly/></p></td>
                                    <td><p><input class="parse" type="text" id="rate" readonly/></p></td>
                                    <td><p><input class="parse" type="text" id="work" readonly/></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </main>
            </div>
        </div>
        <!-- JavaScript Bundle with Popper -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/feather.min.js"
                integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
                crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/Chart.min.js"
                integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
                crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
        <script>
//            const nativePicker = document.querySelector('.nativeDatePicker');
//            console.log(nativePicker.value);
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
                var len = myChart.data.labels.length;
                var task_sum = 0;
                var work_sum = 0;
                var open_sum = 0;
                var x=0;
//                for(let i=0;i<len;i++){
//                    myChart.data.labels.pop();
//                    myChart.data.datasets[0].data.pop();
//                    myChart.data.datasets[1].data.pop();
//                }
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
                            ((data[i].workingHours/data[i].openHours)*100).toString().substring(0,2)+"%</td><td>"+data[i].workingHours+"</td>"+
                            "<td><input class=\"hh\" data-wd=\""+datawd+"\" type=\"checkbox\" id=\""+data[i].month.toString()+data[i].day.toString()+"d\"/></td></th>";
                }
                myChart.update();
                document.getElementById("task_sum").value = task_sum;
                document.getElementById("task").value = String((task_sum/x)*100).substring(0,2);
                document.getElementById("rate").value = String((work_sum/open_sum)*100).substring(0,2)+"%";
                document.getElementById("work").value = String(work_sum/x).substring(0,4)+"hr";
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
            function printOut(divId) {
                $('.hh').each(function(index, elem) {
                    if (!$(elem).prop('checked')) {
                      console.log($(this));
                      $(this).parent().parent().remove();
                    }
                });
                var printOutContent = document.getElementById(divId).innerHTML;
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
                var open_sum = 0;
                for(let i=0;i<len;i++){
                    if(table.rows[i].innerHTML != ""){
                        task_sum += Number(table.rows[i].cells[1].innerHTML);
                        rate_sum += Number(String(table.rows[i].cells[2].innerHTML).replace("%",""));
                        open_sum += Number(table.rows[i].cells[3].innerHTML);
                    }
                }
                console.log("task_sum: "+task_sum);
                console.log("rate_sum "+rate_sum);
                console.log("open_sum "+open_sum);
                document.getElementById("task_sum").value = task_sum;
                document.getElementById("task").value = String((task_sum/len)*100).substring(0,2);
                document.getElementById("rate").value = String((rate_sum/len)*100).substring(0,2)+"%";
                document.getElementById("work").value = String(open_sum/len).substring(0,4)+"hr";
                window.print();
                window.location.reload();
            }
            
        </script>
        
    </body>
</html>