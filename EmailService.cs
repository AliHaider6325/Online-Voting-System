using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;

namespace Project
{
    public class EmailService
    {
        public static void SendVerificationCode(string userEmail, string code)
        {

            MailMessage mail = new MailMessage(); //it represent a email messgae
            mail.From = new MailAddress("meharbanali6325@gmail.com");
            mail.To.Add(userEmail);
            mail.Subject = "Verification Code for Two-Factor Authentication";
            mail.Body = $"Your verification code is: {code}";

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; 
            smtp.Port = 587;  
            //smtp.UseDefaultCredentials = false; 
            smtp.Credentials = new NetworkCredential("meharbanali6325@gmail.com", "awbzbnndbazuewdf");
            smtp.EnableSsl = true; 

            try
            {
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
               
                throw ex;
            }
            finally
            {
                mail.Dispose();
                smtp.Dispose();
            }
        }
    }
}