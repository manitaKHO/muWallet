using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for DBConnect
/// </summary>
public class DBConnect
{
    public bool  DBConnect()
    {
        
        //
        // TODO: Add constructor logic here
        //
        cnn = new SqlConnecttion(muWallet);
        try {
            cnn.Open();
            return true;
            cnn.Close();
        }
        catch{
            return false;
        }

    }
}