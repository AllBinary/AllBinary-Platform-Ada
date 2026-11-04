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

limited with org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;
package org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References is
   type RotateJDialog_Access is access all org.allbinary.graphics.j2me.dialog.RotateJDialog_Package.RotateJDialog'Class;
   type RotateJDialog_Access_Array is array (Natural range <>) of RotateJDialog_Access;
   type RotateJDialog_Access_Array_Access is access all RotateJDialog_Access_Array;
   type RotateJDialog_Access_Array_Access_Array is array (Natural range <>) of RotateJDialog_Access_Array_Access;
   type RotateJDialog_Access_Array_Access_Array_Access is access all RotateJDialog_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References;

with org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.graphics.j2me.dialog.JDialog_Package; use org.allbinary.graphics.j2me.dialog.JDialog_Package;

package org.allbinary.graphics.j2me.dialog.RotateJDialog_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RotateJDialog_Access is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access;
   function "=" (Left, Right : RotateJDialog_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References."=";
   subtype RotateJDialog_Access_Array is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array;
   function "=" (Left, Right : RotateJDialog_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References."=";
   subtype RotateJDialog_Access_Array_Access is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array_Access;
   function "=" (Left, Right : RotateJDialog_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References."=";
   subtype RotateJDialog_Access_Array_Access_Array is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array_Access_Array;
   function "=" (Left, Right : RotateJDialog_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References."=";
   subtype RotateJDialog_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotateJDialog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References."=";

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


