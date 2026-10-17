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
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
with org.allbinary.graphics.j2me.GraphicsException_Package; use org.allbinary.graphics.j2me.GraphicsException_Package;
with org.allbinary.graphics.j2me.MyFrame_Package; use org.allbinary.graphics.j2me.MyFrame_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
with org.allbinary.graphics.j2me.dialog.JDialog_Package; use org.allbinary.graphics.j2me.dialog.JDialog_Package;
with org.allbinary.graphics.j2me.dialog.Dimension_Package; use org.allbinary.graphics.j2me.dialog.Dimension_Package;
with org.allbinary.graphics.j2me.dialog.JTextField_Package; use org.allbinary.graphics.j2me.dialog.JTextField_Package;
with org.allbinary.graphics.j2me.dialog.JButton_Package; use org.allbinary.graphics.j2me.dialog.JButton_Package;
with org.allbinary.graphics.j2me.dialog.GridLayout_Package; use org.allbinary.graphics.j2me.dialog.GridLayout_Package;
with org.allbinary.graphics.j2me.dialog.JLabel_Package; use org.allbinary.graphics.j2me.dialog.JLabel_Package;

package org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package is

   package GraphicsException_Package renames Standard.org.allbinary.graphics.j2me.GraphicsException_Package;
   package MyFrame_Package renames Standard.org.allbinary.graphics.j2me.MyFrame_Package;
   package WorkAreaJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
   package WorkAreaJPanelInterface_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;

   type NewWorkAreaJDialog is tagged;
   type NewWorkAreaJDialog_Access is access all NewWorkAreaJDialog'Class;
   type NewWorkAreaJDialog_Access_Array is array (Natural range <>) of NewWorkAreaJDialog_Access;
   type NewWorkAreaJDialog_Access_Array_Access is access all NewWorkAreaJDialog_Access_Array;

   type NewWorkAreaJDialog is new JDialog with record
      parent : MyFrame_Access;
      dimension : Dimension_Access;
      xSizeJTextField : JTextField_Access;
      ySizeJTextField : JTextField_Access;
      nameJTextField : JTextField_Access;
   end record;

   procedure Initialize (This : in out NewWorkAreaJDialog'Class; parent_Param : access MyFrame'Class; modal : Boolean; dimension_Param : access Dimension'Class; newName : Unbounded_String);
   function Create (parent_Param : access MyFrame'Class; modal : Boolean; dimension_Param : access Dimension'Class; newName : Unbounded_String) return NewWorkAreaJDialog_Access;
   procedure disposeNewDialog (This : in out NewWorkAreaJDialog);
   procedure initComponents (This : in out NewWorkAreaJDialog);
   procedure closeDialog (This : in out NewWorkAreaJDialog; evt_Param : access WindowEvent'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package;


