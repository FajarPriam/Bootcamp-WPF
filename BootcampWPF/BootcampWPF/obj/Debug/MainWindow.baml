   M S B A M L   `   `   `  ����F  BBootcampWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:BootcampWPFBootcampWPF  5   	       BootcampWPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:BootcampWPF     5   	   -   5          � Title$  
MainWindow��5   	   $	��350��6   $	��591��6)   .��5
      �  � ColumnDefinitions 5   
   �� 5      .+�5   
   �� -   5         ��Name$ 
tabControl��5      $
��Left=�6)   $	��319��6D   $	��Top=�6Q   $	��583��6i   .@�5      �� $��Manage Supplier��6   .��5      � ���	#FFE5E5E5$��
0,-4,-1,-7q�6.   .+�5      �� -   5         ��Name$ 	NameLabel��5      $
��Name��6/   $
��Left=�6>   $��	10,10,0,0q�6Y   $	��Top=�6l   �� 5      -   5         ��Name$ NametextBox��5      $
��Left=�63   $��23��6~   $��	57,13,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��250��6�   6�   �� 5      -   5         ��Name$ 
Namebutton��5      $
��Left=�61   $��
492,16,0,0q�6L   $	��Top=�6`   $��76��6x   .��5      �� -   5         ��Name$ 	textBlock��5   $   $
��Wrap=�67   $
��Save��6K   5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ dataGrid��5      	   
IsReadOnly	 . $
��Left=�6C   $	��200��6^   $��	10,92,0,0q�6k   
   AutoGenerateColumns
 .  $	��Top=�6�   $	��558��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   ��  �� Path$ Id�6[     5      $
 Name��61    6?   �� $
 Name�6_     5      $ 	Join Date��61    6D   �� $ JoinDate�6h   5      �� 5      -   5        $ CounttextBox��5      $
��Left=�64   $��23��6O   $��
330,13,0,0q�6[   $
 Wrap=�6o   $�� ��6�   $	��Top=�6�   $��64��6�   �� 5      -	   5         ��Name$ comboBox��5      $
��Left=�61    �� DisplayMemberPath$
 Name��6u    �� SelectedValuePath$ Id��6�   $��	57,50,0,0q�6�   $	��Top=�6�   $	��106��6�   ��6L   �� $ getSupplier�6�   �� 5      -
   5        $ button��5      $��Search��6-   $
��Left=�6>   $��
493,52,0,0q�6Y   $	��Top=�6m   $��75��6�   �� 5       -   5        $ textBox��5       $
��Left=�6/   $��23��6J   $��
330,49,0,0q�6V   $
 Wrap=�6j   $�� ��6~   $	��Top=�6�   $	��120��6�    J� RenderTransformOrigin$ 
0.55,0.609&�6�   �� 5!      -   5        $ 	comboBox1��5!      $
��Left=�62   $��
187,50,0,0q�6M   $	��Top=�6a   $	��120��6y   5"      5#      �� 5$      $��Manage Item��6   $
��-2,0q�6+   .��5%      � ���	#FFE5E5E5 5&      �� 5'      5)      5*      5+      5,      5-      