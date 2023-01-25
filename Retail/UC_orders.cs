using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Retail
{
    public partial class UC_orders : UserControl
    {
        dbconnection db = new dbconnection();
        public UC_orders()
        {
            InitializeComponent();
        }

        private void UC_orders_Load(object sender, EventArgs e)
        {

           MySqlConnection con = new MySqlConnection(db.dbcon);
            
            con.Open();

            String str = "Select * From db_orders ";

            MySqlCommand cmd = new MySqlCommand(str, con);

            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();

            MySqlDataAdapter da = new MySqlDataAdapter(cmd);

            da.Fill(dt);

            db_ordersDataGridView.AutoGenerateColumns = false;

            db_ordersDataGridView.DataSource = dt;

            con.Close();
      
        }

        private void btn_refresh_Click(object sender, EventArgs e)
        {
           MySqlConnection con = new MySqlConnection(db.dbcon);
         
            con.Open();

            String str = "Select * From db_orders ";

            MySqlCommand cmd = new MySqlCommand(str, con);

            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();

            MySqlDataAdapter da = new MySqlDataAdapter(cmd);

            da.Fill(dt);

            db_ordersDataGridView.AutoGenerateColumns = false;
            
            db_ordersDataGridView.DataSource = dt;

            con.Close();

        }

        private void pcb_search_by_invoiceno_Click(object sender, EventArgs e)
        {

        }

        private void pcb_search_by_customer_name_Click(object sender, EventArgs e)
        {

        }

        private void txt_invoiceno_TextChanged(object sender, EventArgs e)
        {

        }

        private void txt_customername_TextChanged(object sender, EventArgs e)
        {

        }

        private void uC_Billing1_Load(object sender, EventArgs e)
        {

        }
    }
}
