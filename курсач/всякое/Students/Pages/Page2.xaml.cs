using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Students.Pages;
using static Students.Interface;

namespace Students.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page2.xaml
    /// </summary>
    public partial class Page2 : Page
    {
        public Page2()
        {
            InitializeComponent();
        }


        private void Registracia(object sender, RoutedEventArgs e)
        {
            int id = 0;
            Boolean b = false;
            List<Rols> rols = SE.Rols.ToList();
            foreach (Rols r in rols)
            {
                if (r.idTeacher > id) id = r.idTeacher;
                if (r.Login == LogReg.Text && r.Password == PasReg.Password)
                {
                    b = true;
                }
            }
            if (b)
            {
                MessageBox.Show("пользователь уже зарегистрирован");
                MF.Content = new MainMenu1();
            }
            else
            {
                SE.Rols.Add(new Rols
                {
                    idTeacher = id + 1,
                    Login = LogReg.Text,
                    Password = PasReg.Password,
                    NameRole = "Пользователь"
                }) ;
                SE.SaveChanges();
                Roli = "Пользователь";
                MF.Content = new MainMenu1();

            }
        }

        private void generation(object sender, RoutedEventArgs e)
        {

        }

        private void RollBack(object sender, RoutedEventArgs e)
        {
            MF.Content = new Page1();
        }
    }
}