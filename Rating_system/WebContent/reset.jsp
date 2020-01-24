<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body{
            background: rgb(179, 241, 179);
        }
       .box{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        width: 400px;
        padding: 40px;
        background: rgb(233, 226, 226, .6);
        box-sizing: border-box;
        box-shadow: 0 15px 25px rgb(58, 192, 69);
        border-radius: 15px;
       }
       h1{
           color: rgb(41, 201, 230);
       }
       input[type="password"]{
        width: 100%;
        padding: 10px 0;
        font-size: 16px;
        color: rgb(58, 192, 69);
        margin-bottom: 15px;
        border: hidden;
        outline: none;
        border-bottom: 1px solid rgb(58, 192, 69);
        outline: none;
        background: transparent;
       }
       input[type="submit"]{
           background: transparent;
           border: none;
           outline: none;
           color: #fff;
           background: rgb(8, 158, 8);
           padding: 10px 20px;
           cursor: pointer;
       }
       @media only screen and (max-width: 400px){
           .box{
               widows: 100%;
               
           }
           h1,input{
               padding: 0 5%;
           }
       }
    </style>
</head>
<body>
<form action="">
        <div class="box">
            <h1>Change Password</h1>
            <input type="password" placeholder="New Password" class="new" required><br>
            <input type="password" placeholder="Confirm Password" class="confirm" required><br>
            <input type="submit" value="Reset">
        </div>
    </form>
</body>
</html>