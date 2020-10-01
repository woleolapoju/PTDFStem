using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class capturedata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

       
        if (Session["UserID"].ToString() == "")
        {
            Response.Redirect("Default.aspx", true);
   
        }

      

        if (!IsPostBack) loadStates();
       
        }
        catch
        {
            Response.Redirect("Default.aspx", true);
        }

    }


    public void loadStates()
    {
        try
        {

   
            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);
            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;
          cbostate.Items.Clear();
            cboLGA.Items.Clear();


            cmSQL.CommandText = "SELECT DISTINCT [State] FROM pStates order by [State] ASC";
           cmSQL.CommandType = System.Data.CommandType.Text;
            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();
            while (drSQL.Read() == true)
            {
                cbostate.Items.Add(drSQL["State"].ToString());

            }
            cmSQL.Connection.Close();
            cmSQL.Dispose();
            cnSQL.Close();
            cnSQL.Dispose();



            loadLGA(cbostate.Text);

        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
        }
    }

    protected void btnSample_Click(object sender, EventArgs e)
    {
        loadLGA(cbostate.Text);
    }
    private void loadLGA(string dstate)
    {
        try
        {

         
            cboLGA.Items.Clear();
            if (dstate == "") return;
           
            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);
            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;
            cmSQL.CommandText = "SELECT DISTINCT [LGA] FROM pStates where [State]='" + dstate + "' order by [LGA] ASC";
            cmSQL.CommandType = System.Data.CommandType.Text;
            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();
            while (drSQL.Read() == true)
            {
                cboLGA.Items.Add(drSQL["LGA"].ToString());

            }
            cmSQL.Connection.Close();
            cmSQL.Dispose();
            cnSQL.Close();
            cnSQL.Dispose();


        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
        }
    }



    //protected void cbostate_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    loadLGA(cbostate.Text);
    //}

    protected void cbostate_TextChanged(object sender, EventArgs e)
    {
        loadLGA(cbostate.Text);
    }

    protected void cbostate_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Write("<script language=javascript>alert('Welcome!');</script>");
        loadLGA(cbostate.Text);
    }


    protected void cmdSave_Click(object sender, EventArgs e)
    {
        try
        {
         string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);
            SqlCommand cmSQL = cnSQL.CreateCommand();


            cnSQL.Open();
            cmSQL.CommandText = "pInsertSchRegister";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@SchName", schname.Value.ToString());
            cmSQL.Parameters.AddWithValue("@Address", schadd.Value.ToString());
            cmSQL.Parameters.AddWithValue("@State", cbostate.Text.ToString());
            cmSQL.Parameters.AddWithValue("@LGA", cboLGA.Value.ToString());
            cmSQL.Parameters.AddWithValue("@Region", cboregion.Value.ToString());
            cmSQL.Parameters.AddWithValue("@NoOfStudent", 1);
            cmSQL.Parameters.AddWithValue("@Category", cboCategory.Value.ToString());
            cmSQL.Parameters.AddWithValue("@Username", Session["username"].ToString());
            cmSQL.ExecuteNonQuery();


            cmSQL.Dispose();
            cnSQL.Close();

            schname.Value = "";
            schadd.Value = "";


        }
        catch (Exception ex)
        {

            HttpContext.Current.Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
        }
    }
}