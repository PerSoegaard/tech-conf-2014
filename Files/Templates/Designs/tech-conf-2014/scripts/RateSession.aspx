<%@  Page Language="C#" %>

<script runat="server">
	public void Page_Load()
	{
		if (Request.HttpMethod == "POST")
		{
			try { 
			var sessionID = Request["sessionID"];
			var session = Dynamicweb.Content.Items.Item.GetItemById("Session", sessionID);
			if (session != null)
			{
				var rating = 0;
				int.TryParse(Request["rating"], out rating);
				var key = rating > 0 ? "ThumbsUps" : "ThumbsDowns";
				rating = System.Math.Abs(rating);
				if (rating > 0)
				{
					var value = (int)session[key];
					Response.Write(string.Format("{0}: {1} {2}", key, value, session[key].GetType()));

					session[key] = value + rating;
					session.Save();
					var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
					Response.Write(serializer.Serialize(session));
				}
			}
			}
			catch { }
		}
	}
</script>
