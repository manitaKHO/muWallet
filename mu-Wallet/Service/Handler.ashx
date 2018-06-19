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
using Newtonsoft.Json;

public class Handler : IHttpHandler
{

    public void ProcessRequest (HttpContext context)
    {
        string Action = context.Request["action"];
        dynamic _result = new { };
        switch (Action)
        {
            case "GetAccount": GetAccount(context); break;
            case "SetTransfer" : SetTransfer(context); break;


        }

    }
    public void GetAccount(HttpContext _c)
    {
        Account _account = new Account();
        _account.Get_Account("chayathat.pru");

        _c.Response.Write(JsonConvert.SerializeObject(_account));
    }

    public void SetTransfer(HttpContext _c)
    {
       // dynamic obj = JsonConvert.DeserializeObject(_c.Request["itemList"]);
            string _amt = _c.Request["amt"];
        DataSet dataset = new DataSet();
        SqlDataAdapter adapter = new SqlDataAdapter("sp_SetTransfer" + "'chayathat.pru','123-456-789','234-567-123','" + _amt +"'", new DBConnect().GetConnect());
        adapter.Fill(dataset);

        _c.Response.Write("Transfer Success");
        //_c.Response.Redirect("frm_transfer_complete.html");
    }



    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}