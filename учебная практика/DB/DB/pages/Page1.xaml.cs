using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

namespace DB.pages
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class Page1 : Page
    {
        public Page1()

        {
            InitializeComponent();
        }

        private void Enter(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source = FEDOTOR3000\SQLEXPRESS; " +
                "Initial Catalog = zakaz_mebeli; " + "Integrated Security = true;");
            try
            {
                connection.Open();
                MessageBox.Show("Подключение выполнено!");
            }
            catch (SqlException)

            {
                MessageBox.Show("Подключение не выполнено!");
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
