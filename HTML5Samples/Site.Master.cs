﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTML5Samples
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SiteMapPath1.Visible = (SiteMap.CurrentNode != SiteMap.RootNode.ChildNodes[0]);
        }
    }
}
