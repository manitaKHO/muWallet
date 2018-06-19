using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for DBConnect
/// </summary>
public class DBConnect
{
    public DBConnect()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public SqlConnection GetConnect()
    {
        SqlConnection walletConnect = new SqlConnection();
        walletConnect.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["muWallet"].ToString();
        return walletConnect;

        
    }
}