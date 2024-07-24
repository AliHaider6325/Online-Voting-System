<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="Project.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Voting System</title>
   <style>
    *{
    margin:0;
    padding:0;
    }
    .SecOne{
        background-image:url("main.JPEG");
        object-fit:cover;
    }
    .Navbar{
    padding-top:150px;
    padding-bottom:150px;
    color:white;
    text-align:center;
    line-height:80px;
    }
    #h1Vote{
        font-size: 70px;
    }
    #GetStarted{
       padding:20px 30px 20px 30px;
       color:white;
       border: 3px solid white;
       background : none;
       border-radius:30px;
    }
    #GetStarted:hover{
        padding:20px 30px 20px 30px;
        background-color:white;
        border: 3px solid #ffca3a;
        color:#ffca3a;
        font-size:13px;
    }
    .SecTwo{
        background:#ffca3a;
        width:100%;
        height:400px;
        text-align:center;
    }
    .SecTwo h1{
        font-size: 80px;
        max-width:70%;
        padding-left:200px;
    }
    .SecTwo p{
        margin-top:30px;
        font-weight:300;
        font-size:20px;
    }
    .SecTwobtns{
        margin-top: 35px;
    }
    .SecTwobtns Button{
        padding:30px 30px 30px 30px;
        color:white;
        border:none;
        border-radius:50px;
        font-weight:600;
        font-size:20px;
        margin: 10px;
    }
    #CastBtn{
        background : #1982c4;
        padding:30px 30px 30px 30px;
        color:white;
        border:none;
        border-radius:50px;
        font-weight:600;
        font-size:20px;
        margin: 10px;
    }
    #LearnBtn{
        background : #6a4c93;
        padding:30px 30px 30px 30px;
        color:white;
        border:none;
        border-radius:50px;
        font-weight:600;
        font-size:20px;
        margin: 10px;
    }
    .SecThree{
        background:#f7f7f7;
        width:100%;
        height:600px;
        text-align:center;
        padding-top:40px;
    }
    .SecThree h1{

        font-size: 60px;
    }
    .SecThree image{
        width:100px;
        height:100px;
    }
    .MVot{
        
    }
    .Vot{
        display:flex;
        justify-content:center;
        margin-top:20px;
    }
    #Vot1{
        width:200px;
        height:200px;
        margin-right:20px;
        margin-top:22px;
    }
    #Vot2{
        width:200px;
        height:200px;
        margin-left:20px;
    }
    .SecThree p{
        margin-top:20px;
        font-size: 18px;
    }
    .SecFour{
        width:100%;
        height:400px;
        background:#edefeb;
        text-align:center;
        padding-top:40px;
        
    }
    .SecFour h1{
        font-size:40px;
    }
    .SecFourPers{
        margin-top:40px;
        display:flex;
        justify-content:center;
    }
    .SecFourPers img{
        width:200px;
        height:200px;
        padding:10px;
    }
    .SecFourPers a{
        decoration:none;

    }
    .SecFive{
        width:100%;
        height:200px;
        background:#edefeb;
    }
    .SecFiveText{
        display:flex;
        justify-content:center;
    }
    .SecFiveText h1{
        color:#1982c4;
        font-size:60px;
    }
    .SecFiveText p{
        font-weight:600;
    }
    .Data{
        margin:60px;
    }
    .SecSix{
        width:100%;
        height:200px;
        background:black;
    }
    .SecSixHome{
        color:white;
        text-align:center;
        padding-top:20px;
    }
    .SecSixHome a{
        padding:40px;
    }
    .SecSixIcons{
        margin-top:50px;
        display:flex;
        justify-content:center;
        justify-content:space-evenly;
    }
    .Icon{
        height:70px;
        width:70px;
        border-radius:50%;
        text-align:center;
        align-content:center;
    }
    .Icon img{
        height:100%;
        width:100%;
    }
    #gmail{
        background:white;
        border-radius:50%;
    }
    .Icon p{
        color:white;
    }
    .styled-text{
        font-size:30px;
        font-weight:600;
        color:forestgreen;
        display:flex;
        justify-content:center;
        animation:2s ease-in;
    }

   </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="Main">
           <div class="SecZero">
               
           </div>
        <div class="SecOne">
            <div class="Navbar">
                <h1 id="h1Vote">Vote Now</h1>
                <h1>Empower Your Voice with Our ASP.NET Online Voting System</h1>
                <asp:Button ID="GetStarted" runat="server" Text="Get Started" CssClass="custom-button" OnClick="GetStarted_Click"/>
            </div>
           </div>
           <div class="SecTwo">
               <h1>Make Your Vote Count Today!</h1>
               <p>Join our ASP.NET voting platform and be the change you wish to see.</p>
               <div class="SecTwobtns">
                   <asp:Button ID="CastBtn" runat="server" Text="Cast Vote" CssClass="custom-button" OnClick="CastBtn_Click"/>
                   <asp:Button ID="LearnBtn" runat="server" Text="Learn more" CssClass="custom-button" OnClick="LearnBtn_Click"/>
               </div>
               </div>
               <div class="SecThree">
               <h1>Latest Voting Updates</h1>
                   <div class="MVot">
                   <div class="Vot">
                   <asp:Image ID="Vot1" runat="server" ImageUrl="~/Voting1.jpg" AlternateText="Sample Image"/>
                   <div class="Vot">
                   <asp:Image ID="Vot2" runat="server" ImageUrl="~/Voting2.jpg" AlternateText="Sample Image"/>
                    </div>
                 </div>
                       <p>The Pakistan Elections 2024 mark a significant milestone in the country's democratic journey. As the nation stands on the brink of a new era, these elections are not just a political event but a testament to the evolving democratic fabric of Pakistan. Over the past few decades, Pakistan has faced numerous challenges, from economic instability and security threats to social and political upheavals. However, the resilience and spirit of the Pakistani people have always shone through, driving the country forward. The 2024 elections are particularly crucial as they come at a time when the country is at a crossroads, grappling with critical issues like economic reforms, educational advancements, healthcare improvements, and the fight against corruption.</p>
              </div>
                   <div>
                       <p>The electoral process this year has seen unprecedented levels of engagement from all sectors of society. From the bustling cities to the remote villages, a wave of political consciousness has swept across the nation. Citizens are more informed and aware of their rights and responsibilities, leading to a vibrant and dynamic political landscape. The major political parties have laid out comprehensive manifestos, addressing key issues such as job creation, poverty alleviation, infrastructure development, and foreign policy. Meanwhile, independent candidates and smaller parties are also playing a significant role, bringing diverse perspectives and solutions to the forefront.</p>
                   </div>
           </div>
           <div class="SecFour">
                <h1>Meet the Public Figures</h1>
               <div class="SecFourPers">
                   <div>
                   <asp:Image ID="IK" runat="server" ImageUrl="~/IK.jpg" AlternateText="Sample Image"/>
                   <a href="https://en.wikipedia.org/wiki/Imran_Khan"><p>Imran Khan</p></a>
                   </div>
                   <div>
                   <asp:Image ID="NS" runat="server" ImageUrl="~/NS.jpeg" AlternateText="Sample Image"/>
                   <a href="https://en.wikipedia.org/wiki/Nawaz_Sharif"><p>Nawaz Shareef</p></a>
                   </div>
                   <div>
                   <asp:Image ID="BB" runat="server" ImageUrl="~/BB.jpg" AlternateText="Sample Image"/>
                  <a href="https://en.wikipedia.org/wiki/Bilawal_Bhutto_Zardari"><p>Bilawal Bhutto</p></a>
                   </div>
                   <div>
                   <asp:Image ID="HN" runat="server" ImageUrl="~/HN.jpeg" AlternateText="Sample Image"/>
                    <a href="https://en.wikipedia.org/wiki/Hafiz_Naeem_ur_Rehman"><p>Hafiz Naeem ur Rehman</p></a>
                   </div>
               </div>
           </div>
           <div class="SecFive">
               <div class="SecFiveText">
               <div class="Data">
                   <h1>100K+</h1>
                   <p>Votes Cast</p>
               </div>
               <div class="Data">
                    <h1>99.9%</h1>
                    <p>Satisfaction Rate</p>
                </div>
               <div class="Data">
                   <h1>24/7</h1>
                   <p>Support Available</p>
               </div>
           </div>
           </div>
           <div class="SecSix">
               <div>
                   <div class="SecSixHome">
                       <a>Home</a>
                       <a>About</a>
                       <a>Voting</a>
                       <a>Contact</a>
                   </div>
                   <div class="SecSixIcons">
                       <div class="Icon">
                          <a href="https://www.facebook.com/profile.php?id=100026181672164"><asp:Image ID="fb" runat="server" ImageUrl="~/Fb.png" AlternateText="Sample Image"/></a>
                           <p>Facebook</p>
                       </div>
                       <div class="Icon">
                           <a href="https://www.instagram.com/alee_hyder0/?hl=en"><asp:Image ID="twitter" runat="server" ImageUrl="~/twitter.png" AlternateText="Sample Image"/></a>
                           <p>Twitter</p>
                       </div>
                       <div class="Icon">
                            <a href="https://www.instagram.com/alee_hyder0/?hl=en"><asp:Image ID="instagram" runat="server" ImageUrl="~/instagram.png" AlternateText="Sample Image"/></a>
                           <p>Instagram</p>
                       </div>
                       <div class="Icon">
                           <a href="https://mail.google.com/mail/u/0/#inbox?compose=new"><asp:Image ID="gmail" runat="server" ImageUrl="~/gmail.png" AlternateText="Sample Image"/></a>
                           <p>Gmail</p>
                       </div>
                       <div class="Icon">
                            <a href="https://www.linkedin.com/in/muhammad-ali-9b32252b7/"><asp:Image ID="linkedin" runat="server" ImageUrl="~/linkedin.png" AlternateText="Sample Image"/></a>
                           <p>Linked in</p>
                       </div>
                   </div>
               </div>
           </div>
           </div>
    </form>
</body>
</html>
