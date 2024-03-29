﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration.Assemblies;
using System.Configuration;
using System.IO;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data.Common;



namespace DataAccessLayer
{
    public class DASearch
    {
        public static DataTable SearchD(string From, string To, string Date, DateTime Time, int Seats)
        {
            try
            {
                string ConStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                //Database dbs = new SqlDatabase(ConStr);
                //using (DbCommand dbcmd = dbs.GetStoredProcCommand("Search_Flight_SP"))
                //{

                //    dbs.AddInParameter(dbcmd, "@Leaving_From", DbType.String, From);
                //    dbs.AddInParameter(dbcmd, "@Going_To", DbType.String, To);
                //    dbs.AddInParameter(dbcmd, "@Departure_Date", DbType.String, Date);
                //    dbs.AddInParameter(dbcmd, "@Departure_Time", DbType.String, Time);
                //    dbs.AddInParameter(dbcmd, "@Seat", DbType.Int32, Seats);
                //    DataTable dt = new DataTable();
                //    dt = null;
                //    dt = dbs.ExecuteDataSet(dbcmd).Tables[0];
                //    return dt;


                //}
                SqlConnection connect = new SqlConnection(ConStr);

                SqlCommand command = new SqlCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "Search_Flight_SP";
                command.Connection = connect;

                connect.Open();
                command.Parameters.AddWithValue("@Leaving_From", From);
                command.Parameters.AddWithValue("@Going_To", To);
                command.Parameters.AddWithValue("@Departure_Date", Date);
                command.Parameters.AddWithValue("@Departure_Time", Time);
                command.Parameters.AddWithValue("@Seat", Seats);

                SqlDataAdapter sda = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                connect.Close();
                return dt;
            }
            catch (Exception Excptn_SearchD)
            {
                throw Excptn_SearchD;
            }

        }
    }
}