using System;
using System.Collections.Generic;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class mapstatistics : System.Web.UI.Page
{
    //SqlConnection cnSQL = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            // Session["Cnn"] = ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString;
           //cnSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString);
           // cnSQL.Open();

            getRegionStat();

        //HtmlInputText myInput1 = new HtmlInputText();
        //myInput1.ID = "ab";
        //myInput1.Value = "Petroleum Technology Development Fund (PTDF)" + "\n" + "The Headquaters in Abuja";
        //divhide.Controls.Add(myInput1);
        //HtmlTextArea myInput2 = new HtmlTextArea();
        //myInput2.ID = "os";
        //myInput2.Value = "My State, the origin Of man...began here";
        //divhide.Controls.Add(myInput2);

        getStateStat();
            //cnSQL.Close();

        }

        catch (Exception ex)
        {
            //HttpContext.Current.Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");


            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");

        }

    }


    private void getStateStat()
    {

        SqlConnection cnSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString);
        SqlCommand cmSQL = new SqlCommand("pFetchUserAccessByPwd", cnSQL);
        SqlDataReader drSQL;

    
       cnSQL.Open();
        cmSQL.CommandText = "SELECT  DISTINCT State FROM pSchRegister";
        cmSQL.CommandType = System.Data.CommandType.Text;

        drSQL = cmSQL.ExecuteReader();

        while (drSQL.Read() == true)
        {

    
                HtmlTextArea myInput1 = new HtmlTextArea();
                myInput1.ID = drSQL["State"].ToString().Substring(0, 3).ToLower();
            myInput1.Value = getStateSchool(drSQL["State"].ToString()); //.ToUpper() + "\n" + drSQL["Category"].ToString() + " -> " + drSQL["NoOfSchools"].ToString() + "\n";
                divhide.Controls.Add(myInput1);


        }

        cmSQL.Dispose();
        drSQL.Close();
        cnSQL.Close();

    }

    private string getStateSchool(string myState)
    {
        string tempgetStateSchool = "";
       SqlConnection cnSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString);
        SqlCommand cmSQL = new SqlCommand("pFetchUserAccessByPwd", cnSQL);
        SqlDataReader drSQL;

        string dState = "";
        string dstring = "";
       cnSQL.Open();
        cmSQL.CommandText = "SELECT   State, COUNT(SchName) AS NoOfSchools, Category FROM pSchRegister WHERE [State]='" + myState + "' GROUP BY [State],Category oRDER BY Category DESC";
        cmSQL.CommandType = System.Data.CommandType.Text;

        drSQL = cmSQL.ExecuteReader();

        while (drSQL.Read() == true)
        {
         dstring = dstring + drSQL["Category"].ToString() + " -> " + drSQL["NoOfSchools"].ToString() + "\n";
         }

      dstring = myState.ToUpper() + "\n" + dstring;

        cmSQL.Dispose();
        drSQL.Close();
       cnSQL.Close();

        return dstring;

     

    }

    private void getRegionStat()
    {

        SqlConnection cnSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString);
        SqlCommand cmSQL = new SqlCommand("pFetchUserAccessByPwd", cnSQL);
        SqlDataReader drSQL;

        int i = 1;
        cnSQL.Open();
        cmSQL.CommandText = "SELECT Region, COUNT(SchName) AS NoOfSch FROM  pSchRegister GROUP BY Region";
        cmSQL.CommandType = System.Data.CommandType.Text;

        drSQL = cmSQL.ExecuteReader();

        while (drSQL.Read() == true)
        {
            if (i == 1)
            {
                lblr1.Text = drSQL["Region"].ToString();
                lblc1.Text = drSQL["NoOfSch"].ToString();
            }
            if (i == 2)
            {
                lblr2.Text = drSQL["Region"].ToString();
                lblc2.Text = drSQL["NoOfSch"].ToString();
            }
            if (i == 3)
            {
                lblr3.Text = drSQL["Region"].ToString();
                lblc3.Text = drSQL["NoOfSch"].ToString();
            }
            if (i ==4)
            {
                lblr4.Text = drSQL["Region"].ToString();
                lblc4.Text = drSQL["NoOfSch"].ToString();
            }
            if (i ==5)
            {
                lblr5.Text = drSQL["Region"].ToString();
                lblc5.Text = drSQL["NoOfSch"].ToString();
            }
            if (i == 6)
            {
                lblr6.Text = drSQL["Region"].ToString();
                lblc6.Text = drSQL["NoOfSch"].ToString();
            }
            i++;

        }
      
        cmSQL.Dispose();
        drSQL.Close();
       cnSQL.Close();

    }

    public static string Mid(string param, int startIndex, int length)
    {
        string result;
        if (length == -1)
        {
            result = param.Substring(startIndex);
        }
        else
        {
            result = param.Substring(startIndex, length);
        }
        return result;
    }

}