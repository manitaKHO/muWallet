﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Account
/// </summary>
public class Account
{
    public String accountId { get; set; }
    public String firstname { get; set; }
    public String lastname { get; set; }
    public String accountNo { get; set; }

    public Account()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void Get_Account(string userName)
    {
        accountId = "1";

        firstname = "chayathat";
        lastname = "pruksacheva";
        accountNo = "123456789";
        
    }
}
