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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.graphics.j2me.dialog.JDialog_Package; use org.allbinary.graphics.j2me.dialog.JDialog_Package;

package org.allbinary.graphics.j2me.dialog.RotateJDialog_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type RotateJDialog is tagged;
   type RotateJDialog_Access is access all RotateJDialog'Class;
   type RotateJDialog_Access_Array is array (Natural range <>) of RotateJDialog_Access;
   type RotateJDialog_Access_Array_Access is access all RotateJDialog_Access_Array;
   type RotateJDialog_Access_Array_Access_Array is array (Natural range <>) of RotateJDialog_Access_Array_Access;
   type RotateJDialog_Access_Array_Access_Array_Access is access all RotateJDialog_Access_Array_Access_Array;

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

   procedure Initialize (This : in out RotateJDialog'Class; parent_Param : access Frame_Package.Frame'Class; modal : Boolean);
   function Create (parent_Param : access Frame_Package.Frame'Class; modal : Boolean) return RotateJDialog_Access;
   procedure initComponents (This : in out RotateJDialog);
   procedure jButton1ActionPerformed (This : in out RotateJDialog; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;


