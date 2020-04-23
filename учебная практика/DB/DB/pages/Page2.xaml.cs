using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Configuration;
using System.Data.SqlClient;


namespace DB.pages
{
    /// <summary>
    /// Логика взаимодействия для Page2.xaml
    /// </summary>
    public partial class Page2 : Page
    {
        private string connectionString;
        private string query;

        public Page2()

        {
            InitializeComponent();
            connectionString = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            query = "SELECT login, password, role FROM dbo.polzovateli where login = @login end password = @password";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@famStud", login.Text);
                command.Parameters.AddWithValue("@famStud", password.Text);
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    {
                        NavigationService?.Navigate(new (connectionString));
                        return;
                    }
                }

            }
        }
    }
}
