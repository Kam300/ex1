   M S B A M L   `   `   `  ����  WpfApp3    GraphicEditor.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$-  'Графический редактор��5   	   $	��450��6&   $	��800��63   .��5      � .+�5   
   �� -   5        $��DrawingCanvas��5      
�������6s   �� 5	   
    �� Orientation$ Vertical=�6   $	��Top=�6,   $��10q�6D   .+�5
      �� -   5        $��ColorComboBox��5
      $	��100��6,    �� SelectedIndex$ 0��68   .@�5      �� $��Черный��6   
 � Tag$ Black��60   �� 5      $��Красный��6   $	 Red��61   �� 5      $��Зеленый��6   $ Green��61   �� 5      $��
Синий��6   $
 Blue��6/   5      �� 5      -   5        $��BrushSizeSlider��5      $	��100��6,    � Minimum$ 1Q�68    � Maximum$ 10Q�6D    � Value$ 1Q�6Q   �� 5      $��Размер кисти��6   �� 5      $��Режим работы��6   	� 5      -   5        $��DrawMode��5      $��Рисование��6*    d� 	IsChecked$
 TrueY�6>   	� 5      -   5        $��EditMode��5      $"��Редактирование��6*   	� 5      -   5        $��
DeleteMode��5      $��Удаление��6,   5      5      5      