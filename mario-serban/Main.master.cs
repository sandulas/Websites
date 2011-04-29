using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainMaster : MyMasterPage
{
	public bool ShowMainImage
	{
		get { return MainImageHolder.Visible; }
		set { MainImageHolder.Visible = value; }
	}
	
	protected void Page_Load(object sender, EventArgs e)
  {
  }

	protected void SendButton_Click(object sender, EventArgs e)
	{
		ContactMessageLabel.Text = "To be implemented!" + " Is refresh:" + IsRefresh;
		ContactMessageLabel.Visible = true;
	}
}
