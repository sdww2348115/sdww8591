<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.sdww8591.entity.Photo" %>
<html lang="en" style="" class=" ">
<!--<![endif]-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <link rel="shortcut icon" href="./img/xiongdi.ico">
    <link href='http://fonts.googleapis.com/css?family=Tangerine' rel='stylesheet' type='text/css'>
    <title>兄弟</title>
    <link href="./css/picture.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/ads.css">
    <!--link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css"-->
    <script src="./js/jquery-1.12.0.min.js"></script>
    <script src="./js/modal.js"></script>
    <meta class="foundation-mq-small">
    <meta class="foundation-mq-medium">
    <meta class="foundation-mq-large">

    <!--video js-->
    <link href="http://vjs.zencdn.net/5.0.2/video-js.css" rel="stylesheet">
    <script src="http://vjs.zencdn.net/ie8/1.1.0/videojs-ie8.min.js"></script>
    <script src="http://vjs.zencdn.net/5.0.2/video.js"></script>
    <style></style>
</head>

<body class="off-canvas hide-extras antialiased" style="">
<section role="main" class="body">
    <style type="text/css">
        section[role="main"] {
            background: url(./img/wood-bg.jpg) repeat;
        }

        section[role="main"] p a,
        li a {
            color: #7E3200;
        }

        section[role="main"] p a:hover,
        li a:hover {
            color: #461C00;
        }

        div#sidebarAd.cleanslate {
            background: rgba(255, 255, 255, 0.25);
        }

        .CodeRay {
            background: rgba(255, 255, 255, 0.75);
        }

        .row {
            overflow: visible
        }

        .project-header {
            margin-bottom: 1em;
        }

        @media screen and (max-width: 767px) {
            .polaroids li:nth-child(n+5) {
                display: none;
            }
        }

        ul.polaroids li {
            display: inline;
        }

        ul.polaroids a {
            background: #fff;
            display: inline;
            float: left;
            margin: 0 0 27px 30px;
            width: auto;
            padding: 10px 10px 15px;
            text-align: center;
            font-family: "Marker Felt", sans-serif;
            text-decoration: none;
            color: #333;
            font-size: 18px;
            -webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, .25);
            -moz-box-shadow: 0 3px 6px rgba(0, 0, 0, .25);
            -webkit-transform: rotate(-2deg);
            -webkit-transition: -webkit-transform .15s linear;
            -moz-transform: rotate(-2deg);
        }

        ul.polaroids li {
            padding-left: 0;
        }

        @media screen and (max-width: 768px) {
            ul.polaroids li a {
                margin-left: 0;
            }
        }

        ul.polaroids img {
            display: block;
            width: 190px;
            margin-bottom: 12px;
        }

        ul.polaroids a:after {
            content: attr(title);
        }

        ul.polaroids li:nth-child(even) a {
            -webkit-transform: rotate(2deg);
            -moz-transform: rotate(2deg);
        }

        ul.polaroids li:nth-child(3n) a {
            -webkit-transform: none;
            position: relative;
            top: -5px;
            -moz-transform: none;
        }

        ul.polaroids li:nth-child(5n) a {
            -webkit-transform: rotate(5deg);
            position: relative;
            right: 5px;
            -moz-transform: rotate(5deg);
        }

        ul.polaroids li:nth-child(8n) a {
            position: relative;
            right: 5px;
            top: 8px;
        }

        ul.polaroids li:nth-child(11n) a {
            position: relative;
            left: -5px;
            top: 3px;
        }

        ul.polaroids li.messy a {
            margin-top: -400px;
            position: relative;
            left: 160px;
        }

        ul.polaroids li a:hover {
            -webkit-transform: scale(1.25);
            -moz-transform: scale(1.25);
            -webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, .5);
            -moz-box-shadow: 0 3px 6px rgba(0, 0, 0, .5);
            position: relative;
            z-index: 5;
        }
    </style>
    <div class="row project-header" style="text-align:center">
        <div class="large-8 columns">
            <h1 style="font-family: 'Tangerine', cursive; font-size:100px">WE FORERVER</h1>
            <p class="lead" style="font-family:幼圆; font-size:30px; font-weight:bold;">有你们，生活何处不美好</p>
        </div>
    </div>
    <div class="row">
        <div class="large-12 columns" style="overflow: visible">
            <ul class="polaroids large-block-grid-4 small-block-grid-2">
                <c:forEach items="${photos}" var="photo">
                <li>
                    <a href="javascript:void(0);" title=<c:out value="${photo.title}"/> style="font-family:方正舒体; " class="video-play">
                        <img alt=<c:out value="${photo.title}"/> src=<c:out value="${photo.url}"/>>
                    </a>
                </li>
                </c:forEach>
                <li>
                    <a href="javascript:void(0);" title="视频测试" style="font-family:方正舒体; " class="video-play">
                    <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" poster="http://vjs.zencdn.net/v/oceans.png" data-setup="{}">
                        <source src="http://123.56.144.224/2.mp4" type="video/mp4">
                    </video>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</section>

</body>
</html>
