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
using System.
using Students.Pages;

namespace Students
{
    public partial class Page1 : Page
    {
        private string connectionString;
        public Page1()
        {
            InitializeComponent();
            connectionString = @"Data Source = FEDOTOR3000\SQLEXPRESS; " +
          "Initial Catalog = Students; " + "Integrated Security = true;";
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            try
            {
                connection.Open();
                MessageBox.Show("Подключение выполнено!");
                string query = "SELECT login, password, role FROM dbo.Role WHERE login=@login AND password=@password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@login", login.Text);
                command.Parameters.AddWithValue("@password", password.Text);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    MessageBox.Show("Пользователь найден!"); return;
                }
                MessageBox.Show("Пользователь не найден!");
            }
            catch (SqlException ex)

            {
                MessageBox.Show(ex.Message);
            }
        }


    }
}


    }
}
