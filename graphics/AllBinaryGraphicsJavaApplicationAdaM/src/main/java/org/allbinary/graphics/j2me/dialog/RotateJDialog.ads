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

with AllBinary_Java;
limited with org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;
package org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References is
   type RotateJDialog_Access is access all org.allbinary.graphics.j2me.dialog.RotateJDialog_Package.RotateJDialog'Class;
   type RotateJDialog_Access_Array is array (Natural range <>) of RotateJDialog_Access;
   type RotateJDialog_Access_Array_Access is access all RotateJDialog_Access_Array;
   type RotateJDialog_Access_Array_Access_Array is array (Natural range <>) of RotateJDialog_Access_Array_Access;
   type RotateJDialog_Access_Array_Access_Array_Access is access all RotateJDialog_Access_Array_Access_Array;
   type RotateJDialog_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RotateJDialog_Access_Array_Access;
   end record;
   function Java_Box (Value : RotateJDialog_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RotateJDialog_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RotateJDialog_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RotateJDialog_Access_Array_Access is (if Value /= null and then Value.all in RotateJDialog_Access_Array_Object'Class then RotateJDialog_Access_Array_Object'Class (Value.all).Value else null);
   type RotateJDialog_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RotateJDialog_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RotateJDialog_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RotateJDialog_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RotateJDialog_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RotateJDialog_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RotateJDialog_Access_Array_Access_Array_Object'Class then RotateJDialog_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
--  with java.awt.EventQueue_Package; use java.awt.EventQueue_Package;
--  with java.awt.Frame_Package; use java.awt.Frame_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with java.awt.event.WindowAdapter_Package; use java.awt.event.WindowAdapter_Package;
--  with java.awt.event.WindowEvent_Package; use java.awt.event.WindowEvent_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
--  with javax.swing.JFrame_Package; use javax.swing.JFrame_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JTextField_Package; use javax.swing.JTextField_Package;
--  with javax.swing.LayoutStyle_Package; use javax.swing.LayoutStyle_Package;
--  with javax.swing.WindowConstants_Package; use javax.swing.WindowConstants_Package;

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
   function Java_Box (Value : RotateJDialog_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.Java_Box;
   function Java_Unbox_RotateJDialog_Access_Array (Value : access Java_Object'Class) return RotateJDialog_Access_Array_Access renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.Java_Unbox_RotateJDialog_Access_Array;
   subtype RotateJDialog_Access_Array_Access_Array is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array_Access_Array;
   function "=" (Left, Right : RotateJDialog_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References."=";
   subtype RotateJDialog_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotateJDialog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References."=";
   function Java_Box (Value : RotateJDialog_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.Java_Box;
   function Java_Unbox_RotateJDialog_Access_Array_Access_Array (Value : access Java_Object'Class) return RotateJDialog_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.Java_Unbox_RotateJDialog_Access_Array_Access_Array;

   type RotateJDialog is new Java_Object with record
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


