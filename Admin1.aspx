<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin1.aspx.cs" Inherits="Project.Admin1" %>

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
.Show{
    font-weight:600;
    font-size:18px;
    margin-right:65px;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <div class="main">
        <h3>Online Voting System</h3>
        <div class="login">
        <h4 id="hello">Hello, Admin!</h4><br />
        </div>
        &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your email"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Password" type="password"></asp:TextBox>
        <br />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Password" CssClass="Show" ForeColor="#0033CC" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit"/>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        
        <br />
        <br />
        <br />
        <br />

    </div>
    <div class="maintwo">
        <div class="admin">
            
        </div>
    </div>
</div>
        <script>
            let checkbox = document.getElementById("<%= CheckBox1.ClientID %>");
            let TextBox = document.getElementById("<%= TextBox3.ClientID %>");
            checkbox.addEventListener('change', function () {
                if (checkbox.checked) {
                    TextBox.type = "text";
                    
                } else {
                    TextBox.type = "password";
                }
            });
        </script>
    </form>
</body>
</html>
