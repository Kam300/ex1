using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Shapes;

namespace GraphicEditor
{
    public partial class MainWindow : Window
    {
        private bool _isDrawing;
        private Point _startPoint;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e)
        {
            if (_isDrawing)
            {
                Point currentPoint = e.GetPosition(DrawingCanvas);
                DrawLine(_startPoint, currentPoint);
                _startPoint = currentPoint;
            }
        }

        private void Canvas_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (DrawMode.IsChecked == true)
            {
                _isDrawing = true;
                _startPoint = e.GetPosition(DrawingCanvas);
                Mouse.Capture(DrawingCanvas);
            }
        }

        private void Canvas_MouseUp(object sender, MouseButtonEventArgs e)
        {
            _isDrawing = false;
            Mouse.Capture(null);
        }

        private void DrawLine(Point start, Point end)
        {
            Line line = new Line
            {
                Stroke = (SolidColorBrush)new BrushConverter().ConvertFromString((ColorComboBox.SelectedItem as ComboBoxItem).Tag.ToString()),
                StrokeThickness = BrushSizeSlider.Value
            };
            line.X1 = start.X;
            line.Y1 = start.Y;
            line.X2 = end.X;
            line.Y2 = end.Y;

            DrawingCanvas.Children.Add(line);
        }
    }
}
