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
    <title>VR论坛</title>
    <link rel="stylesheet" href="/Static/css/bootstrap.css">
    <link rel="stylesheet" href="/Static/css/bootstrap-theme.css">
    <script src="/Static/js/jquery-2.2.1.js"></script>
    <script src="/Static/js/jquery.validate.js"></script>
    <script src="/Static/js/bootstrap.min.js"></script>

    <style>
        #div-login {
            position: absolute;
            width: 500px;
            border: 1px solid rgb(231, 231, 231);
            padding: 0 10px 20px 0;
            background-color: rgb(248, 248, 248);
            border-radius: 10px;
            top: 100px;
            left: 50%;
            margin-left: -250px;
        }

        #div-login form {
            margin: 0;
        }

        .a-remove {
            border: 1px solid rgb(140, 140, 140);
            background-color: rgb(248, 248, 248);
            width: 25px;
            height: 25px;
            line-height: 25px;
            text-align: center;
            border-radius: 50%;
            position: absolute;
            margin: -10px 0 0 480px;
        }

        .div-tuodong {
            height: 70px;
            background-image: url(/Static/img/login-vr.png);
            background-size: auto 100%;
            background-position: center;
            background-repeat: no-repeat;
            margin: 10px 5px 15px;
        }

        .div-back-login {
            z-index: 999;
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background-color: rgba(1, 1, 1, 0.35);
            display: none;
        }

        .text-class {
            color: red;
        }

        .div-vr-show {
            margin: 20px;
            width: 600px;
            height: 300px;
            float: left;
        }

        .div-vr-show .item, .item > img {
            height: 300px;
            width: 600px;
        }

        .div-head {
            background-color: rgb(248, 248, 248);
        }

        .div-show-news {
            height: 300px;
            float: right;
            margin: 15px;
            width: 38%;
            padding-left: 15px;
            border-left: 1px solid #9b9b9b;
        }

        .ul-news {
            margin: 0;
            padding: 0;

        }

        .ul-news li {
            list-style: none;
            line-height: 45px;
            height: 45px;
            text-indent: 15px;
        }

        .ul-news li:hover {
            background-color: #fff;
        }

        .emailpass-error {
            color: red;
            display: none;
        }

    </style>
</head>
<body>

<%--head--%>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">VR资源社区</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">主页 <span class="sr-only">(current)</span></a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <form id="form-search" class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" name="search" class="form-control" placeholder="帖子/主题">
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </li>
                <li><a href="javascript:;" class="a-show-login">登录</a></li>
                <li><a href="#">注册</a></li>
            </ul>
        </div>
    </div>
</nav>


<%--登录/注册--%>
<div class="div-back-login">
    <div id="div-login">
        <div class="a-remove">
            <a href="javascript:;" class="a-hide-login">X</a>
        </div>
        <div class="div-tuodong"></div>

        <div class="container-fluid">
            <form id="form-login" class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">邮箱:</label>
                    <div class="col-sm-10">
                        <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="邮箱">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">密码:</label>
                    <div class="col-sm-10">
                        <input type="password" name="password" class="form-control" id="inputPassword3"
                               placeholder="密码:">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">记住我
                            </label>
                            <a href="javascript:;" class="pull-right">忘记密码</a>
                        </div>
                    </div>
                </div>
                <div class="form-group emailpass-error">
                    <div class="col-sm-offset-2 col-sm-10">
                        <p>用户名或密码错误!</p>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <a type="submit" href="javascript:;" id="button-login" class="btn btn-success btn-lg btn-block">登录</a>
                    </div>
                </div>
            </form>
            <hr>
            <div><a class="btn btn-block btn-primary">使用qq帐号登录</a></div>
        </div>
    </div>
</div>

<div class="container div-head">
    <div class="div-vr-show">
        <div id="carousel-example-generic" class="carousel slide" data-interval="3500" data-pause=""
             data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">


                <div class="item active">
                    <img src="/Static/img/vr-show1.jpg">

                </div>
                <div class="item">
                    <img src="/Static/img/vr-show2.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="/Static/img/vr-show3.jpg" alt="...">
                </div>
                ...
            </div>
        </div>
    </div>

    <div class="div-show-news">
        <p>最新主题</p>
        <ul class="ul-news">
            <li><a href="javascript:;">VR产业5年内迎来首轮产业机遇期 </a></li>
            <li><a href="javascript:;">IBF与蚁视玩VR 拳王争霸赛或将实现VR直播 </a></li>
            <li><a href="javascript:;">VR,站在下一个风口改变“视”界</a></li>
            <li><a href="javascript:;">UCA2015奔驰大奖花落谁家 Here VR酒会现场揭晓</a></li>
            <li><a href="javascript:;">“镜”显真实 你的显卡能够支持VR吗?</a></li>
            <li><a href="javascript:;">比大片更真实 VR虚拟技术“穿越”未来的家</a></li>
        </ul>
    </div>

</div>

<script>
    $(function () {
        $(".a-show-login").click(function () {
            $(".div-back-login").show()
        });
        $(".a-hide-login").click(function () {
            $(".div-back-login").hide();
        });


        $("#button-login").click(function () {
            if ($("#inputEmail3").val().length > 0 && $("#inputPassword3").val().length > 0) {
                var xmlHTTP;
                if (window.ActiveXObject) {
                    xmlHTTP = new ActiveXObject("Mycrosoft.XMLHTTP");
                } else {
                    xmlHTTP = new XMLHttpRequest();
                }

                xmlHTTP.open("post", "/login.do", true);
                xmlHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

                xmlHTTP.onreadystatechange = function () {
                    if (xmlHTTP.readyState == 4 && xmlHTTP.status == 200) {

                        var backStr = xmlHTTP.responseText;
                        alert(backStr);
                        if ("1" == backStr) {
                            $(".div-back-login").hide();
                            $(".a-show-login").html($("#inputEmail3").val());
                            $(".div-back-login").attr("class", "a-email");
                        } else {
                            $(".emailpass-error").css("display", "block")
                        }
                    }
                };

                xmlHTTP.send("email=" + $("#inputEmail3").val() + "&password=" + $("#inputPassword3").val());

            } else {
                $("#inputEmail3").css("border", "1px solid red");
                $("#inputPassword3").css("border", "1px solid red")
            }

        });


        //登录表单验证
        $("#form-login").validate({
            errorElement: 'span',
            errorClass: "text-class",
            rules: {
                email: {
                    required: true
                },
                password: {
                    required: true
                }
            },
            messages: {
                email: {
                    required: "请输入邮箱!"
                },
                password: {
                    required: "请输入密码!"
                }
            }
        })


        //拖动登录框
        var oDiv = document.querySelector('.div-tuodong');
        var oLogin = document.querySelector("#div-login");

        oDiv.onmousedown = function (eve) {
            eve = eve || window.event;
            var oX = eve.screenX - oLogin.offsetLeft - 250, oY = eve.screenY - oLogin.offsetTop;
            document.onmousemove = function (event) {
                event = event || window.event;
                move(event, oX, oY);
            };
            document.onmouseup = function () {
                document.onmousemove = null;
                document.onmouseup = null;
            }
        };

        function move(e, aX, aY) {
            var l = e.screenX - aX, t = e.screenY - aY,
                    winW = document.documentElement.clientWidth || document.body.clientWidth,
                    winH = document.documentElement.clientHeight || document.body.clientHeight,
                    maxW = winW - oLogin.offsetWidth + 240,
                    maxH = winH - oLogin.offsetHeight;
            if (l < 250) {
                l = 250;
            } else if (l >= maxW) {
                l = maxW;
            }

            if (t < 0) {
                t = 0;
            } else if (t > maxH) {
                t = maxH;
            }

            console.log(maxW + '|' + l);
            oLogin.style.left = l + 'px';
            oLogin.style.top = t + 'px';
        }


    })

</script>
</body>
</html>
