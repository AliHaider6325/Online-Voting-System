<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Project.Page1" %>

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
            background-size: cover; 
            background-position: center; 
            background-repeat: no-repeat; 
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
        
        #TextBox3{
            height:40px;
            width:250px;
        }
        #Admin{
           width: 70px;
           height: 70px;
           background-image: url('admin.jpg'); 
           background-size: cover; 
           background-position: center; 
           border: none; 
           margin:10px;
           cursor: pointer;
           float:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="main">
                <h3>Online Voting System</h3>
                <div class="login">
                <h4 id="hello">Hello, Welcome!</h4><br />
                </div>
                &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your email"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your CNIC (without dashes)"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="CnicValidator" runat="server" 
                ControlToValidate="TextBox3" 
                ErrorMessage="Please enter a valid CNIC number (xxxxx-xxxxxxx-x)." 
                ValidationExpression="^\d{5}-\d{7}-\d{1}$" 
                ForeColor="Red" Display="None" />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit"/>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="margin-top: 19px ; width:fit-content" ForeColor="Red" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Please enter the data" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"  Display="None" ErrorMessage="Please enter the email" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

            </div>
            <div class="maintwo">
                <div class="admin">
                    
                    <asp:Button ID="Admin" runat="server" OnClick="Button2_Click" Text="" CausesValidation="False"/>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
