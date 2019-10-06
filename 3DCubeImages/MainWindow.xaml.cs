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
using System.Windows.Media.Media3D;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WinForms = System.Windows.Forms;
using System.Windows.Media.Animation;
using System.IO;

namespace _3DCubeImages
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        WinForms.FolderBrowserDialog fbd = new WinForms.FolderBrowserDialog();
        string[] files;
        Storyboard animation = new Storyboard();

        private Vector3D CreateNormal(Point3D p0, Point3D p1, Point3D p2)
        {
            Vector3D v0 = new Vector3D(p1.X - p0.X, p1.Y - p0.Y, p1.Z - p0.Z);
            Vector3D v1 = new Vector3D(p2.X - p1.X, p2.Y - p1.Y, p2.Z - p1.Z);
            return Vector3D.CrossProduct(v0, v1);
        }

        public void DisplayFolder()
        {
            string path = fbd.SelectedPath;
            files = System.IO.Directory.GetFiles(path);
            for (int x = 0; x < files.Length; x++)
            {
                    listFile1.Items.Add(files[x]);
            }
        }
        private void Button2_Click(object sender, RoutedEventArgs e)
        {
            if (fbd.ShowDialog() == System.Windows.Forms.DialogResult.OK) { DisplayFolder(); }
        }

        private void ListFile1_MouseUp(object sender, MouseButtonEventArgs e)
        {
            try
            {
                ImageSource image;
                image = new BitmapImage(new Uri(listFile1.SelectedItem.ToString()));
                imageBrush1.ImageSource = image;
            }
            catch(Exception ex) { MessageBox.Show(ex.Message, "3D_Cube", MessageBoxButton.OK, MessageBoxImage.Information); }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ImageSource image1;
            image1 = new BitmapImage(new Uri(Directory.GetCurrentDirectory() + @"\image.jpg".ToString()));
            imageBrush1.ImageSource = image1;
        }
    }
}
