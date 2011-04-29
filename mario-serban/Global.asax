<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
			
    }

		protected void Application_AcquireRequestState(object sender, EventArgs e)
		{
			if (HttpContext.Current.Request.ServerVariables["URL"].ToLower().EndsWith("webresource.axd")) return;
			if (HttpContext.Current.Request.ServerVariables["URL"].ToLower().EndsWith("scriptresource.axd")) return;
			if (HttpContext.Current.Request.ServerVariables["URL"].ToLower().EndsWith(".css")) return;
			if (HttpContext.Current.Request.ServerVariables["URL"].ToLower().EndsWith(".jpg")) return;
			if (HttpContext.Current.Request.ServerVariables["URL"].ToLower().EndsWith(".png")) return;
			if (HttpContext.Current.Request.ServerVariables["URL"].ToLower().EndsWith(".gif")) return;
			if (HttpContext.Current.Request.ServerVariables["URL"].ToLower().EndsWith("/_admin/login.aspx")) return;

			if (HttpContext.Current.Request.AppRelativeCurrentExecutionFilePath.ToLower().StartsWith("~/_admin"))
			{
				if (Session["Authenticated"] != null && Session["Authenticated"] == "yes") return;
				else HttpContext.Current.Response.Redirect("~/_admin/login.aspx");
			}
		}
       
</script>
