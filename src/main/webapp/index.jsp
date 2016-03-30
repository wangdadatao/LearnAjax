<%--
  Created by IntelliJ IDEA.
  User: 海涛
  Date: 2016/3/29
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<input type="text" name="username" id="username">
<button class="fasong">确定</button>

<script>
    (function () {
        var xmlHTTP = getXHR();

        var oInput = document.querySelector("#username");
        var oButton = document.querySelector(".fasong");


        oButton.onclick = function () {
            xmlHTTP.open("POST", "/login.do");
            xmlHTTP.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

            xmlHTTP.onreadystatechange = function () {



            }


            xmlHTTP.send("username=xiaoming");




        }
    })();

    function getXHR() {
        var xmlHTTP = null;
        if (window.ActiveXObject) {
            xmlHTTP = new ActiveXObject("Microsoft.XMLHTTP");
        } else {
            xmlHTTP = new XMLHttpRequest();
        }
        return xmlHTTP;
    }

</script>

</body>
</html>
