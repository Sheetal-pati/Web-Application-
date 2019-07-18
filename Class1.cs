using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static string changedate(string date)
    {
        String result = "", yr = "", mon = "", dt = "", hr = "", min = "", sec = "";
        yr = date.Substring(0, 4);
        mon = date.Substring(4, 2);
        dt = date.Substring(6, 2);
        hr = date.Substring(8, 2);
        min = date.Substring(10, 2);
        sec = date.Substring(12, 2);
        result = dt + "/" + mon + "/" + yr + "\n" + hr + ":" + min + ":" + sec;
        return result;
    }
	 public static string date(string date)
    {
        String Result;
        String  yr = "", mon = "", dt = "";
        //Result = date.Substring(0,8);
        yr = date.Substring(0, 4);
        mon = date.Substring(4, 2);
        dt = date.Substring(6, 2);
        Result = yr + "/" + mon + "/" + dt;

        return Convert.ToDateTime( Result).ToString("yyyy-MM-dd");
    }
    public static string time(string date)
    {
        String result = "", hr = "", min = "", sec = "";
         hr = date.Substring(8, 2);
        min = date.Substring(10, 2);
        sec = date.Substring(12, 2);
        result = hr + ":" + min + ":" + sec;
        return result;
    }
}
