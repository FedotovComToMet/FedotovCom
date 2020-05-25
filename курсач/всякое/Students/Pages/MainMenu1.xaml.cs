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
using System.IO;


namespace Students.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainMenu.xaml
    /// </summary>
    public partial class MainMenu1 : Page
    {
        public MainMenu1()
        {
            InitializeComponent();
            switch (Roli)
            {
                case "Пользователь":

                    UserDataStudents.PreviewKeyDown += PreviewKeyDownHandler;
                    UserDataStudents.ItemsSource = SE.Student.ToList();
                    UserDataGrupps.ItemsSource = SE.Group.ToList();
                    UserDataExam.ItemsSource = SE.Exam1.ToList();
                    UserDataPred.ItemsSource = SE.Subject.ToList();

                    UserInfo.Visibility = Visibility.Visible;
                    AdminInfo.Visibility = Visibility.Hidden;

                    break;

                case "Админ":

                    AdminDataStudents.PreviewKeyDown += PreviewKeyDownHandler;
                    AdminDataGrupps.PreviewKeyDown += PreviewKeyDownHandler;
                    AdminDataExam.PreviewKeyDown += PreviewKeyDownHandler;
                    AdminDataUch.PreviewKeyDown += PreviewKeyDownHandler;
                    AdminDataPred.PreviewKeyDown += PreviewKeyDownHandler;
                    AdminDataPrepod.PreviewKeyDown += PreviewKeyDownHandler;
                    AdminDataOtdel.PreviewKeyDown += PreviewKeyDownHandler;
                    AdminDataCpec.PreviewKeyDown += PreviewKeyDownHandler;
                    AdminDataPrava.PreviewKeyDown += PreviewKeyDownHandler;

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
                    

                    break;
            }
        }

        private void open_student(object sender, RoutedEventArgs e)
        {
            AdminDataStudents.IsEnabled = true;
            AdminDataGrupps.IsEnabled = false;
            AdminDataExam.IsEnabled = false;
            AdminDataUch.IsEnabled = false;
            AdminDataPred.IsEnabled = false;
            AdminDataPrepod.IsEnabled = false;
            AdminDataOtdel.IsEnabled = false;
            AdminDataCpec.IsEnabled = false;
            AdminDataPrava.IsEnabled = false;

            infStud.Visibility = Visibility.Visible;
            infStud1.Visibility = Visibility.Visible;
            
        }

        private void Clouse_student(object sender, RoutedEventArgs e)
        {
            
            infStud.Visibility = Visibility.Hidden;
            infStud1.Visibility = Visibility.Hidden;
        }

        private void redact_student(object sender, RoutedEventArgs e)
        {

        }

        private void open_grup(object sender, RoutedEventArgs e){


            AdminDataStudents.IsEnabled=false;
            AdminDataGrupps.IsEnabled = true;
            AdminDataExam.IsEnabled = false;
            AdminDataUch.IsEnabled = false;
            AdminDataPred.IsEnabled = false;
            AdminDataPrepod.IsEnabled = false;
            AdminDataOtdel.IsEnabled = false;
            AdminDataCpec.IsEnabled = false;
            AdminDataPrava.IsEnabled = false;

            infGrupp.Visibility = Visibility.Visible;
            infGrupp1.Visibility = Visibility.Visible;
            
        }

        private void clouse_grup(object sender, RoutedEventArgs e)
        {
            infGrupp.Visibility = Visibility.Hidden;
            infGrupp1.Visibility = Visibility.Hidden;
        }

        private void redact_grup(object sender, RoutedEventArgs e)
        {

        }

        private void open_exam(object sender, RoutedEventArgs e)
        {
            AdminDataStudents.IsEnabled = false;
            AdminDataGrupps.IsEnabled = false;
            AdminDataExam.IsEnabled = true;
            AdminDataUch.IsEnabled = false;
            AdminDataPred.IsEnabled = false;
            AdminDataPrepod.IsEnabled = false;
            AdminDataOtdel.IsEnabled = false;
            AdminDataCpec.IsEnabled = false;
            AdminDataPrava.IsEnabled = false;

            infExam.Visibility = Visibility.Visible;
            infExam1.Visibility = Visibility.Visible;
        }

        private void clouse_exam(object sender, RoutedEventArgs e)
        {
            infExam.Visibility = Visibility.Hidden;
            infExam1.Visibility = Visibility.Hidden;

        }

        private void redact_exam(object sender, RoutedEventArgs e)
        {

        }

        private void open_uch(object sender, RoutedEventArgs e)
        {
            AdminDataStudents.IsEnabled = false;
            AdminDataGrupps.IsEnabled = false;
            AdminDataExam.IsEnabled = false;
            AdminDataUch.IsEnabled = true;
            AdminDataPred.IsEnabled = false;
            AdminDataPrepod.IsEnabled = false;
            AdminDataOtdel.IsEnabled = false;
            AdminDataCpec.IsEnabled = false;
            AdminDataPrava.IsEnabled = false;

            infUch.Visibility = Visibility.Visible;
            
        }

        private void clouse_uch(object sender, RoutedEventArgs e)
        {
            infUch.Visibility = Visibility.Hidden;
            
        }

        private void redact_uch(object sender, RoutedEventArgs e)
        {

        }

        private void open_pred(object sender, RoutedEventArgs e)
        {
            AdminDataStudents.IsEnabled = false;
            AdminDataGrupps.IsEnabled = false;
            AdminDataExam.IsEnabled = false;
            AdminDataUch.IsEnabled = false;
            AdminDataPred.IsEnabled = true;
            AdminDataPrepod.IsEnabled = false;
            AdminDataOtdel.IsEnabled = false;
            AdminDataCpec.IsEnabled = false;
            AdminDataPrava.IsEnabled = false;

            infPred.Visibility = Visibility.Visible;
            infPred1.Visibility = Visibility.Visible;
            
        }

        private void clouse_pred(object sender, RoutedEventArgs e)
        {
            infPred1.Visibility = Visibility.Hidden;
            infPred.Visibility = Visibility.Hidden;
        }

        private void redact_pred(object sender, RoutedEventArgs e)
        {

        }

        private void open_prepod(object sender, RoutedEventArgs e)
        {
            AdminDataStudents.IsEnabled = false;
            AdminDataGrupps.IsEnabled = false;
            AdminDataExam.IsEnabled = false;
            AdminDataUch.IsEnabled = false;
            AdminDataPred.IsEnabled = false;
            AdminDataPrepod.IsEnabled = true;
            AdminDataOtdel.IsEnabled = false;
            AdminDataCpec.IsEnabled = false;
            AdminDataPrava.IsEnabled = false;

            infPrepod.Visibility = Visibility.Visible;
        }

        private void clouse_prepod(object sender, RoutedEventArgs e)
        {
            infPrepod.Visibility = Visibility.Hidden;

        }

        private void redact_prepod(object sender, RoutedEventArgs e)
        {

        }

        private void open_otdel(object sender, RoutedEventArgs e)
        {
            AdminDataStudents.IsEnabled = false;
            AdminDataGrupps.IsEnabled = false;
            AdminDataExam.IsEnabled = false;
            AdminDataUch.IsEnabled = false;
            AdminDataPred.IsEnabled = false;
            AdminDataPrepod.IsEnabled = false;
            AdminDataOtdel.IsEnabled = true;
            AdminDataCpec.IsEnabled = false;
            AdminDataPrava.IsEnabled = false;

            infOtdel.Visibility = Visibility.Visible;
        }

        private void clouse_otdel(object sender, RoutedEventArgs e)
        {
            infOtdel.Visibility = Visibility.Hidden;
        }

        private void redact_otdel(object sender, RoutedEventArgs e)
        {

        }

        private void open_cpec(object sender, RoutedEventArgs e)
        {
            AdminDataStudents.IsEnabled = false;
            AdminDataGrupps.IsEnabled = false;
            AdminDataExam.IsEnabled = false;
            AdminDataUch.IsEnabled = false;
            AdminDataPred.IsEnabled = false;
            AdminDataPrepod.IsEnabled = false;
            AdminDataOtdel.IsEnabled = false;
            AdminDataCpec.IsEnabled = true;
            AdminDataPrava.IsEnabled = false;

            infCpec.Visibility = Visibility.Visible;

        }

        private void clouse_cpec(object sender, RoutedEventArgs e)
        {
            infCpec.Visibility = Visibility.Hidden;

        }

        private void redact_cpec(object sender, RoutedEventArgs e)
        {

        }

        private void open_prava(object sender, RoutedEventArgs e)
        {
            AdminDataStudents.IsEnabled = false;
            AdminDataGrupps.IsEnabled = false;
            AdminDataExam.IsEnabled = false;
            AdminDataUch.IsEnabled = false;
            AdminDataPred.IsEnabled = false;
            AdminDataPrepod.IsEnabled = false;
            AdminDataOtdel.IsEnabled = false;
            AdminDataCpec.IsEnabled = false;
            AdminDataPrava.IsEnabled = true;

            infPrava.Visibility = Visibility.Visible;
        }

        private void clouse_prava(object sender, RoutedEventArgs e)
        {
            infPrava.Visibility = Visibility.Hidden;
        }

        private void off(object sender, RoutedEventArgs e)
        {
            MF.Content = new Page1();
        }

        private void AdminDataStudents_DataContextChanged(object sender, DataGridCellEditEndingEventArgs e)
        {


        }

        private void AddStudent(object sender, RoutedEventArgs e)
        {
            int hm = AdminDataStudents.Items.Count - SE.Student.Count();
            if (hm == 2)
            {
                Student s = (Student)AdminDataStudents.Items[AdminDataStudents.Items.Count - 2];

                s.NamberStudent = "0";

                foreach (Student se in SE.Student)

                {

                    if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);

                    if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
                }


                SE.Student.Add(s);
                SE.SaveChanges();
                MessageBox.Show("Успешно");
            }
            else
            {
                if (hm == 1)
                {

                }
                else
                {
                    //        List<Student> sl = new List<Student>();
                    //        for (int g = AdminDataStudents.Items.Count - 2; g > AdminDataStudents.Items.Count - hm; g--)
                    //        {
                    //            Student s = (Student)AdminDataStudents.Items[g];

                    //            s.NamberStudent = "0";

                    //            foreach (Student se in SE.Student)

                    //            {

                    //                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                    //                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
                    //            }

                    //            sl.Add(s);
                    //        }

                    //        foreach (Student s in sl)
                    //        {
                    //            SE.Student.Add(s);
                    //        }

                    //        SE.SaveChanges();
                }
            }

            //B.Content = hm;
            /*

            Student s = (Student)AdminDataStudents.Items[AdminDataStudents.Items.Count - 2];

            s.NamberStudent = "0";

            foreach (Student se in SE.Student)

            {

                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
            }


            SE.Student.Add(s);
            SE.SaveChanges();
            */
        }

        private void SaveStudent(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

       

        private void AddGrupp(object sender, RoutedEventArgs e)
        {
            int hm = AdminDataGrupps.Items.Count - SE.Group.Count();
            if (hm == 2)
            {
                Group s = (Group)AdminDataGrupps.Items[AdminDataGrupps.Items.Count - 2];

                s.NumberGroup = 0;

                foreach (Group se in SE.Group)

                {

                    if (s.NumberGroup == se.NumberGroup) s.NumberGroup = s.NumberGroup + 1;

                    if (s.NumberGroup < se.NumberGroup) s.NumberGroup = se.NumberGroup + 1;
                }


                SE.Group.Add(s);
                SE.SaveChanges();
                MessageBox.Show("Успешно");
            }
            else
            {
                if (hm == 1)
                {

                }
                else
                {
                    //        List<Student> sl = new List<Student>();
                    //        for (int g = AdminDataStudents.Items.Count - 2; g > AdminDataStudents.Items.Count - hm; g--)
                    //        {
                    //            Student s = (Student)AdminDataStudents.Items[g];

                    //            s.NamberStudent = "0";

                    //            foreach (Student se in SE.Student)

                    //            {

                    //                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                    //                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
                    //            }

                    //            sl.Add(s);
                    //        }

                    //        foreach (Student s in sl)
                    //        {
                    //            SE.Student.Add(s);
                    //        }

                    //        SE.SaveChanges();
                }
            }

            //B.Content = hm;
            /*

            Student s = (Student)AdminDataStudents.Items[AdminDataStudents.Items.Count - 2];

            s.NamberStudent = "0";

            foreach (Student se in SE.Student)

            {

                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
            }


            SE.Student.Add(s);
            SE.SaveChanges();
            */
        }
    

        private void SaveGrupp(object sender, RoutedEventArgs e)

        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

    

        private void AddUch(object sender, RoutedEventArgs e)
        {

            int hm = AdminDataUch.Items.Count - SE.Studying.Count();
            if (hm == 2)
            {
                Studying s = (Studying)AdminDataUch.Items[AdminDataUch.Items.Count - 2];

                SE.Studying.Add(s);
                SE.SaveChanges();
                MessageBox.Show("Успешно");
            }
            else
            {
                if (hm == 1)
                {

                }
                else
                {
                    //        List<Student> sl = new List<Student>();
                    //        for (int g = AdminDataStudents.Items.Count - 2; g > AdminDataStudents.Items.Count - hm; g--)
                    //        {
                    //            Student s = (Student)AdminDataStudents.Items[g];

                    //            s.NamberStudent = "0";

                    //            foreach (Student se in SE.Student)

                    //            {

                    //                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                    //                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
                    //            }

                    //            sl.Add(s);
                    //        }

                    //        foreach (Student s in sl)
                    //        {
                    //            SE.Student.Add(s);
                    //        }

                    //        SE.SaveChanges();
                }
            }

            //B.Content = hm;
            /*

            Student s = (Student)AdminDataStudents.Items[AdminDataStudents.Items.Count - 2];

            s.NamberStudent = "0";

            foreach (Student se in SE.Student)

            {

                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
            }


            SE.Student.Add(s);
            SE.SaveChanges();
            */
        

    }

        private void SaveUch(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

        private void PreviewKeyDownHandler(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {
                foreach (var row in grid.SelectedItems)
                {
                    if (row is Studying)
                    {
                        SE.Studying.Remove((Studying)row);
                    }
                   if (row is Student s)
                    {
                        SE.Student.Remove(s);
                    }
                   if (row is Rols)
                    {
                        SE.Rols.Remove((Rols)row);
                    }
                   if (row is Teacher)
                    {
                        SE.Teacher.Remove((Teacher)row);
                    }
                   if (row is Subject)
                    {
                        SE.Subject.Remove((Subject)row);
                    }
                   if (row is Group)
                    {
                        SE.Group.Remove((Group)row);
                    }
                   if (row is Exam1)
                    {
                        SE.Exam1.Remove((Exam1)row);
                    }
                   if (row is Department1)
                    {
                        SE.Department1.Remove((Department1)row);
                    }
                   if (row is Specialty)
                    {
                        SE.Specialty.Remove((Specialty)row);
                    }
                    SE.SaveChanges();
                    MessageBox.Show("Успешно");
                }


            }
        }

        private void AddPred(object sender, RoutedEventArgs e)
        {
            int hm = AdminDataPred.Items.Count - SE.Subject.Count();
            if (hm == 2)
            {
                Subject s = (Subject)AdminDataPred.Items[AdminDataPred.Items.Count - 2];

                SE.Subject.Add(s);
                SE.SaveChanges();
                MessageBox.Show("Успешно");
            }
            else
            {
                if (hm == 1)
                {

                }
                else
                {
                    //        List<Student> sl = new List<Student>();
                    //        for (int g = AdminDataStudents.Items.Count - 2; g > AdminDataStudents.Items.Count - hm; g--)
                    //        {
                    //            Student s = (Student)AdminDataStudents.Items[g];

                    //            s.NamberStudent = "0";

                    //            foreach (Student se in SE.Student)

                    //            {

                    //                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                    //                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
                    //            }

                    //            sl.Add(s);
                    //        }

                    //        foreach (Student s in sl)
                    //        {
                    //            SE.Student.Add(s);
                    //        }

                    //        SE.SaveChanges();
                }
            }

            //B.Content = hm;
            /*

            Student s = (Student)AdminDataStudents.Items[AdminDataStudents.Items.Count - 2];

            s.NamberStudent = "0";

            foreach (Student se in SE.Student)

            {

                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
            }


            SE.Student.Add(s);
            SE.SaveChanges();
            */
        }

        private void SavePred(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

        private void PreviewKeyDownHandler3(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {
                foreach (var row in grid.SelectedItems)
                {
                    SE.Subject.Remove((Subject)row);
                }

                SE.SaveChanges();

            }
        }

        private void AddPrepod(object sender, RoutedEventArgs e)
        {

            int hm = AdminDataPrepod.Items.Count - SE.Teacher.Count();
            if (hm == 2)
            {
                Teacher s = (Teacher)AdminDataPrepod.Items[AdminDataPrepod.Items.Count - 2];

                SE.Teacher.Add(s);
                SE.SaveChanges();
                MessageBox.Show("Успешно");
            }
            else
            {
                if (hm == 1)
                {

                }
                else
                {
                    //        List<Student> sl = new List<Student>();
                    //        for (int g = AdminDataStudents.Items.Count - 2; g > AdminDataStudents.Items.Count - hm; g--)
                    //        {
                    //            Student s = (Student)AdminDataStudents.Items[g];

                    //            s.NamberStudent = "0";

                    //            foreach (Student se in SE.Student)

                    //            {

                    //                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                    //                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
                    //            }

                    //            sl.Add(s);
                    //        }

                    //        foreach (Student s in sl)
                    //        {
                    //            SE.Student.Add(s);
                    //        }

                    //        SE.SaveChanges();
                }

            }
        }

        private void SavePrepod(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

        private void PreviewKeyDownHandler4(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {
                foreach (var row in grid.SelectedItems)
                {
                    SE.Teacher.Remove((Teacher)row);
                }

                SE.SaveChanges();

            }
        }

        private void AddExam(object sender, RoutedEventArgs e)
        {
            int hm = AdminDataExam.Items.Count - SE.Exam1.Count();
            if (hm == 2)
            {
                Exam1 s = (Exam1)AdminDataExam.Items[AdminDataExam.Items.Count - 2];

            SE.Exam1.Add(s);
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }
            else
            {
                if (hm == 1)
                {

                }
                else
                {
                    //        List<Student> sl = new List<Student>();
                    //        for (int g = AdminDataStudents.Items.Count - 2; g > AdminDataStudents.Items.Count - hm; g--)
                    //        {
                    //            Student s = (Student)AdminDataStudents.Items[g];

                    //            s.NamberStudent = "0";

                    //            foreach (Student se in SE.Student)

                    //            {

                    //                if (Convert.ToInt32(s.NamberStudent) == Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(s.NamberStudent) + 1);


                    //                if (Convert.ToInt32(s.NamberStudent) < Convert.ToInt32(se.NamberStudent)) s.NamberStudent = Convert.ToString(Convert.ToInt32(se.NamberStudent) + 1);
                    //            }

                    //            sl.Add(s);
                    //        }

                    //        foreach (Student s in sl)
                    //        {
                    //            SE.Student.Add(s);
                    //        }

                    //        SE.SaveChanges();
                }

            }

}

        private void SaveExam(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

        private void PreviewKeyDownHandler5(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {
                foreach (var row in grid.SelectedItems)
                {
                    SE.Exam1.Remove((Exam1)row);
                }

                SE.SaveChanges();

            }
        }

        private void AddOtdel(object sender, RoutedEventArgs e)
        {
            int hm = AdminDataOtdel.Items.Count - SE.Department1.Count();
            if (hm == 2)
            {
                Department1 s = (Department1)AdminDataOtdel.Items[AdminDataOtdel.Items.Count - 2];

                SE.Department1.Add(s);
                SE.SaveChanges();
                MessageBox.Show("Успешно");
            }
        }

        private void SaveOtdel(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

        private void PreviewKeyDownHandler6(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {
                foreach (var row in grid.SelectedItems)
                {
                    SE.Department1.Remove((Department1)row);
                }

                SE.SaveChanges();

            }
        }

        private void AddCpec(object sender, RoutedEventArgs e)
        {
            int hm = AdminDataCpec.Items.Count - SE.Specialty.Count();
            if (hm == 2)
            {
                Specialty s = (Specialty)AdminDataCpec.Items[AdminDataCpec.Items.Count - 2];

                SE.Specialty.Add(s);
                SE.SaveChanges();
                MessageBox.Show("Успешно");
            }
        }

        private void SaveCpec(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

        private void PreviewKeyDownHandler7(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {
                foreach (var row in grid.SelectedItems)
                {
                    SE.Specialty.Remove((Specialty)row);
                }

                SE.SaveChanges();

            }
        }

        private void AddPrava(object sender, RoutedEventArgs e)
        {
            int hm = AdminDataPrava.Items.Count - SE.Rols.Count();
            if (hm == 2)
            {
                Rols s = (Rols)AdminDataPrava.Items[AdminDataPrava.Items.Count - 2];

                SE.Rols.Add(s);
                SE.SaveChanges();
                MessageBox.Show("Успешно");
            }
        }

        private void SavePrava(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
            MessageBox.Show("Успешно");
        }

        private void PreviewKeyDownHandler8(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {
                foreach (var row in grid.SelectedItems)
                {
                    SE.Rols.Remove((Rols)row);
                }

                SE.SaveChanges();

            }
        }

        public class FindMarks
        {

            public string FerstName { get; set; }
            public string MiddleName { get; set; }
            public string PhoneNumber { get; set; }
            public int NumberGroup { get; set; }
            public string NameSubject { get; set; }
            public string Access { get; set; }
            public float Estimation { get; set; }
            public float SrAr { get; set; }

        }

        private void seach_Click(object sender, RoutedEventArgs e)

        {
            float SrAR = 0;

            List<FindMarks> FM = new List<FindMarks>();

            string Familia = FamiliaFindUser.Text;
            List<Student> FS = new List<Student>();
            foreach (Student S in SE.Student)

            {
                if (S.LastName == Familia) FS.Add(S);
            }

            foreach (Student S in FS)
            {

                int GR = -1;

                foreach (Studying ST in SE.Studying)
                {
                    if (S.NamberStudent == ST.NamberStudent)
                    {
                        GR = (int)ST.NumberGroup; break;
                    }
                }

                foreach (Exam1 E in SE.Exam1)
                {
                    if (S.NamberStudent == E.NamberStudent)
                    {
                        SrAR += (float)E.Estimation;
                        FindMarks F = new FindMarks();
                        foreach (Subject SU in SE.Subject)
                        {
                            if (E.idSubgect == SU.idSubject)
                            {
                                F.NameSubject = SU.nameSubject; break;
                            }
                        }

                        switch (E.Access)
                        {
                            case 1:
                                F.Access = "Допущен";
                                break;
                            case 0:
                                F.Access = "Недопущен";
                                break;
                        }
                        F.Estimation = (float)E.Estimation;
                        F.FerstName = S.FerstName;
                        F.MiddleName = S.MiddleName;
                        F.NumberGroup = GR;
                        F.PhoneNumber = S.PhoneNumber;
                        FM.Add(F);

                    }
                }
            }
            SrAR = SrAR / FM.Count;
            foreach (FindMarks F in FM)
            {
                if (F == FM[0])
                {
                    F.SrAr = SrAR;
                }
                else
                {

                }
            }

            if (FM.Count > 0)
            {
                UserPoisk.ItemsSource = FM;
            }
            else
            {
                MessageBox.Show("Неккоректно введены данные о студенте");
            }


        }

        private void Save_Exam_User(object sender, ContextMenuEventArgs e)

        {
            SE.SaveChanges();
        }

        private void PreviewKeyDownHandler9(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {
                foreach (var row in grid.SelectedItems)
                {
                    SE.Exam1.Remove((Exam1)row);
                }

                SE.SaveChanges();

            }
        }

        private void Clouse_Search(object sender, RoutedEventArgs e)
        {
            userpoisk.Visibility = Visibility.Hidden;
        }

        private void Open_poisk(object sender, RoutedEventArgs e)
        {
            userpoisk.Visibility = Visibility.Visible;

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            {
                SE.SaveChanges();
            }

        }

        private void seach_Click1(object sender, RoutedEventArgs e)
        {

            {
                float SrAR = 0;
                List<FindMarks> FM = new List<FindMarks>();

                string Familia = FamiliaFindUserA.Text;
                List<Student> FS = new List<Student>();
                foreach (Student S in SE.Student)

                {
                    if (S.LastName == Familia) FS.Add(S);
                }

                foreach (Student S in FS)
                {

                    int GR = -1;

                    foreach (Studying ST in SE.Studying)
                    {
                        if (S.NamberStudent == ST.NamberStudent)
                        {
                            GR = (int)ST.NumberGroup; break;
                        }
                    }

                    foreach (Exam1 E in SE.Exam1)
                    {
                        if (S.NamberStudent == E.NamberStudent)
                        {
                            SrAR += (float)E.Estimation;
                            FindMarks F = new FindMarks();
                            foreach (Subject SU in SE.Subject)
                            {
                                if (E.idSubgect == SU.idSubject)
                                {
                                    F.NameSubject = SU.nameSubject; break;
                                }
                            }

                            switch (E.Access)
                            {
                                case 1:
                                    F.Access = "Допущен";
                                    break;
                                case 0:
                                    F.Access = "Не допущен";
                                    break;
                            }
                            F.Estimation = (float)E.Estimation;
                            F.FerstName = S.FerstName;
                            F.MiddleName = S.MiddleName;
                            F.NumberGroup = GR;
                            F.PhoneNumber = S.PhoneNumber;
                            FM.Add(F);

                        }
                    }
                }
                SrAR = SrAR / FM.Count;
                foreach (FindMarks F in FM)
                {
                    if (F == FM[0])
                    {
                        F.SrAr = SrAR;
                    }
                    else
                    {
                       
                    }
                }
               
                if (FM.Count > 0)
                {
                    UserPoiskA.ItemsSource = FM;
                }
                else
                {
                    MessageBox.Show("Неккоректно введены данные о студенте");
                }
            }
        }

        private void Open_poiskA(object sender, RoutedEventArgs e)
        {
            userpoiskAdmin.Visibility = Visibility.Visible;
        }

        private void Clouse_SearchA(object sender, RoutedEventArgs e)
        {
            userpoiskAdmin.Visibility = Visibility.Hidden;
        }

        private void SavePoiskA(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            SE.SaveChanges();
        }

        private void print(object sender, RoutedEventArgs e)
        {
            StreamWriter SW = new StreamWriter("ХарактеристикаСтудента.txt");
            List<FindMarks> FM;
            Window W;
            switch (Roli)
            {
                case "Пользователь":

                    SW.WriteLine ("Статистика по студенту: " + FamiliaFindUser.Text);
                    FM = (List<FindMarks>)UserPoisk.ItemsSource;
                    foreach(FindMarks F in FM)
                    {
                        SW.WriteLine(F.FerstName + " " + F.MiddleName + " " + F.PhoneNumber + " " + F.NumberGroup + " " + F.NameSubject + " " + F.Access + " " + F.Estimation);

                    }

                    SW.WriteLine("Дата: " + DateTime.Now);
                    SW.WriteLine("______________________ ");
                    SW.Close();
                    MessageBox.Show("Файл создан");
                    W = new MailAdress();
                    W.Show();


                    break;

                case "Админ":

                    SW.WriteLine("Статистика по студенту: " + FamiliaFindUser.Text);
                    FM = (List<FindMarks>)UserPoiskA.ItemsSource;
                    foreach (FindMarks F in FM)
                    {
                        SW.WriteLine(F.FerstName + " " + F.MiddleName + " " + F.PhoneNumber + " " + F.NumberGroup + " " + F.NameSubject + " " + F.Access + " " + F.Estimation);

                    }

                    SW.WriteLine("Дата: " + DateTime.Now);
                    SW.WriteLine("______________________ ");
                    SW.Close();
                    MessageBox.Show("Файл создан");
                    W = new MailAdress();
                    W.Show();
                    break;
            }
        }
    }
}
