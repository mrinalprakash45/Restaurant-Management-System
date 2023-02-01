using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Restaurant_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                // Connection string to the SQL Database
                string connectionString = "Data Source=MRINAL;Initial Catalog=SpiceRestaurant;Integrated Security=True";

                // Create the SQL connection
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the connection
                    connection.Open();

                    // Prepare the SQL query
                    string query = "SELECT CustomerID FROM [Customers] WHERE Email = @Username AND Password = @Password";

                    // Create the SQL command
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add the parameters to the query
                        command.Parameters.AddWithValue("@Username", username.Text);
                        command.Parameters.AddWithValue("@Password", password.Text);

                        // Execute the query
                        SqlDataReader reader = command.ExecuteReader();

                        if (username.Text == "admin@admin.com" && password.Text == "admin123")
                        {
                            // Redirect to the dashboard
                            Response.Redirect("Dashboard.aspx");
                        }
                        else if (reader.HasRows)
                        {
                            reader.Read();
                            // Store the customer ID in the session
                            Session["CustomerID"] = reader["CustomerID"];
                            // Redirect to the welcome page
                            Response.Redirect("Index.aspx");
                        }
                        else
                        {
                            lblMessage.Text = "Invalid username or password";
                            lblMessage.Visible = true;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.Visible = true;
            }
        }
    }
}