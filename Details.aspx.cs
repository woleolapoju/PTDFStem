using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["selectedstate"]))
        {
            getStateStat(Request.QueryString["selectedstate"]);  //lblDefaultData.InnerText = Request.QueryString["selectedstate"];
        }
        else
        {
            //lblDefaultData.InnerText = "NO DATA PROVIDED OR COULD NOT BE READ";
        }
    }

    private void getStateStat(string dstate)
    {

       
           SqlConnection cnSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString);
        SqlCommand cmSQL = new SqlCommand("pFetchUserAccessByPwd", cnSQL);
        SqlDataReader drSQL;
        cnSQL.Open();
        cmSQL.CommandText = "SELECT * FROM pSchRegister WHERE [State] like '" + dstate + "%' ORDER BY [Category]";
        cmSQL.CommandType = System.Data.CommandType.Text;

      if (dstate=="abu") divImage.Attributes.Add("style", "background-image: url(images/states/Abuja.jpg);background-size:cover");
      if (dstate=="abi") divImage.Attributes.Add("style", "background-image: url(images/states/Abia.jpg);background-size:cover");
      if (dstate == "ada") divImage.Attributes.Add("style", "background-image: url(images/states/Adamawa.jpg);background-size:cover");
      if (dstate == "akw") divImage.Attributes.Add("style", "background-image: url(images/states/AkwaIbom.jpg);background-size:cover");
      if (dstate == "ana") divImage.Attributes.Add("style", "background-image: url(images/states/Anambra.jpg);background-size:cover");

        if (dstate == "bau") divImage.Attributes.Add("style", "background-image: url(images/states/bauchi.jpg);background-size:cover");
        if (dstate == "bay") divImage.Attributes.Add("style", "background-image: url(images/states/bayelsa.jpg);background-size:cover");
        if (dstate == "ben") divImage.Attributes.Add("style", "background-image: url(images/states/benue.jpg);background-size:cover");

        if (dstate == "bor") divImage.Attributes.Add("style", "background-image: url(images/states/borno.jpg);background-size:cover");
        if (dstate == "cro") divImage.Attributes.Add("style", "background-image: url(images/states/CrossRiver.jpg);background-size:cover");
        if (dstate == "del") divImage.Attributes.Add("style", "background-image: url(images/states/delta.jpg);background-size:cover");

        if (dstate == "ebo") divImage.Attributes.Add("style", "background-image: url(images/states/ebonyi.jpg);background-size:cover");
        if (dstate == "edo") divImage.Attributes.Add("style", "background-image: url(images/states/edo.jpg);background-size:cover");
        if (dstate == "eki") divImage.Attributes.Add("style", "background-image: url(images/states/ekiti.jpg);background-size:cover");

        if (dstate == "enu") divImage.Attributes.Add("style", "background-image: url(images/states/enugu.jpg);background-size:cover");
        if (dstate == "gom") divImage.Attributes.Add("style", "background-image: url(images/states/gombe.jpg);background-size:cover");
        if (dstate == "imo") divImage.Attributes.Add("style", "background-image: url(images/states/imo.jpg);background-size:cover");

        if (dstate == "jig") divImage.Attributes.Add("style", "background-image: url(images/states/jigawa.jpg);background-size:cover");
        if (dstate == "kad") divImage.Attributes.Add("style", "background-image: url(images/states/kaduna.jpg);background-size:cover");
        if (dstate == "kan") divImage.Attributes.Add("style", "background-image: url(images/states/kano.jpg);background-size:cover");

        if (dstate == "kat") divImage.Attributes.Add("style", "background-image: url(images/states/Katsina.jpg);background-size:cover");
        if (dstate == "keb") divImage.Attributes.Add("style", "background-image: url(images/states/kebbi.jpg);background-size:cover");
        if (dstate == "kog") divImage.Attributes.Add("style", "background-image: url(images/states/kogi.jpg);background-size:cover");

        if (dstate == "kwa") divImage.Attributes.Add("style", "background-image: url(images/states/kwara.jpg);background-size:cover");
        if (dstate == "lag") divImage.Attributes.Add("style", "background-image: url(images/states/lagos.jpg);background-size:cover");
        if (dstate == "nas") divImage.Attributes.Add("style", "background-image: url(images/states/Nasarawa.jpg);background-size:cover");

        if (dstate == "nig") divImage.Attributes.Add("style", "background-image: url(images/states/niger.jpg);background-size:cover");
        if (dstate == "ogu") divImage.Attributes.Add("style", "background-image: url(images/states/ogun.jpg);background-size:cover");
        if (dstate == "ond") divImage.Attributes.Add("style", "background-image: url(images/states/ondo.jpg);background-size:cover");

        if (dstate == "osu") divImage.Attributes.Add("style", "background-image: url(images/states/osun.jpg);background-size:cover;");
        if (dstate == "oyo") divImage.Attributes.Add("style", "background-image: url(images/states/oyo.jpg);background-size:cover");
        if (dstate == "pla") divImage.Attributes.Add("style", "background-image: url(images/states/plateau.jpg);background-size:cover");

        if (dstate == "riv") divImage.Attributes.Add("style", "background-image: url(images/states/rivers.jpg);background-size:cover");
        if (dstate == "sok") divImage.Attributes.Add("style", "background-image: url(images/states/sokoto.jpg);background-size:cover");
        if (dstate == "tar") divImage.Attributes.Add("style", "background-image: url(images/states/taraba.jpg);background-size:cover");

        if (dstate == "yob") divImage.Attributes.Add("style", "background-image: url(images/states/yobe.jpg);background-size:cover");
        if (dstate == "zam") divImage.Attributes.Add("style", "background-image: url(images/states/zamfara.jpg);background-size:cover");
      
        drSQL = cmSQL.ExecuteReader();

        while (drSQL.Read() == true)
        {
            dState.InnerText = drSQL["State"].ToString();
            if (drSQL["Category"].ToString()== "Unity School")
            {

                HtmlGenericControl mydiv = new HtmlGenericControl();
                mydiv.Attributes.Add("class", "item-mainmenu m-b-36");
                divUnity.Controls.Add(mydiv);

                HtmlGenericControl mydiv1 = new HtmlGenericControl();
                mydiv1.Attributes.Add("class", "flex-w flex-b m-b-3");
                mydiv.Controls.Add(mydiv1);

                HtmlAnchor myAnchor = new HtmlAnchor();
                myAnchor.HRef = "#";
                myAnchor.Attributes.Add("class", "name-item-mainmenu txt21");
                myAnchor.InnerText = drSQL["SchName"].ToString();
                mydiv1.Controls.Add(myAnchor);

                HtmlGenericControl mydiv2 = new HtmlGenericControl();
                mydiv2.Attributes.Add("class", "line-item-mainmenu bg3-pattern");
                mydiv1.Controls.Add(mydiv2);

                HtmlGenericControl myspan = new HtmlGenericControl();
                myspan.Attributes.Add("class", "info-item-mainmenu txt23");
                if (drSQL["Address"].ToString().Trim() != "")
                     myspan.InnerText = drSQL["Address"].ToString();
                else
                    myspan.InnerText =drSQL["LGA"].ToString();
                mydiv.Controls.Add(myspan);

            }
            if (drSQL["Category"].ToString() == "LGA School")
            {
                HtmlGenericControl mydiv = new HtmlGenericControl();
                mydiv.Attributes.Add("class", "item-mainmenu m-b-36");
                divLGA.Controls.Add(mydiv);

                HtmlGenericControl mydiv1 = new HtmlGenericControl();
                mydiv1.Attributes.Add("class", "flex-w flex-b m-b-3");
                mydiv.Controls.Add(mydiv1);

                HtmlAnchor myAnchor = new HtmlAnchor();
                myAnchor.HRef = "#";
                myAnchor.Attributes.Add("class", "name-item-mainmenu txt21");
                myAnchor.InnerText = drSQL["SchName"].ToString();
                mydiv1.Controls.Add(myAnchor);

                HtmlGenericControl mydiv2 = new HtmlGenericControl();
                mydiv2.Attributes.Add("class", "line-item-mainmenu bg3-pattern");
                mydiv1.Controls.Add(mydiv2);

                HtmlGenericControl myspan = new HtmlGenericControl();
                myspan.Attributes.Add("class", "info-item-mainmenu txt23");
                if (drSQL["Address"].ToString().Trim() != "")
                    myspan.InnerText = drSQL["Address"].ToString();
                else
                    myspan.InnerText = drSQL["LGA"].ToString();
                mydiv.Controls.Add(myspan);

            }
            if (drSQL["Category"].ToString() == "Other School")
            {
 
                    HtmlGenericControl mydiv = new HtmlGenericControl();
                    mydiv.Attributes.Add("class", "item-mainmenu m-b-36");
                    divOther.Controls.Add(mydiv);

                    HtmlGenericControl mydiv1 = new HtmlGenericControl();
                    mydiv1.Attributes.Add("class", "flex-w flex-b m-b-3");
                    mydiv.Controls.Add(mydiv1);

                    HtmlAnchor myAnchor = new HtmlAnchor();
                    myAnchor.HRef = "#";
                    myAnchor.Attributes.Add("class", "name-item-mainmenu txt21");
                    myAnchor.InnerText = drSQL["SchName"].ToString();
                    mydiv1.Controls.Add(myAnchor);

                    HtmlGenericControl mydiv2 = new HtmlGenericControl();
                    mydiv2.Attributes.Add("class", "line-item-mainmenu bg3-pattern");
                    mydiv1.Controls.Add(mydiv2);

                    HtmlGenericControl myspan = new HtmlGenericControl();
                    myspan.Attributes.Add("class", "info-item-mainmenu txt23");
                    if (drSQL["Address"].ToString().Trim() != "")
                        myspan.InnerText = drSQL["Address"].ToString();
                    else
                        myspan.InnerText = drSQL["LGA"].ToString();
                    mydiv.Controls.Add(myspan);
                }



        }

        cmSQL.Dispose();
        drSQL.Close();
        cnSQL.Close();

    }
}