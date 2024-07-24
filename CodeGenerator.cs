using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project
{
    public class CodeGenerator
    {
        private static Random random = new Random();

        public static string GenerateRandomCode()
        {
            return random.Next(100000, 999999).ToString();
        }
    }
}