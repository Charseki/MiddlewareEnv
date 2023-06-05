<%
	Response.Write("charseki.chen@dbappsecurity.com.cn")
	Response.Write(CHR(10) & CHR(10))
                 
    //打印Headers信息
	Response.Write("---------------- Headers ----------------" & CHR(10) & CHR(10))
	Response.Write(Request.ServerVariables("ALL_RAW"))
	Response.Write(CHR(10) & CHR(10))
                 
    //打印Query信息
	Response.Write("--------------- QueryString --------------" & CHR(10) & CHR(10))
	for Each n in Request.QueryString()
		Response.Write "[" & n & "]" & " => " & "[" & Request.QueryString(n) & "]" & CHR(10)
		Next	
	Response.Write(CHR(10) & CHR(10))
                 
    //打印Form信息
	Response.Write("------------------ Form ------------------" & CHR(10) & CHR(10))
	for Each n in Request.Form()
		Response.Write "[" & n & "]" & " => " & "[" & Request.Form(n) & "]" & CHR(10)
		Next
%>
