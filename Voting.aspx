<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Voting.aspx.cs" Inherits="Project.Voting" %>

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
           display:flex;
       }
       #sections{
           margin-left:70px;
           padding:10px;
       }
       .dataa{
           height:50px;
       }
       #SubmitDetailsBtn{
           padding:3px;
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
                <div class="section">
                <div class="dataa">
                <p>Name: </p>
                 <asp:TextBox ID="Textbox1" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </div>
                <div class="dataa">
                <p>Email: </p>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </div>
                <div class="dataa">
                    <p>Gender: </p>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>

                    <br />

                </div>
                <div class="dataa">
                <p>&nbsp;</p>
                    <p>Age: </p>
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <br/>
                    
                </div>
                    <br />
                <div class="dataa">
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Please enter the age"></asp:RequiredFieldValidator>
                    </p>
                    <p>Phone Number: </p>
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="Please enter the phone number"></asp:RequiredFieldValidator>
                
                </div>
                <div class="dataa">
                    <p>&nbsp;Residential Address: </p>
                <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" Display="None" ErrorMessage="Please enter the address"></asp:RequiredFieldValidator>
                <br/>
                </div>
                <div class="dataa">
                    <p>Occupation:</p>
                <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="None" ErrorMessage="Please enter the occupation"></asp:RequiredFieldValidator>
                </div>
                </div>
                <div class="section" id="sections">
                     <div class="dataa">
                      <p>Province: 
                          <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem>Punjab</asp:ListItem>
                              <asp:ListItem>KPK</asp:ListItem>
                              <asp:ListItem>Sindh</asp:ListItem>
                              <asp:ListItem>Islamabad</asp:ListItem>
                              <asp:ListItem>Balochistan</asp:ListItem>
                              <asp:ListItem>Gilgit Baltistan</asp:ListItem>
                          </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" Display="None" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                         </p>
               </div>
                    <div class="dataa">
                        <p>National Id: </p>
                    <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox1_TextChanged" Enabled="False"></asp:TextBox>
                    <br/>
                    </div>
                    <div class="dataa">
                    <p>Vote Id: </p>
                    <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <br/>
                    </div>
                    <div class="dataa">
                        <p>Your NA: </p>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="160px">
                            <asp:ListItem>NA-01</asp:ListItem>
                            <asp:ListItem>NA-02</asp:ListItem>
                            <asp:ListItem>NA-03</asp:ListItem>
                            <asp:ListItem>NA-04</asp:ListItem>
                            <asp:ListItem>NA-05</asp:ListItem>
                            <asp:ListItem>NA-06</asp:ListItem>
                            <asp:ListItem>NA-07</asp:ListItem>
                            <asp:ListItem>NA-08</asp:ListItem>
                            <asp:ListItem>NA-09</asp:ListItem>
                            <asp:ListItem>NA-10</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br/>
                        </div>
                        <div class="dataa">
                    <asp:Button ID="SubmitDetailsBtn" runat="server" Text="Submit Details" CssClass="custom-button" OnClick="SubmitDetailsBtn_Click"/>
                        </div>
                         <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" />
                    </div>
                </div>
            <div class="SecLast">

            </div>
        </div>       

    </form>
</body>
</html>
