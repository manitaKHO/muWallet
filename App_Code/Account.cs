using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Account
/// </summary>
public class Account
{
    public String accountId { get; set; }
    public String firstname { get; set; }
    public String lastname { get; set; }
    public String accountNo { get; set; }
    public String blcAmount { get; set; }

    public Account()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void Get_Account(string userName)
    {
        DataSet dataset = new DataSet();
        SqlDataAdapter adapter = new SqlDataAdapter("sp_getAccount '"+ userName + "'", new DBConnect().GetConnect());
        adapter.Fill(dataset);


        accountId = "1";

        firstname = "chayathat";
        lastname = "pruksacheva";
        accountNo = "123-456-789";
        blcAmount = "2,000";
        
    }
}
