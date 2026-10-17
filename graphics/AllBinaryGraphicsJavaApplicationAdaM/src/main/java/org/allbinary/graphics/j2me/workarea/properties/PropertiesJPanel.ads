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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.j2me.workarea.properties.JPanel_Package; use org.allbinary.graphics.j2me.workarea.properties.JPanel_Package;

package org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package is


   type PropertiesJPanel is tagged;
   type PropertiesJPanel_Access is access all PropertiesJPanel'Class;
   type PropertiesJPanel_Access_Array is array (Natural range <>) of PropertiesJPanel_Access;
   type PropertiesJPanel_Access_Array_Access is access all PropertiesJPanel_Access_Array;

   type PropertiesJPanel is new JPanel with record
      rotateJButton : JButton_Access;
      copyVerticalJButton : JButton_Access;
      leftJButton : JButton_Access;
      rotateJPanel : JPanel_Access;
      angleJTextField : JTextField_Access;
      workAreaPropertiesJPanel : JPanel_Access;
      modifierJPanel : JPanel_Access;
      upJButton : JButton_Access;
      jPanel8 : JPanel_Access;
      downJButton : JButton_Access;
      jPanel7 : JPanel_Access;
      rightJButton : JButton_Access;
      copyHorizontalJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out PropertiesJPanel'Class);
   function Create return PropertiesJPanel_Access;
   procedure set (This : in out PropertiesJPanel; panel : JPanel_Access);
   procedure initComponents (This : in out PropertiesJPanel);

end org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;


