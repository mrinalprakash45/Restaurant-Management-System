using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Restaurant_Management_System
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                // Allowed image extensions
                string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };

                // Get the extension of the selected file
                string extension = System.IO.Path.GetExtension(fuImage.FileName).ToLower();

                // Check if the extension is in the list of allowed extensions
                if (allowedExtensions.Contains(extension))
                {
                    // Connection string to the SQL Database
                    string connectionString = "Data Source=MRINAL;Initial Catalog=SpiceRestaurant;Integrated Security=True";

                    // Create the SQL connection
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        // Open the connection
                        connection.Open();

                        // Prepare the SQL insert query
                        string query = "INSERT INTO [MenuItems] (ItemName, ItemDescription, ItemPrice, ItemImage, ItemType) VALUES (@ItemName, @Description, @Price, @Image, @Type)";

                        // Create the SQL command
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Add the parameters to the query
          
                            command.Parameters.AddWithValue("@ItemName", txtItemName.Text);
                            command.Parameters.AddWithValue("@Description", txtDescription.Text);
                            command.Parameters.AddWithValue("@Price", txtPrice.Text);
                            command.Parameters.AddWithValue("@Type", txtType.Text);

                            // Convert the image file to a byte array
                            byte[] imageBytes = new byte[fuImage.PostedFile.ContentLength];
                            fuImage.PostedFile.InputStream.Read(imageBytes, 0, fuImage.PostedFile.ContentLength);

                            // Add the image to the query
                            command.Parameters.AddWithValue("@Image", imageBytes);

                            // Execute the query
                            int result = command.ExecuteNonQuery();

                            // Check if data is inserted
                            if (result > 0)
                            {
                                lblMessage.Text = "Data inserted successfully";
                            }
                            else
                            {
                                lblMessage.Text = "Failed to insert data";
                            }
                        }
                    }
                }
                else
                {
                    lblMessage.Text = "Only JPG, JPEG, PNG, and GIF images are allowed";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }


    }
}