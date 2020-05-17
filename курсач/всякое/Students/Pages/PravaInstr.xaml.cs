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
    /// Логика взаимодействия для PravaInstr.xaml
    /// </summary>
    public partial class PravaInstr : Page
    {
        public PravaInstr()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MF.Content = new PravaInstr();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MF.Content = new Page1();
        }
    }
}
