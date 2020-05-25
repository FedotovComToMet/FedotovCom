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
using System.Windows.Shapes;
using System.Net.Mail;
using System.Net;

namespace Students
{
    /// <summary>
    /// Логика взаимодействия для MailAdress.xaml
    /// </summary>
    public partial class MailAdress : Window
    {
        public MailAdress()
        {
            InitializeComponent();
        }
       

        private void Send(object sender, RoutedEventArgs e)
        {
            try 
            { 
            MailAddress from = new MailAddress("bog.ukit@mail.ru", "Дирик");

            MailAddress to = new MailAddress(adresspole.Text);

            MailMessage M = new MailMessage(from, to);
            M.Subject = "Характеристика студента МГУТУ им. К.Г. Разумовского";
            SmtpClient smtpClient = new SmtpClient("smtp.mail.ru", 587);
            smtpClient.Credentials = new NetworkCredential("bog.ukit@mail.ru", "92Alisa2012");
            M.Attachments.Add(new Attachment("ХарактеристикаСтудента.txt"));
            smtpClient.EnableSsl = true;
            
                smtpClient.Send(M);
            }
            catch(Exception E)
            {
                MessageBox.Show(E.Message);
                return;
            }
            this.Close();
            MessageBox.Show("Успешно");

        }

        private void close(object sender, RoutedEventArgs e)
        {
            this.Close();

        }

        private void adresspole_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
