<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
*{
    margin: 0;
    padding: 0;
    border: none;
    outline: none;
    box-sizing: border-box;
    font-family: "Popinns",sans-serif;
    
}

body
{
    display: flex;
    background:white;
}
.container{
    display:flex;
}
.sidebar
{
    position: sticky;
    top: 0;
    left: 0;
    bottom: 0;
    width: 110px;
    height: 100vh;
    padding: 0 1.7rem;
    overflow: hidden;
    color: white;
    transition: all 0.5s linear;
    background: #5a19bb;
}

.sidebar:hover
{
    width: 290px;
    transition: 0.5s;
}


.logo
{
    height: 80px;
    padding: 16px;
}

.menu
{
    height: 88%;
    position: relative;
    list-style: none;
    padding: 0;
}

.menu li
{
    padding: 1rem;
    margin: 8px 0;
    border-radius: 8px;
    transition: all 0.5s ease-in-out;
}

.menu li:hover 
{
    background: #CBC3E3;
}
#Dash{
     background: #CBC3E3;
}

.menu a
{
    color: white;
    font-size: 14px;
    text-decoration: none;
    display: flex;
    align-items: center;
    gap: 1.5rem;
}

.menu a span
{
    overflow: hidden;
}

.menu a i
{
    font-size: 1.2rem;
}

.logout
{
    position: absolute;
    bottom: 0;
    width: 100%;
}
.box-data{
    width:600px;
    height:500px;
    background:#CBC3E3;
    margin-left:270px;
    margin-top:45px;
    box-shadow: 10px 10px 5px rgba(0, 0, 0, 0.5);
    border-radius:25px;
}
.Secone{
    text-align:center;
    margin-top:15px;
    
}
.Secone h3{
    font-weight:800;
    font-size: 25px;
}
.Details{
    padding:25px;
    display:flex;
    flex-wrap:wrap;
}
.Boxes{
    padding:5px;
    width:100px;
    height:100px;
    background:white;
    margin:5px;
    border-radius:10px;
}
.gridView table,
    .gridView th,
    .gridView td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    .gridView th {
        background-color: #f2f2f2; 
        font-weight: bold;
    }

    .gridView table {
        width: 100%;
        border-collapse: collapse; 
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="sidebar">

    <div class="logo"></div>
    <ul class="menu">
        <li id="Dash" class="active">
            <a href="#">
                <i class="fa-solid fa-gauge"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li>
            <a href="VotersDetails.aspx">
                <i class="fa-solid fa-user"></i>
                <span>Voters Details</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa-solid fa-envelope"></i>
                <span>Current Result</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa-solid fa-question"></i>
                <span>Feedbacks</span>
            </a>
        </li>
        <li class="logout">
            <a href="default.aspx" onclick="Logout()" id="logout">
               <i class="fa-solid fa-right-from-bracket"></i>
                <span>Logout</span>
            </a>
        </li>
    </ul>
</div>
            <div class="box-data">
                <div class="Secone">
                    <h3>Welcome Ali, Uzair, Wahab, Farhan</h3>
                </div>
                <div class="Details">
                    <div class="gridView">
                    <asp:GridView ID="gvPhoneBook" runat="server" AutoGenerateColumns="false" Width="562px">
                    <Columns>
                    <asp:BoundField DataField="Total-voters" HeaderText ="Total voters" />
                    <asp:BoundField DataField="PTI" HeaderText ="PTI Votes" />
                    <asp:BoundField DataField="PMLN" HeaderText ="PML-N Votes" />
                    <asp:BoundField DataField="PPP" HeaderText ="PPP Votes" />
                    <asp:BoundField DataField="JI" HeaderText ="JI Votes" />

                    </Columns>
                    </asp:GridView>
</div>
 </div>
     </div>
</div>
</form>
</body>
</html>
