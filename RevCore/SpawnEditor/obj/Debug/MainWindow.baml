   M S B A M L   `   `   `  ����[  WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089Y@clr-namespace:System.Windows.Forms;assembly=System.Windows.FormsSystem.Windows.Forms  5   	    SpawnEditor   SpawnEditor.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   No@clr-namespace:System.Windows.Forms;assembly=System.Windows.Forms     5   	   -   5          � Title$  
MainWindow��5   	   $	��560��6   $	��753��6)   .��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   �� 5	      .+�5   
   o� $	��Top=�6   $��20��6'   .@�5      m� $��  File  ��6   $��20��6)   .@�5      m� -   5         m�Name$ MenuNew��5      $	��New��6,   69   m� 5      -   5        $ MenuOpen��5      $
��Open��6-   6;   m� 5      -   5        $ MenuSave��5      $
��Save��6-   6;   �� 5      m� 5      -   5        $ MenuExit��5      $
��Exit��6-   6;   5      5      ]� 5   
   $��1��6   .+�5      ]� $
��Left=�6   $	��355��6.   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Bottom=�66   .+�5      �� -   5        $��	AddButton��5   +   $	��Add��6   $	��5pxq�6<   $��20px 5px 20px 5pxq�6I    � Cursor$
 Hand��6}   �� 5      -   5        $��DeleteButton��5   .   $��Delete��6   $	��5pxq�6B   $��20px 5px 20px 5pxq�6O   $
 Hand��6�   5      �� 5      $��Data:��6   $
��18px(�6(   $	��Top=�68   �� 5      -   5         ��Name$ DataListBox��5      $��Stretch=�60   $	��5pxq�6L   ��6Y   �� ��5      �� 5      .R�5       �� ��6$   �� *Name+5!      5#      5$      ]� 5&      $	��5pxq�6   .+�5'      �� $ Vertical=�6   $��Bottom=�64   .+�5(      �� $��Filter:��6   $
��18px(�6.   ]� 5)      .+�5*      �� $��Name:��6    $��120px��60   $
��Left=�6>   �� 5+      -	   5        $��
FilterName��5+   "   $��22��64   5,      ]� 5-      .+�5.      �� $��Level:��6    $��120px��61   $
��Left=�6?   �� 5/      -
   5        $��FilterLevel��5/   "   $��22��65   50      51      ]� 53      .+�54      �� $��Edit:��6   $
��18px(�6,   $	��Top=�6<   7  1System.Windows.Forms.Integration.WindowsFormsHost  55         Child. 56      '   !System.Windows.Forms.PropertyGrid  -   5        propertyGrid��56   )   57      5P      5Q      5R      5S      5T      