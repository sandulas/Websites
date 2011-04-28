using System;

public class MyMasterPage : System.Web.UI.MasterPage
{
	public MyMasterPage()
	{
		postBackId = 1;
	}

	private bool isRefresh;
	public bool IsRefresh
	{
		get { return isRefresh; }
	}

	private int postBackId;

	protected override void LoadViewState(object savedState)
	{
		object[] allStates = (object[])savedState;
		base.LoadViewState(allStates[0]);
		postBackId = (int)allStates[1];
		isRefresh = postBackId <= (int)Session["__POSTBACKID"];
	}
	protected override object SaveViewState()
	{
		Session["__POSTBACKID"] = postBackId;
		object[] allStates = new object[2];
		allStates[0] = base.SaveViewState();
		allStates[1] = ++postBackId;
		return allStates;
	}
}
