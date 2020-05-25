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
using System.Data.SqlClient;
using Students.Pages;
using static Students.Interface;
using System.IO;

namespace Students
{
    public partial class Page1 : Page
    {
        StreamWriter SW;
        StreamReader SR;
        FileInfo FileInfo = new FileInfo("Auth.dll");
        public Page1()
        {
            InitializeComponent();
            if (FileInfo.Exists)
            {
                SR = new StreamReader("Auth.dll");
                login.Text = SR.ReadLine();
                Pas.Password = SR.ReadLine();
                SR.Close();

            }
        }

      

        private void SighIn(object sender, RoutedEventArgs e)
        {
            List<Rols> rols = SE.Rols.ToList();

            foreach (Rols r in rols)
            {
                
                if (r.Login == login.Text && r.Password == Pas.Password)
                {
                    MessageBox.Show("успешно");
                    Roli = r.NameRole;
                    if (readme.IsChecked == true)
                    {
                        SW = new StreamWriter("Auth.dll");
                        SW.WriteLine(login.Text);
                        SW.WriteLine(Pas.Password);
                        SW.Close();
                    }
                    else
                    {
                        if (FileInfo.Exists)
                        {

                            FileInfo.Delete();

                        }
                    }

                    MF.Navigate(new MainMenu1());
                }
            }
        }
        private void Registration(object sender, RoutedEventArgs e)
        {
            MF.Content = new Page2();
        }

        private void instruction(object sender, RoutedEventArgs e)
        {
            MF.Content = new Instr();
        }
    }
}
