   M S B A M L   `   `   `  ����[  WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089Y@clr-namespace:System.Windows.Forms;assembly=System.Windows.FormsSystem.Windows.Forms  5   	    
ItemEditor   ItemEditor.MainWindowNew   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   No@clr-namespace:System.Windows.Forms;assembly=System.Windows.Forms     5   	   -   5          � Title$  MainWindowNew��5   	   $	��560��6   $	��753��6,    � 	Resources 5       �� 
TargetType �� Triggers �� Binding �� Path �� Value �� Property �� Value��%�   '��       �� 5   
   " ��6    5      �� 5	       6   �� $
 Name� 06<   .a�5
      ��  � ��
 �  ��63   5      5      5      .��5      � 	 � RowDefinitions	 5   
   �� 5      $	��26* �6   �� 5      $
��503* �6   .+�5   
   o� $��25��6   $	��Top=�6   $��2��63   .@�5      m� $��_File��6   .@�5      m� -   5        $
��Open��5      6)   m� 5      $��Close��6   �� 5      m� 5      $
��Save��6   {�.  6)   m� 5      $��
Save As...��6   {�.  6/   �� 5      m� 5      $
��Exit��6   5      m� 5      $��_Build��6   .@�5       m� -   5        $
��Make��5       6)   5!      5"      ]� 5$   
   $��1��6   .+�5%      ]� $
��Left=�6   $	��355��6.   .+�5&      �� 
 �� Orientation$
 
Horizontal=�6   $��Bottom=�66   .+�5'      �� -   5        $��
SaveButton��5'   .   $�� Save ��6   $	��5pxq�6@   $��20px 5px 20px 5pxq�6M   6i   �� 5(      -   5        $��ReloadButton��5(   .   $��Reload��6   $	��5pxq�6B   $��20px 5px 20px 5pxq�6O   �� 5)      -   5        $��	NewButton��5)   -   $�� New ��6   $	��5pxq�6>   $��20px 5px 20px 5pxq�6K   6g   �� 5*      -   5        $��DeleteButton��5*   .   $��Delete��6   $	��5pxq�6B   $��20px 5px 20px 5pxq�6O   5+      �� 5,      $��Data:��6   $
��18px(�6(   $	��Top=�68   �� 5-      -   5         ��Name$ DataListBox��5-      $��Stretch=�60   $	��5pxq�6L   ��6Y   �� ��5.      �� 5/      .R�50      �� ��6$   �� *Name+51      53      54      ]� 56      $	��5pxq�6   .+�57      �� $
 Vertical=�6   $��Bottom=�64   .+�58      �� $��Filter:��6   $
��18px(�6.   ]� 59      .+�5:      �� $��Name:��6    $��120px��60   $
��Left=�6>   �� 5;      -	   5        $��
FilterName��5;   "   $��22��64   6@   5<      ]� 5=      .+�5>      �� $��Level:��6    $��120px��61   $
��Left=�6?   �� 5?      -
   5        $��FilterLevel��5?   "   $��22��65   6A   5@      5A      ]� 5C      .+�5D      �� $��Edit:��6   $
��18px(�6,   $	��Top=�6<   7  1System.Windows.Forms.Integration.WindowsFormsHost  5E         Child. 5F      '   !System.Windows.Forms.PropertyGrid  -   5        propertyGrid��5F   )   5G      5`      5a      5b      5c      5d      