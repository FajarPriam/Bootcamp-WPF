using BootcampWPF.Model;
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

namespace BootcampWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Bootcamp22MyContext _context = new Bootcamp22MyContext();
        Supplier supplier = new Supplier();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Namebutton_Click(object sender, RoutedEventArgs e)
        {
            //var name = NametextBox.Text;
            //HasiltextBox.Text = name;
            if (NametextBox.Text == "")
            {
                MessageBox.Show("Please Insert Name Supplier");
            }
            else
            {
                supplier.Name = NametextBox.Text;
                supplier.JoinDate = DateTimeOffset.Now.LocalDateTime;
                supplier.CreateDate = DateTimeOffset.Now.LocalDateTime;
                _context.Suppliers.Add(supplier);
                var result = _context.SaveChanges();
                if (result > 0)
                {
                    MessageBox.Show("Insert Success");
                    NametextBox.Text = "";
                }
                else
                {
                    MessageBox.Show("Insert Failed");
                }

            }
        }

        private void NametextBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            System.Text.RegularExpressions.Regex regex = new System.Text.RegularExpressions.Regex("^[a-zA-Z .]*$");
            e.Handled = !regex.IsMatch((sender as TextBox).Text.Insert((sender as TextBox).SelectionStart, e.Text));
        }

        private void NametextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            CounttextBox.Text = NametextBox.Text.Length.ToString();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            dataGrid.ItemsSource = _context.Suppliers.Where(x => x.IsDelete == false).ToList();
            comboBox.ItemsSource = _context.Suppliers.Where(x => x.IsDelete == false).ToList();
        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            object item = dataGrid.SelectedItem;
            NametextBox.Text = (dataGrid.SelectedCells[1].Column.GetCellContent(item) as TextBlock).Text;
        }
    }
}
