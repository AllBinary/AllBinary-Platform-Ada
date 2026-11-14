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
limited with org.allbinary.gui.dialog.BasicTextJDialog_Package;
package org.allbinary.gui.dialog.BasicTextJDialog_Package_References is
   type BasicTextJDialog_Access is access all org.allbinary.gui.dialog.BasicTextJDialog_Package.BasicTextJDialog'Class;
   type BasicTextJDialog_Access_Array is array (Natural range <>) of BasicTextJDialog_Access;
   type BasicTextJDialog_Access_Array_Access is access all BasicTextJDialog_Access_Array;
   type BasicTextJDialog_Access_Array_Access_Array is array (Natural range <>) of BasicTextJDialog_Access_Array_Access;
   type BasicTextJDialog_Access_Array_Access_Array_Access is access all BasicTextJDialog_Access_Array_Access_Array;
   type BasicTextJDialog_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTextJDialog_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTextJDialog_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTextJDialog_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTextJDialog_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTextJDialog_Access_Array_Access is (if Value /= null and then Value.all in BasicTextJDialog_Access_Array_Object'Class then BasicTextJDialog_Access_Array_Object'Class (Value.all).Value else null);
   type BasicTextJDialog_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTextJDialog_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTextJDialog_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTextJDialog_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTextJDialog_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTextJDialog_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicTextJDialog_Access_Array_Access_Array_Object'Class then BasicTextJDialog_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.gui.dialog.BasicTextJDialog_Package_References;

with org.allbinary.gui.dialog.BasicTextJDialog_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.EventQueue_Package; use java.awt.EventQueue_Package;
--  with java.awt.Frame_Package; use java.awt.Frame_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
--  with javax.swing.JFrame_Package; use javax.swing.JFrame_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.WindowConstants_Package; use javax.swing.WindowConstants_Package;
limited with org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package;
with org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package_References;

package org.allbinary.gui.dialog.BasicTextJDialog_Package is

   package Reference_Types is
   subtype CloseJDialogListenerInterface_Access is org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package_References.CloseJDialogListenerInterface_Access;
   use type CloseJDialogListenerInterface_Access;
   subtype CloseJDialogListenerInterface_Access_Array is org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package_References.CloseJDialogListenerInterface_Access_Array;
   use type CloseJDialogListenerInterface_Access_Array;
   subtype CloseJDialogListenerInterface_Access_Array_Access is org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package_References.CloseJDialogListenerInterface_Access_Array_Access;
   use type CloseJDialogListenerInterface_Access_Array_Access;
   subtype CloseJDialogListenerInterface_Access_Array_Access_Array is org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package_References.CloseJDialogListenerInterface_Access_Array_Access_Array;
   use type CloseJDialogListenerInterface_Access_Array_Access_Array;
   subtype CloseJDialogListenerInterface_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package_References.CloseJDialogListenerInterface_Access_Array_Access_Array_Access;
   use type CloseJDialogListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicTextJDialog_Access is org.allbinary.gui.dialog.BasicTextJDialog_Package_References.BasicTextJDialog_Access;
   function "=" (Left, Right : BasicTextJDialog_Access) return Boolean renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References."=";
   subtype BasicTextJDialog_Access_Array is org.allbinary.gui.dialog.BasicTextJDialog_Package_References.BasicTextJDialog_Access_Array;
   function "=" (Left, Right : BasicTextJDialog_Access_Array) return Boolean renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References."=";
   subtype BasicTextJDialog_Access_Array_Access is org.allbinary.gui.dialog.BasicTextJDialog_Package_References.BasicTextJDialog_Access_Array_Access;
   function "=" (Left, Right : BasicTextJDialog_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References."=";
   function Java_Box (Value : BasicTextJDialog_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References.Java_Box;
   function Java_Unbox_BasicTextJDialog_Access_Array (Value : access Java_Object'Class) return BasicTextJDialog_Access_Array_Access renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References.Java_Unbox_BasicTextJDialog_Access_Array;
   subtype BasicTextJDialog_Access_Array_Access_Array is org.allbinary.gui.dialog.BasicTextJDialog_Package_References.BasicTextJDialog_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTextJDialog_Access_Array_Access_Array) return Boolean renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References."=";
   subtype BasicTextJDialog_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.BasicTextJDialog_Package_References.BasicTextJDialog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTextJDialog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References."=";
   function Java_Box (Value : BasicTextJDialog_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References.Java_Box;
   function Java_Unbox_BasicTextJDialog_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicTextJDialog_Access_Array_Access_Array_Access renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References.Java_Unbox_BasicTextJDialog_Access_Array_Access_Array;

   type BasicTextJDialog is new Java_Object with record
      closeListenerInterface : CloseJDialogListenerInterface_Access;
      jButton1 : JButton_Access;
      textJLabel : JLabel_Access;
   end record;

   procedure Initialize (This : in out BasicTextJDialog'Class; parent_Param : access Frame_Package.Frame'Class; modal : Boolean; text : Unbounded_String);
   function Create (parent_Param : access Frame_Package.Frame'Class; modal : Boolean; text : Unbounded_String) return BasicTextJDialog_Access;
   procedure Initialize (This : in out BasicTextJDialog'Class; text : Unbounded_String);
   function Create (text : Unbounded_String) return BasicTextJDialog_Access;
   procedure setText (This : in out BasicTextJDialog; text : Unbounded_String);
   procedure addCloseListener (This : in out BasicTextJDialog; closeListenerInterface_Param : access CloseJDialogListenerInterface_Package.CloseJDialogListenerInterface'Class);
   procedure initComponents (This : in out BasicTextJDialog);
   procedure jButton1ActionPerformed (This : in out BasicTextJDialog; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.gui.dialog.BasicTextJDialog_Package;


