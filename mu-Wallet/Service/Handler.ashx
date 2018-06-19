<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Data.Sql;
using System.Text;
using System.Web.SessionState;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Web.Script.Serialization;

public class Handler : IHttpHandler 
{
    
    public void ProcessRequest (HttpContext context)
    {
        string Action = context.Request["action"];
        switch (Action)
        {
            case "SetTransfer" : SetTransfer(context); break;
            

        }

    }

    public void SetTransfer(HttpContext _c)
    {
        /*
        int _error = 0;
        string _applicationId = String.Empty;
        string _return = String.Empty;

        var _dtSetTransfer = Newtonsoft.Json.JsonConvert.DeserializeObject<DataTable>(_c.Request["itemList"]);

        if (_dtSetTransfer.Rows.Count == 0)
            _error = 1;
        else
        {
            DataSet _ds = MyAdmin.SetDocumentStatus(_dtSetDocumentStatus);
            DataRow _dr = _ds.Tables[0].Rows[0];

            _applicationId = _dr["applicationId"].ToString();
            _ds.Dispose();
        }

        _error = (!String.IsNullOrEmpty(_applicationId) ? 0 : 1);

        _return += "<error>" + _error.ToString() + "<error>";

        */
        _c.Response.Write(_return);
    } 

    
    public bool IsReusable 
    {
        get 
        {
            return false;
        }
    }

}