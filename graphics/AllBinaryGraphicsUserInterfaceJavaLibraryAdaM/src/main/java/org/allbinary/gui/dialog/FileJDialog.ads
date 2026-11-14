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
limited with org.allbinary.gui.dialog.FileJDialog_Package;
package org.allbinary.gui.dialog.FileJDialog_Package_References is
   type FileJDialog_Access is access all org.allbinary.gui.dialog.FileJDialog_Package.FileJDialog'Class;
   type FileJDialog_Access_Array is array (Natural range <>) of FileJDialog_Access;
   type FileJDialog_Access_Array_Access is access all FileJDialog_Access_Array;
   type FileJDialog_Access_Array_Access_Array is array (Natural range <>) of FileJDialog_Access_Array_Access;
   type FileJDialog_Access_Array_Access_Array_Access is access all FileJDialog_Access_Array_Access_Array;
   type FileJDialog_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileJDialog_Access_Array_Access;
   end record;
   function Java_Box (Value : FileJDialog_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileJDialog_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileJDialog_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileJDialog_Access_Array_Access is (if Value /= null and then Value.all in FileJDialog_Access_Array_Object'Class then FileJDialog_Access_Array_Object'Class (Value.all).Value else null);
   type FileJDialog_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileJDialog_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileJDialog_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileJDialog_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileJDialog_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileJDialog_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileJDialog_Access_Array_Access_Array_Object'Class then FileJDialog_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.gui.dialog.FileJDialog_Package_References;

with org.allbinary.gui.dialog.FileJDialog_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
--  with java.awt.EventQueue_Package; use java.awt.EventQueue_Package;
--  with java.awt.Frame_Package; use java.awt.Frame_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
--  with javax.swing.JFileChooser_Package; use javax.swing.JFileChooser_Package;
--  with javax.swing.JFrame_Package; use javax.swing.JFrame_Package;
--  with javax.swing.WindowConstants_Package; use javax.swing.WindowConstants_Package;
limited with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References;

package org.allbinary.gui.dialog.FileJDialog_Package is

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
   subtype FileJDialogListenerInterface_Access is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access;
   use type FileJDialogListenerInterface_Access;
   subtype FileJDialogListenerInterface_Access_Array is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access_Array;
   use type FileJDialogListenerInterface_Access_Array;
   subtype FileJDialogListenerInterface_Access_Array_Access is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access_Array_Access;
   use type FileJDialogListenerInterface_Access_Array_Access;
   subtype FileJDialogListenerInterface_Access_Array_Access_Array is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access_Array_Access_Array;
   use type FileJDialogListenerInterface_Access_Array_Access_Array;
   subtype FileJDialogListenerInterface_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access_Array_Access_Array_Access;
   use type FileJDialogListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FileJDialog_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access;
   function "=" (Left, Right : FileJDialog_Access) return Boolean renames org.allbinary.gui.dialog.FileJDialog_Package_References."=";
   subtype FileJDialog_Access_Array is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array;
   function "=" (Left, Right : FileJDialog_Access_Array) return Boolean renames org.allbinary.gui.dialog.FileJDialog_Package_References."=";
   subtype FileJDialog_Access_Array_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access;
   function "=" (Left, Right : FileJDialog_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.FileJDialog_Package_References."=";
   function Java_Box (Value : FileJDialog_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.dialog.FileJDialog_Package_References.Java_Box;
   function Java_Unbox_FileJDialog_Access_Array (Value : access Java_Object'Class) return FileJDialog_Access_Array_Access renames org.allbinary.gui.dialog.FileJDialog_Package_References.Java_Unbox_FileJDialog_Access_Array;
   subtype FileJDialog_Access_Array_Access_Array is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access_Array;
   function "=" (Left, Right : FileJDialog_Access_Array_Access_Array) return Boolean renames org.allbinary.gui.dialog.FileJDialog_Package_References."=";
   subtype FileJDialog_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileJDialog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.FileJDialog_Package_References."=";
   function Java_Box (Value : FileJDialog_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.dialog.FileJDialog_Package_References.Java_Box;
   function Java_Unbox_FileJDialog_Access_Array_Access_Array (Value : access Java_Object'Class) return FileJDialog_Access_Array_Access_Array_Access renames org.allbinary.gui.dialog.FileJDialog_Package_References.Java_Unbox_FileJDialog_Access_Array_Access_Array;

   type FileJDialog is new Java_Object with record
      logUtil : LogUtil_Access;
      finishedListenerInterface : FileJDialogListenerInterface_Access;
      jFileChooser1 : JFileChooser_Access;
   end record;

   procedure Initialize (This : in out FileJDialog'Class);
   function Create return FileJDialog_Access;
   procedure Initialize (This : in out FileJDialog'Class; parent_Param : access Frame_Package.Frame'Class; modal : Boolean);
   function Create (parent_Param : access Frame_Package.Frame'Class; modal : Boolean) return FileJDialog_Access;
   procedure addFinishedListener (This : in out FileJDialog; finishedListenerInterface_Param : access FileJDialogListenerInterface_Package.FileJDialogListenerInterface'Class);
   procedure initComponents (This : in out FileJDialog);
   procedure jFileChooser1ActionPerformed (This : in out FileJDialog; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure main (args : Unbounded_String_Array_Access);
   function getJFileChooser1 (This : in out FileJDialog) return JFileChooser_Access;
   procedure setJFileChooser1 (This : in out FileJDialog; jFileChooser1_Param : access JFileChooser_Package.JFileChooser'Class);

end org.allbinary.gui.dialog.FileJDialog_Package;


