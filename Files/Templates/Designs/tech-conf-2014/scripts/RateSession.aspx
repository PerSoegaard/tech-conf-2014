<%@ Page Language="C#" %>

<script runat="server">
	public void Page_Load()
	{
		if (Request.HttpMethod == "POST")
		{
			try
			{
				var sessionId = Request.Form["sessionId"];
				var session = Dynamicweb.Content.Items.Item.GetItemById("Session", sessionId);
				if (session != null)
				{
					var rating = 0;
					int.TryParse(Request.Form["rating"], out rating);
					var key = rating > 0 ? "ThumbsUps" : "ThumbsDowns";
					rating = System.Math.Abs(rating);
					if (rating > 0)
					{
						var value = (int)session[key];
						// Response.Write(string.Format("{0}: {1} {2}", key, value, session[key].GetType()));

						session[key] = value + rating;
						session.Save();
						//var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
						//Response.Write(serializer.Serialize(session));
					}
				}
			}
			catch { }
		}
		var returnUrl = Request["return"];
		if (string.IsNullOrWhiteSpace(returnUrl))
		{
			returnUrl = Request.UrlReferrer.PathAndQuery;
		}
		if (string.IsNullOrWhiteSpace(returnUrl)) {
			returnUrl = "/";
		}
		Response.Redirect(returnUrl);		
	}
</script>
