﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LiveData
{
    public partial class DisplayLiveData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LiveDataRepeater.DataSource = Application["TestDB"];
            LiveDataRepeater.DataBind();
        }
    }
}