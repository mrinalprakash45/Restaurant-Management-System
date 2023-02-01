using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Restaurant_Management_System
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_btn_Click(object sender, EventArgs e)
        {
            string FirstName = firstname.Text;
            string LastName = lastname.Text;
            string Email = email.Text;
            string Phone = TextBox2.Text;
            string Password = password.Text;

            string connectionString = "Data Source = MRINAL; Initial Catalog = SpiceRestaurant; Integrated Security = True";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Insert the data into the database
                    string query = "INSERT INTO [Customers] (FirstName, LastName, Email, Phone, Password) VALUES (@FirstName, @LastName, @Email, @Phone, @Password)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@FirstName", FirstName);
                        command.Parameters.AddWithValue("@LastName", LastName);
                        command.Parameters.AddWithValue("@Email", Email);
                        command.Parameters.AddWithValue("@Phone", Phone);
                        command.Parameters.AddWithValue("@Password", Password);
                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("An error occurred: " + ex.Message);
            }
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}