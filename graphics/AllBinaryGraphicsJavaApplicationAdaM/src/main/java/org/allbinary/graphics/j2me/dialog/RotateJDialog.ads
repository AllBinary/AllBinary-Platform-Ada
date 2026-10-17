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
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package; use org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.j2me.dialog.JDialog_Package; use org.allbinary.graphics.j2me.dialog.JDialog_Package;

package org.allbinary.graphics.j2me.dialog.RotateJDialog_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package HashMapJDialogListenerInterface_Package renames Standard.org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type RotateJDialog is tagged;
   type RotateJDialog_Access is access all RotateJDialog'Class;
   type RotateJDialog_Access_Array is array (Natural range <>) of RotateJDialog_Access;
   type RotateJDialog_Access_Array_Access is access all RotateJDialog_Access_Array;

   type RotateJDialog is new JDialog with record
      logUtil : LogUtil_Access;
      hashMap : HashMap_Access;
      angleIncrementJTextField : JTextField_Access;
      jButton1 : JButton_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      jPanel1 : JPanel_Access;
      totalRotationJTextField : JTextField_Access;
   end record;

   procedure Initialize (This : in out RotateJDialog'Class; parent : Frame_Access; modal : Boolean);
   function Create (parent : Frame_Access; modal : Boolean) return RotateJDialog_Access;
   procedure initComponents (This : in out RotateJDialog);
   procedure jButton1ActionPerformed (This : in out RotateJDialog; evt : ActionEvent_Access);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;


