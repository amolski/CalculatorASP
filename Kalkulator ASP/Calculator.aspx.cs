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
        private class CalcData
        {
            public string number1;
            public string number2;
            public string result;
            public string operation;
            public bool isComa;

            public CalcData()
            {
                number1 = "0";
                number2 = "0";
                result = "0";
                operation = null;
                isComa = false;
            }
        }

        CalcData calcData;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            calcData = new CalcData();
            if (!IsPostBack)
            {
                txtOutput.Text = "0";
            }
            else
            {
                LoadCalcDataFromViewState();
            }
        }

        protected void btnCalcCommand(object sender, CommandEventArgs e)
        {
            string arg = e.CommandArgument.ToString();
            bool isNumber = int.TryParse(arg, out int number);
            if (isNumber)
            {
                if (!(calcData.isComa) && calcData.number1[0] == '0')
                {
                    calcData.number1 = calcData.number1.Remove(0, 1);
                }
                calcData.number1 += arg;
                txtOutput.Text = calcData.number1;
            }
            else
            {
                switch (arg)
                {
                    case "+":
                        calcData.operation = "+";
                        calcData.number2 = calcData.number1;
                        calcData.number1 = "0";
                        calcData.isComa = false;
                        break;
                    case "-":
                        break;
                    case "/":
                        break;
                    case "*":
                        break;
                    case ",":
                        if (!calcData.isComa)
                        {
                            calcData.number1 += arg;
                            calcData.isComa = true;
                            txtOutput.Text = calcData.number1;
                        } 
                        break;
                    case "C":
                        calcData = new CalcData();
                        txtOutput.Text = calcData.result;
                        break;
                    case "L":
                        break;
                    case "E":
                        MakeCalcOperation();
                        calcData.number2 = "0";
                        txtOutput.Text = calcData.result;
                        break;
                }
            }
            SaveCalcDataToViewState();
        }

        void LoadCalcDataFromViewState()
        {
            if (ViewState["isComa"] != null)
            {
                calcData.isComa = (bool)ViewState["isComa"];
            }
            if (ViewState["number1"] != null)
            {
                calcData.number1 = (string)ViewState["number1"];
            }
            if (ViewState["number2"] != null)
            {
                calcData.number2 = (string)ViewState["number2"];
            }
            if (ViewState["operation"] != null)
            {
                calcData.operation = (string)ViewState["operation"];
            }
            if (ViewState["result"] != null)
            {
                calcData.result = (string)ViewState["result"];
            }
        }
        void SaveCalcDataToViewState()
        {
            ViewState["isComa"] = calcData.isComa;
            ViewState["number1"] = calcData.number1;
            ViewState["number2"] = calcData.number2;
            ViewState["operation"] = calcData.operation;
            ViewState["result"] = calcData.result;
        }
        
        void MakeCalcOperation()
        {
            double number1 = double.Parse(calcData.number1);
            double number2 = double.Parse(calcData.number2);
            double result = double.Parse(calcData.result);
            switch (calcData.operation)
            {
                case "+":
                    result += number1 + number2;
                    break;
                default:
                    break;
            }
            number2 = number1;
            number1 = 0;
            calcData.isComa = false;
            calcData.operation = null;
            calcData.number1 = number1.ToString();
            calcData.number2 = number2.ToString();
            calcData.result = result.ToString();
        }

    }
}