<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
<style>
        body{
            padding: 0;
            margin: 0;
            background: url("file:///E:/javaprog/Rating_system/WebContent/WEB-INF/image/anonymous1.jpg");
            background-size: cover;
        }
        .row{
            position: absolute;
            top: 10%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 95%;
            padding: 30px;
            background: rgba(32, 31, 32, 0.116);
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgb(58, 192, 69, .8);
            border-radius: 20px;
        }
        select,input{
            background: transparent;
            border: none;
            outline: none;
            border: 1px solid green;
            color: #fff;
        }
        .row:hover{
            background: rgba(128, 0, 128, 0.5);  
        }
        select:hover,input:hover{
        border: 2px solid purple;
        }
    </style>
</head>
<body>
<%
for(int i=0;i<6;i++){
	out.print("<div class=row><select><option value=select selected>select</option><option value=Physice>physice</option><option value=chemistry>chemistry</option><option value=math>math</option></select><select><option value=ram>Ram</option><option value=shyam>shyam</option><option value=gorav>gorav</option></select><input type=text placeholder=Board representatio><input type=text placeholder=Teacher behaviour><div class=stars data-rating=3><span class=star>&nbsp;</span><span class=star>&nbsp;</span><span class=star>&nbsp;</span><span class=star>&nbsp;</span><span class=star>&nbsp;</span></div></div>");
}
%>
</html>