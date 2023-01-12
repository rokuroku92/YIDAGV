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

        <style>
          .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
          }

          @media (min-width: 768px) {
            .bd-placeholder-img-lg {
              font-size: 3.5rem;
            }
          }

        </style>
        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/css/dashboard.css" rel="stylesheet">
        
        
        
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
                            <button type="button" class="btn btn-outline-primary" onclick="reSet('recently')">最近</button>
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
                    </div>    
                    <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
                </main>
            </div>
        </div>
        <!-- JavaScript Bundle with Popper -->
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
//                for(let i=0;i<len;i++){
//                    myChart.data.labels.pop();
//                    myChart.data.datasets[0].data.pop();
//                    myChart.data.datasets[1].data.pop();
//                }
                myChart.data.labels = [];
                myChart.data.datasets[0].data = [];
                myChart.data.datasets[1].data = [];
                
                for(let i=0 ; i < data.length ; i++) {
                    myChart.data.labels.push(data[i].month + '/' + data[i].day);
                    myChart.data.datasets[0].data.push((data[i].workingHours/data[i].openHours).toString().substring(2,4));
                    myChart.data.datasets[1].data.push(data[i].task);
                }
                myChart.update();
                console.log(myChart.data);
            }
        </script>
        
        <input type="button" value="test" onclick="" />
        
    </body>
</html>