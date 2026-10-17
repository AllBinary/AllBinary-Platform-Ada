--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package is

   procedure Initialize_Fields (This : in out PropertiesJPanel'Class) is
   begin
      null;
      This.rotateJButton := null;
      This.copyVerticalJButton := null;
      This.leftJButton := null;
      This.rotateJPanel := null;
      This.angleJTextField := null;
      This.workAreaPropertiesJPanel := null;
      This.modifierJPanel := null;
      This.upJButton := null;
      This.jPanel8 := null;
      This.downJButton := null;
      This.jPanel7 := null;
      This.rightJButton := null;
      This.copyHorizontalJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out PropertiesJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create return PropertiesJPanel_Access is
      This : constant PropertiesJPanel_Access := new PropertiesJPanel;
   begin
      PropertiesJPanel_Package.Initialize (This.all);
      return This;
   end Create;

   procedure set (This : in out PropertiesJPanel; panel : JPanel_Access) is
   begin
        This.workAreaPropertiesJPanel.add (panel);
        This.repaint;
   end set;

   procedure initComponents (This : in out PropertiesJPanel) is
   begin
        This.workAreaPropertiesJPanel := JPanel_Package.Create;
        This.modifierJPanel := JPanel_Package.Create;
        This.copyVerticalJButton := JButton_Package.Create;
        This.copyHorizontalJButton := JButton_Package.Create;
        This.rotateJPanel := JPanel_Package.Create;
        This.rotateJButton := JButton_Package.Create;
        This.angleJTextField := JTextField_Package.Create;
        This.jPanel7 := JPanel_Package.Create;
        This.upJButton := JButton_Package.Create;
        This.downJButton := JButton_Package.Create;
        This.jPanel8 := JPanel_Package.Create;
        This.leftJButton := JButton_Package.Create;
        This.rightJButton := JButton_Package.Create;
        This.setLayout (GridLayout_Package.Create (2, 1));
        This.workAreaPropertiesJPanel.setLayout (GridLayout_Package.Create);
        This.add (This.workAreaPropertiesJPanel);
        This.modifierJPanel.setLayout (GridLayout_Package.Create (6, 0));
        This.copyVerticalJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.copyVerticalJButton.setText (To_Unbounded_String ("Copy Vertical"));
        This.modifierJPanel.add (This.copyVerticalJButton);
        This.copyHorizontalJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.copyHorizontalJButton.setText (To_Unbounded_String ("Copy Horizontal"));
        This.modifierJPanel.add (This.copyHorizontalJButton);
        This.rotateJPanel.setLayout (GridLayout_Package.Create (1, 2));
        This.rotateJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.rotateJButton.setText (To_Unbounded_String ("Rotate"));
        This.rotateJPanel.add (This.rotateJButton);
        This.angleJTextField.setText (To_Unbounded_String ("Angle"));
        This.rotateJPanel.add (This.angleJTextField);
        This.modifierJPanel.add (This.rotateJPanel);
        This.jPanel7.setLayout (GridLayout_Package.Create (1, 2));
        This.upJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.upJButton.setText (To_Unbounded_String ("Up"));
        This.jPanel7.add (This.upJButton);
        This.downJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.downJButton.setText (To_Unbounded_String ("Down"));
        This.jPanel7.add (This.downJButton);
        This.modifierJPanel.add (This.jPanel7);
        This.jPanel8.setLayout (GridLayout_Package.Create (1, 2));
        This.leftJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.leftJButton.setText (To_Unbounded_String ("Left"));
        This.jPanel8.add (This.leftJButton);
        This.rightJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.rightJButton.setText (To_Unbounded_String ("Right"));
        This.jPanel8.add (This.rightJButton);
        This.modifierJPanel.add (This.jPanel8);
        This.add (This.modifierJPanel);
   end initComponents;

end org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;


