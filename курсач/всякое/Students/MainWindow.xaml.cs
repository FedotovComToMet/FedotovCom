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
namespace Students

{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            SE.SaveChanges();
            MF = MainFrame;
            MF.Navigate(new Page1());

        }

        private void SuperCostil(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.RightAlt)
            {
                MessageBox.Show("введены неверные данные");
            }
            if (e.Key == Key.PageUp)
              {
                MessageBox.Show("неверные данные");
            }  
        }
    }
}