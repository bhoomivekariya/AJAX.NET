using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJAX.NET
{
    public partial class Dropdown_Forward_backward : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ScriptManager1_Navigate(object sender, HistoryEventArgs e)
        {
            string color = e.State["SelectedValue"];
            if (!string.IsNullOrEmpty(color))
            {
                Label1.Text = color;
                Label1.BackColor = System.Drawing.Color.FromName(color);
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue;
            Label1.BackColor = System.Drawing.Color.FromName(DropDownList1.SelectedValue);
            ScriptManager1.AddHistoryPoint("SelectedValue",DropDownList1.SelectedValue);
        }
    }
}
