using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Forms_Example
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
            Label1.Text = Session["nm1"].ToString() + Session[ "nm2"].ToString()+" Submitted successfully";
        }
    }
}