using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_Calculator
{
    public partial class Answer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string num1 = Request["firstNumber"];
            string num2 = Request["2ndNumber"];
            string operation = Request["operatioPerformed"];
            string result = Request["result"];

            Response.Write("X = "+ num1 + " " + operation +" Y = " + num2 + " Answer = " + result);
        }
    }
}