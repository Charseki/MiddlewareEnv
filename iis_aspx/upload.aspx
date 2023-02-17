<%@ Page Language="C#" ContentType="text/html"  validateRequest="false" aspcompat="true"%>

<%   
    HttpFileCollection files = Request.Files;
    ArrayList filenames = new ArrayList();

    for(int i = 0;i < files.Count; ++i)
    {
        string suffix  = "";
        if (files[i].FileName.Contains(".")) {
            suffix = files[i].FileName.Substring(files[i].FileName.LastIndexOf(".")); ;
        }
       
        string filename = "/upload/" + System.Guid.NewGuid().ToString() + suffix;
        string filepath = HttpContext.Current.Request.MapPath("~/") + filename;
        files[i].SaveAs(filepath);
        filenames.Add(filename);
    }

    string body = "{\"file\":";
    string message = "";
    for (int j = 0; j < filenames.Count; j++) {
        message = message + "\"" +  filenames[j].ToString() + "\",";
    }
    message = message.Substring(0, message.Length - 1);
    if (filenames.Count > 1) {
        message = "[" + message + "]";
    }
    body = body + message + "}";
    //message =  Request.Headers.Get("Content-Type");
    Response.AddHeader("Content-Type","application/json;charset=UTF-8");
    Response.Write(body);
    Response.Flush();
    //Response.Write(Request.Params.Get("a"));
%>