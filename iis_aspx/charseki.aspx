<%@ Page Language="C#" ContentType="text/html"  validateRequest="false" aspcompat="true"%>

<%
	Response.Write("charseki.chen@dbappsecurity.com.cn");
	Response.Write("\n\n");
	
	//打印Headers信息
	Response.Write("\n---------------- Headers --------------\n\n");
	for(int i = 0;i < Request.Params.Count; ++i)
	{
		String ParamsKey = Request.Params.Keys[i].ToString();
		String ParamsValue = Request.Params[i].ToString();
		if (ParamsKey == "ALL_RAW")
		{
			Response.Write(ParamsValue + "\n");
		}
	}
	
	//打印Query信息
	Response.Write("---------------- Query ----------------\n\n");
	for(int i = 0;i < Request.QueryString.Count; ++i)
	{
		String QueryKey = Request.QueryString.Keys[i].ToString();
		String QueryValue = Request.QueryString[i].ToString();
		Response.Write("[" + QueryKey + "] => " + QueryValue + "\n");
	}
	
	//打印Form信息
	Response.Write("\n---------------- Form -----------------\n\n");
	for(int i = 0;i < Request.Form.Count; ++i)
	{
		String FormKey = Request.Form.Keys[i].ToString();
		String FormValue = Request.Form[i].ToString();
		Response.Write("[" + FormKey + "] => " + FormValue + "\n");
	}
%>