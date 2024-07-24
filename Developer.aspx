<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Developer.aspx.cs" Inherits="Project.Developer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0;
            padding:0;
        }
        body{
            background-image: url('dbg.jpg');
            background-size: cover;
            color:white;

        }
        .heading{
            margin-bottom:10px;
        }
        .container{
            display:flex;
            justify-content:center;
        }
        .developers{
            width:18%;
            height:250px;
            background:white;
            margin:15px;
            border-radius:3px;
            margin-top:70px;
            
        }
        .Dnavbar{
            width:100%;
            height:22%;
            text-align:center;
            background:#272343;
            font-weight:600;
            font-size:25px;
           
        }
        .Dmain{
            width:100%;
            height:140px;
            display:flex;
            justify-content:center;
            margin-top:18px;
            
        }
        .Dpic{
            height:75%;
            width:50%;
            background-image:url("ali.jpg");
            background-size: cover;
            border:1px solid black;
            border-radius:5px;
        }
        #Ali{
            background-image:url("wahab.jpg");
            background-size: cover;
        }
        #Farhan{
            background-image:url("wahab.jpg");
            background-size: cover;
        }
        #Uzair{
            background-image:url("wahab.jpg");
            background-size: cover;
        }
        #Wahab{
            background-image:url("wahab.jpg");
            background-size: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="heading">Project Overview:</h1>
            <p>Our online voting system is designed to enable secure and efficient voting for the next Prime Minister of Pakistan within a corporate environment.<br /> The system ensures the integrity and confidentiality of each vote through robust security measures, including Two-Factor Authentication (2FA).</p>
            <div class="container">
                <div class="developers">
                    <div class="Dnavbar">
                        <p>Muhammad Ali Haider</p>
                    </div>
                    <div class="Dmain">
                        <div class="Dpic" id="Ali">
                        </div>
                        
                    </div>
                </div>
                <div class="developers">
                    <div class="Dnavbar">
                        <p>Muhammad Uzair</p>
                    </div>
                    <div class="Dmain">
                        <div class="Dpic" id="Uzair"></div>
                    </div>
                </div>
                <div class="developers">
                    <div class="Dnavbar">
                        <p>Farhan Ullah</p>
                    </div>
                    <div class="Dmain">
                        <div class="Dpic" id="Farhan"></div>
                    </div>
                </div>
                <div class="developers">
                    <div class="Dnavbar">
                        <p>Abdul Wahab</p>
                    </div>
                    <div class="Dmain">
                        <div class="Dpic" id="Wahab"></div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
