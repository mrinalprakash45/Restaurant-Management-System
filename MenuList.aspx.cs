using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Restaurant_Management_System
{
    public partial class MenuList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }

        }
        protected void orderNowButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=MRINAL;Initial Catalog=SpiceRestaurant;Integrated Security=True";

            // Create the SQL connection
             int id = (int)Session["CustomerID"];
            // Create the SQL connection
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the connection
                connection.Open();

                // Prepare the SQL select query
                string query = "INSERT INTO [Orders] (CustomerID, ItemID, OrderDate, Status) VALUES (@customerID, @itemID, @orderDate, @status)";

                //int quantity;

                // Get the quantity value from the HTML input field
                //string quantityString = Request.Form["quantity"];
               
                Button orderButton = (Button)sender;
                int itemID = int.Parse(orderButton.CommandArgument);
                string status = "Pending";
                decimal itemPrice = GetItemPrice(itemID);

                // Try to parse the string to an integer
                //if (int.TryParse(quantityString, out quantity))
                //{
                // Use the quantity value
                //int quantity = Convert.ToInt32(quantityString);
                //decimal totalAmount = Math.Round(quantity * itemPrice, 2);
                    

                    // Add values to the query
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@customerID", id);
                    command.Parameters.AddWithValue("@itemID", itemID);
                    //command.Parameters.AddWithValue("@totalAmount", totalAmount);
                    command.Parameters.AddWithValue("@orderDate", DateTime.Now);
                    command.Parameters.AddWithValue("@status", status);

                    // Execute the query
                    command.ExecuteNonQuery();
                    label.Text = "Order is successfully placed";
                    label.Visible = true;
                //}
                //else
                //{
                    // Handle the error
                //    label.Text = "Command is successfully executed";
                //    label.Visible = true;
                //}
            }
        }
        private decimal GetItemPrice(int itemID)
        {
            decimal itemPrice = 0;
            // Connection string to the SQL Database
            string connectionString = "Data Source=MRINAL;Initial Catalog=SpiceRestaurant;Integrated Security=True";

            // Create the SQL connection
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the connection
                connection.Open();

                // Prepare the SQL select query
                string query = "SELECT ItemPrice FROM [MenuItems] WHERE ItemID = @itemID";

                // Create the SQL command
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@itemID", itemID);

                    // Execute the query and get the item price
                    itemPrice = (decimal)command.ExecuteScalar();
                }
            }

            return itemPrice;
        }
    private void BindData()
        {
            // Connection string to the SQL Database
            string connectionString = "Data Source=MRINAL;Initial Catalog=SpiceRestaurant;Integrated Security=True";

            // Create the SQL connection
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the connection
                connection.Open();

                // Prepare the SQL select query
                string query = "SELECT * FROM [MenuItems]";

                // Create the SQL command
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Create the data adapter
                    SqlDataAdapter adapter = new SqlDataAdapter(command);

                    // Create a data table
                    DataTable table = new DataTable();

                    // Fill the data table with the data from the SQL Database
                    adapter.Fill(table);

                    // Bind the data to the ListView
                    lvMenuItems.DataSource = table;
                    lvMenuItems.DataBind();
                }
            }
        }
    }
}