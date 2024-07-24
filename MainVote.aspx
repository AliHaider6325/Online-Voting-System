<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainVote.aspx.cs" Inherits="Project.MainVote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
    margin:0;
    padding:0;
}
.SecOne{
    width:100%;
    height:180px;
    background-color:#ffca3a;
    color:white;
    text-align:start;
    padding-left:20px;
}
.SecOne p{
    color:brown;
    font-weight:600;
    font-size:17px;
}
.form{
    margin-top:30px;
    margin-left:350px;
    margin-bottom:20px;
    width:38%;
    height:380px;
    border:2px solid black;
    padding:10px;
}
.data{
    display:flex;
    justify-content:space-evenly;
    margin-top:5px;
    padding-left:10px;
}.data h1{
     font-size:60px;
 }
.mainn{
    align-content:center;
}
.Parties{
    height:60px;
    width:100px;
}
.Votes{
    width:90%;
    height:70px;
    border:1px solid black;
    margin-top:10px;
    margin-left:20px;
}
.Votes:hover{
    background-color:grey;
    cursor:pointer;
}
#SubmitButton{
    margin-left:200px;
    padding:8px;
    background:#ffca3a;
    color:white;
    border:1px solid white;
}
#Label1{
    margin-left:25px;
    color:red;
    font-weight:600;
}
#Label2{
    margin-left:25px;
    color:green;
    font-weight:600;
}
.SecLast{
    width:100%;
    height:80px;
    background:#ffca3a;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Main">
    <div class="SecOne">
        <h1>Personal Information:</h1><br/>
        <p>Name: <%=Name%></p><br/>
        <p>Email: <%=Email%></p><br/>
        <p>CNIC: <%=Cnic%></p>
    </div>
    <div class="form">
        <div class="mainn">
            <asp:Panel ID="Panel1" runat="server">
            <div class="Votes">
                <div class="data">
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="VoteGroup"/>
                <div>
                <h1>PTI</h1>
                </div>
                <div>
                <asp:Image ID="Image1" class="Parties" runat="server" ImageUrl="~/PtiFlag.png" AlternateText="Sample Image" />
                </div>
            </div>
                </div>
            <div class="Votes">
                <div class="data">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="VoteGroup"/>
                    <div>
                    <h1>PML-N</h1>
                    </div>
                    <div>
                    <asp:Image ID="PMLN" class="Parties" runat="server" ImageUrl="~/PmlnFlag.png" AlternateText="Sample Image"/>
                    </div>
                </div>
            </div>
            <div class="Votes">
                <div class="data">
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="VoteGroup"/>
                <div>
                <h1>PPP</h1>
                    
                    
                </div>
                <div>
                <asp:Image ID="PPP" class="Parties" runat="server" ImageUrl="~/PppFlag.png" AlternateText="Sample Image"/>
                </div>
                </div>
            </div>
            <div class="Votes">
                <div class="data">
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="VoteGroup"/>
                <div>
                <h1>JI</h1>
                </div>
                <div>
                <asp:Image ID="JI" class="Parties" runat="server" ImageUrl="~/JiFlag.png" AlternateText="Sample Image"/>
                </div>
                </div>
            </div>
        </asp:Panel>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:Button ID="SubmitButton" runat="server" Text="Submit Vote" OnClick="SubmitButton_Click" OnClientClick="return confirm('Are you sure you want to submit your vote?');" />
        </div>
        </div>
    <div class="SecLast">

    </div>
</div>       

    </form>
</body>
</html>
