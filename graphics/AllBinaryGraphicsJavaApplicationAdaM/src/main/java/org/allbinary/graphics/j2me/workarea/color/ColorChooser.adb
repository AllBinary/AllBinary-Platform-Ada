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


package body org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package is

   procedure Initialize_Fields (This : in out ColorChooser'Class) is
   begin
      null;
      This.jColorChooser1 := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorChooser'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create return ColorChooser_Access is
      This : constant ColorChooser_Access := new ColorChooser;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure initComponents (This : in out ColorChooser) is
   begin
        This.jColorChooser1 := JColorChooser_Package.Create;
        This.setLayout (BorderLayout_Package.Create);
        This.add (This.jColorChooser1, java_Package.awt.BorderLayout.CENTER);
   end initComponents;

end org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package;


