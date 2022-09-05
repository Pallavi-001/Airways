using BusinessLogicLayer;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airways.MainPages
{
    public partial class ResheduleBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           var cs = System.Configuration.ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            var doj = e.NewValues.Cast<DictionaryEntry>().ElementAt(0).Value;
            var bd = e.NewValues.Cast<DictionaryEntry>().ElementAt(2).Value; ;
            var dt = e.NewValues.Cast<DictionaryEntry>().ElementAt(1).Value;

            var Id = (GridView1.Rows[e.RowIndex].Controls[1] as DataControlFieldCell).Text;
             
            var con = new SqlConnection(cs);
            con.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("UPDATE BookDetails SET Date_Of_Journey='" + doj + "',Book_Date='" + bd + "',Depart_Time='" + dt + "',StatusOfBooking='Resheduled' where Booking_ID=" + Convert.ToInt32(Id), con);
            cmd.ExecuteNonQuery();
            con.Close();
            //cmd.Parameters.AddWithValue("@Name", name);
            //cmd.Parameters.AddWithValue("@JobTitle", jobTitle);
            //cmd.Parameters.AddWithValue("@BadgeNo", badgeNo);
            //cmd.Parameters.AddWithValue("@Username", username);

            //conn.Open();
            //cmd.ExecuteNonQuery();
            //conn.Close();

            //GridView1.EditIndex = -1;
          //  GridView1.DataBind();
        }
    }
}