   M S B A M L   `   `   `  ����G  C3DCubeImages, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:_3DCubeImages_3DCubeImages  5   	       _3DCubeImages.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:_3DCubeImages     5   	   -   5          � Title$  
MainWindow��5   	   $	��480��6   $	��631��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      .+�5   
   �� $��25��6    � Minimum$ 0Q�6    � Maximum$	 360Q�6)    � Value 5      ��  �� ElementName$ rotate�� �� Path$ Angle�'� 5   
   $��1��6   $��	0,0,0,157q�6"   $y�Visible=�65    J� Effect 5      -  'System.Windows.Media.Effects.BlurEffect  5         Radius$
 0.01Q�6   	   
KernelType$		 Box=�6+   
   RenderingBias$
 Quality=�6<    '� Camera 5      =� 5       � Position$ 	1,2.5,5.51�6$    � LookDirection$ 0,-1.4,-3.55�69   x�5      g� 5       g� Content 5      t� 5      -   5        
ColorLight�� �� Color$ White��5   ?    t� 	Direction$ -1,-1,-25�6M   5      g� 5       5      � 5        � Geometry 5!      k� 5"   "    k� 	Positions1 �   �� �� �� ��  k� TriangleIndices. �$       k� TextureCoordinates �   5-       � Material 52      u� 53   "    u� Brush 54   &   �� 55   *   -   5        imageBrush1��55   5   57   #   59       g� 	Transform 5;      �� 5<      -   5        
myRotate3D�� �� CenterX$ 1Q�5<   A    �� CenterY$ 1Q�6M    �� CenterZ$	 0.5Q�6Y    �� Rotation 5=      �� 5>   "   -   5        
rotate�� �� Axis$ 0 1 05�5>   F   5@      5B       � Triggers 5E      :� 5F       :� RoutedEvent$ Viewport3D.Loaded��6   .[�5G      �� .��5H      �� .��5I      �� -   5         ��Name$ rotateAnimation��5I   2     �� 
TargetName$  
myRotate3D��5J      ! �� TargetProperty$! Rotation�5K      " g� AutoReverse" . # g� Duration$# 0:0:5D�5M      $ g� 	BeginTime$$ 0:0:30X�5N      % �� From% 5O   "   �� 5P   &   $ 0,1,05�6:   & �� Angle$
& -150Q�6G   	' �� To' 5R   "   �� 5S   &   $ 0,1,05�6:   $	& 360Q�6G   5U      �� 5W      -   5        ( ��Name$( ColorAnimation1��5W   -   $  
ColorLight��5X      $! Color�5Y      ) �� From$) PurpleX�5Z      	* �� To$* YellowX�6+   $# 0:0:1.5D�5[      " . + g� RepeatBehavior$+ Forever��5\   0   $$ 0:0:0X�5]      �� 5_      -   5        $( ColorAnimation2��5_   -   $  
ColorLight��5`      $! Color�5a      $) 	LightBlueX�5b      $* GreenX�6.   $# 0:0:1.5D�5c      " . $+ Forever��5d   0   $$ 0:0:7X�5e      �� 5g      -	   5        $( ColorAnimation3��5g   -   $  
ColorLight��5h      $! Color�5i      $) 	LightBlueX�5j      $* GreenX�6.   $# 0:0:1.5D�5k      " . $+ Forever��5l   0   $$ 0:5:0X�5m      5n      5o      5p      5r      �� 5t   
   -
   5        , ��Name$, 	listFile1��5t      $
��Left=�6'   $��	10,0,0,10q�6B   $��1��6U   $	��396��6b   $	��142��6�   $��Bottom=�6�   - �� View- 5u      �� 5v      .P�5w      �� 5x      5z      �� 5{   
   -   5        . ��Name$. button2��5{      $��GetList��6"   $
��Left=�64   $��456,360,0,0q�6O   $��1��6d   $	��Top=�6q   $	��110��6�   $��38��6�   6�   5}      5~      