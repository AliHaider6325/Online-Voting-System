﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageL1.aspx.cs" Inherits="Project.PageL1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body{
        background:#5a19bb;

    }

    .container{
        display:flex;
        justify-content:center;
        margin-top:50px;
        color:white;
        font-size:20px;
    }
    .maintwo{
        height:500px;
        width:300px;
        background:url("loginPic.jpg");
        background-size: cover; /* Ensures the image covers the entire background */
        background-position: center; /* Centers the image */
        background-repeat: no-repeat; /* Prevents the image from repeating */
        background-attachment: fixed; 
    }
    .main{
        width:30%;
        height:500px;
        background:white;
        background-position:center;
        text-align:center;
        color:#8b3eff;
    }
    .login{
        color:#00008B;

    }
    #Button1{
        margin-top: 20px;
        Width:86px;
        background:white;
        color:deeppink;
        border:1px solid #00008B;
        height:30px;
    }
    #Button1:hover{
        color:white;
        background:deeppink;
    }
    .main h3{
        color:#5a19bb;
    }
    #TextBox1{
    height:40px;
    width:250px;
    }
    #Label1{
        font-weight:600;
    }
    #TextBox3{
        height:40px;
        width:250px;
    }
    #Button2{
        margin-top:10px;
        Width:86px;
        background:white;
        color:deeppink;
        border:1px solid #00008B;
        height:30px;
    }
    #Button2:hover{
        color:white;
        background:#00008B;
    }
    

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <div class="main">
        <h3>Online Voting System</h3>
        <div class="login">
        <h4 id="hello">Hello, <%= s %>!</h4>
            <br />
            <asp:Label ID="Label1" runat="server" Text="A 6 digit Code is sended to your gmail"></asp:Label>
            <br />
            <br />
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter 6 digit verification code" OnTextChanged="TextBox1_TextChanged" ValidationGroup="ValidationGroup1"></asp:TextBox>
        <br />
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" ValidationGroup="ValidationGroup1"/>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        Didn&#39;t Recieve the code?<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send Again" CausesValidation="False"/>
        &nbsp;&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" style="margin-top: 19px ; width:fit-content" ForeColor="Red" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Please enter the 6 digit code" ForeColor="Red" EnableTheming="False"></asp:RequiredFieldValidator>
        <br />
        

    </div>
    <div class="maintwo">
        
    </div>
</div>
    </form>
</body>
</html>
