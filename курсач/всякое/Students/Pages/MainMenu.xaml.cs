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
using Students.Pages;
using static Students.Interface;

namespace Students.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainMenu.xaml
    /// </summary>
    public partial class MainMenu : Page
    {
        public MainMenu()
        {
            InitializeComponent();
            switch (Roli)
            {
                case "Пользователь":
                    UserDataStudents.ItemsSource = SE.Student.ToList();
                    UserDataGrupps.ItemsSource = SE.Group.ToList();
                    UserInfo.Visibility = Visibility.Visible;
                    AdminInfo.Visibility = Visibility.Hidden;
                    ModeratorInfo.Visibility = Visibility.Hidden;
                    break;
                case "Модератор":
                    ModeratotDataStudents.ItemsSource = SE.Student.ToList();
                    ModeratorDataGrupps.ItemsSource = SE.Group.ToList();
                    ModeratorDataExam.ItemsSource = SE.Exam1.ToList();
                    ModeratorDataUch.ItemsSource = SE.Studying.ToList();
                    ModeratorDataPred.ItemsSource = SE.Subject.ToList();
                    ModeratorDataPrepod.ItemsSource = SE.Teacher.ToList();
                    ModeratorDataOtdel.ItemsSource = SE.Department1.ToList();
                    ModeratorDataCpec.ItemsSource = SE.Specialty.ToList();
                    UserInfo.Visibility = Visibility.Hidden;
                    AdminInfo.Visibility = Visibility.Hidden;
                    ModeratorInfo.Visibility = Visibility.Visible;
                    break;
                case "Админ":
                    AdminDataStudents.ItemsSource = SE.Student.ToList();
                    AdminDataGrupps.ItemsSource = SE.Group.ToList();
                    AdminDataExam.ItemsSource = SE.Exam1.ToList();
                    AdminDataUch.ItemsSource = SE.Studying.ToList();
                    AdminDataPred.ItemsSource = SE.Subject.ToList();
                    AdminDataPrepod.ItemsSource = SE.Teacher.ToList();
                    AdminDataOtdel.ItemsSource = SE.Department1.ToList();
                    AdminDataCpec.ItemsSource = SE.Specialty.ToList();
                    AdminDataPrava.ItemsSource = SE.Rols.ToList();
                    UserInfo.Visibility = Visibility.Hidden;
                    AdminInfo.Visibility = Visibility.Visible;
                    ModeratorInfo.Visibility = Visibility.Hidden;
                    break;
            }
        }

        private void open_student(object sender, RoutedEventArgs e)
        {
            infStud.Visibility = Visibility.Visible;
            infStud1.Visibility = Visibility.Visible;
            infStud3.Visibility = Visibility.Visible;
        }

        private void open_grup(object sender, RoutedEventArgs e)
        {
            infGrupp.Visibility = Visibility.Visible;
            infGrupp1.Visibility = Visibility.Visible;
            infGrupp3.Visibility = Visibility.Visible;
        }

        private void open_exame(object sender, RoutedEventArgs e)
        {
            infExam.Visibility = Visibility.Visible;
            infExam3.Visibility = Visibility.Visible;
        }

        private void open_uch(object sender, RoutedEventArgs e)
        {
            infUch.Visibility = Visibility.Visible;
            infUch3.Visibility = Visibility.Visible;
        }

        private void open_pred(object sender, RoutedEventArgs e)
        {
            infPred.Visibility = Visibility.Visible;
            infPred3.Visibility = Visibility.Visible;
        }

        private void open_prepod(object sender, RoutedEventArgs e)
        {
            infPrepod.Visibility = Visibility.Visible;
            infPrepod3.Visibility = Visibility.Visible;
        }

        private void open_otdel(object sender, RoutedEventArgs e)
        {
            infOtdel.Visibility = Visibility.Visible;
            infOtdel3.Visibility = Visibility.Visible;
        }

        private void open_cpec(object sender, RoutedEventArgs e)
        {
            infCpec.Visibility = Visibility.Visible;
            infCpec3.Visibility = Visibility.Visible;
        }

        private void open_prava(object sender, RoutedEventArgs e)
        {
            infPrava.Visibility = Visibility.Visible;
        }

        private void end(object sender, RoutedEventArgs e)
        {
            MF.Content = new Page1();
        }
    }
}
