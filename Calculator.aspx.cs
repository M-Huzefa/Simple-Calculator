using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_Calculator
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void calculator(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(textbox1.Text);
            double num2 = Convert.ToDouble(textbox2.Text);
            double result = 0;

            if (operation.SelectedValue == "+")
            {
                result = num1 + num2;
            }

            if (operation.SelectedValue == "-")
            {
                result = num1 - num2;
            }

            if (operation.SelectedValue == "*")
            {
                result = num1 * num2;
            }

            if (operation.SelectedValue == "/")
            {
                result = num1 / num2;
            }

            //results.Text = Convert.ToString(result);

            string url = "Answer.aspx?firstNumber="+num1 +"&2ndNumber="+num2+"&operatioPerformed="+HttpUtility.UrlEncode(operation.SelectedValue)+"&result="+result;
            Response.Redirect(url);
        }
    }
}