using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kalkulator_ASP
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtOutput.Text = "0";
            }
        }

        protected void btnCalcCommand(object sender, CommandEventArgs e)
        {
            string arg = e.CommandArgument.ToString();
            bool isNumber = Int32.TryParse(arg, out int number);
            if (isNumber)
            {
                if (txtOutput.Text[0] == '0')
                {
                    txtOutput.Text = txtOutput.Text.Remove(0, 1);
                }
                txtOutput.Text += arg;
            }
            else
            {
                switch (arg)
                {
                    case "+":
                        break;
                    case "-":
                        break;
                    case "/":
                        break;
                    case "*":
                        break;
                    case "C":
                        txtOutput.Text = "0";
                        break;
                    case "L":
                        txtOutput.Text = txtOutput.Text.Remove(txtOutput.Text.Length - 1, 1);
                        if(txtOutput.Text.Length == 0)
                        {
                            txtOutput.Text = "0";
                        }
                        break;
                    case "E":
                        txtOutput.Text = "0";
                        break;
                }
            }
            
        }
    }
}