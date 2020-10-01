using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    public static string dUserName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["UserName"] = "";
            Session["UserID"] = "";
            Session["Pwd"] = "";
            Session["Cnn"] = "";
            Session["exception"] = "";
            Session["Owner"] = "";
            Session["Cnn"] = ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString;
        }

        Session["UserName"] = dUserName;
           if (Session["UserID"].ToString() !="")
            {
                divsignout.Style.Remove("display");
                divsignin.Style.Add("display", "none");
                ousername.InnerText = Session["UserName"].ToString();
            }

    }


    private static Boolean AuthenticateUser(string dUserID, string dPwd, string dCnStr)
    {
        {
            Boolean tempAuthenticateUser = false;

            try
            {


                //if (!IsPostBack)
                //{
                //Session["Username"] = Request.Form["uname"];
                //Session["Password"] = Request.Form["psw"];

                if (dUserID == null || dPwd == null)
                {

                    //Response.Write("<script language=javascript>alert('Login details not entered!');</script>");


                }



                SqlConnection cnSQL = new SqlConnection(dCnStr);
                SqlCommand cmSQL = new SqlCommand("pFetchUserAccessByPwd", cnSQL);
                SqlDataReader drSQL;

                int i = 0;
                cnSQL.Open();
                cmSQL.CommandText = "pFetchUserAccessByPwd";
                cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
                cmSQL.Parameters.AddWithValue("@UserID", dUserID);
                cmSQL.Parameters.AddWithValue("@UserPwd", dPwd);

                drSQL = cmSQL.ExecuteReader();

                if (drSQL.HasRows == false)
                {
                    i = 1;
                }
                else
                {
                    if (drSQL.Read())
                    {
                        dUserName = drSQL["Username"].ToString();
                        i = 10;
                    }
                }
                cmSQL.Dispose();
                drSQL.Close();
                cnSQL.Close();



                if (i == 1)
                {
                    tempAuthenticateUser = false;
                }

                if (i == 10)
                {
                    tempAuthenticateUser = true;
                }

                return tempAuthenticateUser;

            }

            catch (Exception ex)
            {
                //HttpContext.Current.Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");


                HttpContext.Current.Session["exception"] = ex.Message;
                HttpContext.Current.Response.Redirect("Error.aspx");

                return false;

            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        if (AuthenticateUser(userID.Value, userPwd.Value, Session["Cnn"].ToString()) == true)
        {
            Session["UserName"] = dUserName;
            Session["UserID"] = userID.Value;
            Session["Pwd"] = userPwd.Value;

            //  Response.Write("<script language=javascript>alert('Welcome!');</script>");

            divsignout.Style.Remove("display");
            divsignin.Style.Add("display","none");
            ousername.InnerText= dUserName;
          //  Response.Redirect("Default.aspx", true);
     
        }
        else
        {
            Session["UserName"] = "";
            Session["UserID"] = "";
            Session["Pwd"] = "";
            //HttpContext.Current.Response.Write("<script language=javascript>alert('Invalid User Login Information!');</script>");

        }

    }

    protected void signoff_click(object sender, EventArgs e)
    {
        Session["UserName"] = "";
        Session["UserID"] = "";
        Session["Pwd"] = "";
        Response.Redirect("Default.aspx", true);
    }

}