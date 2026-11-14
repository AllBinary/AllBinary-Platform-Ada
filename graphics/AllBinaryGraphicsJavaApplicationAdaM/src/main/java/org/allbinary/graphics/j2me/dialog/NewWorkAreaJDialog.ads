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
limited with org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package;
package org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References is
   type NewWorkAreaJDialog_Access is access all org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package.NewWorkAreaJDialog'Class;
   type NewWorkAreaJDialog_Access_Array is array (Natural range <>) of NewWorkAreaJDialog_Access;
   type NewWorkAreaJDialog_Access_Array_Access is access all NewWorkAreaJDialog_Access_Array;
   type NewWorkAreaJDialog_Access_Array_Access_Array is array (Natural range <>) of NewWorkAreaJDialog_Access_Array_Access;
   type NewWorkAreaJDialog_Access_Array_Access_Array_Access is access all NewWorkAreaJDialog_Access_Array_Access_Array;
   type NewWorkAreaJDialog_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NewWorkAreaJDialog_Access_Array_Access;
   end record;
   function Java_Box (Value : NewWorkAreaJDialog_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NewWorkAreaJDialog_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NewWorkAreaJDialog_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NewWorkAreaJDialog_Access_Array_Access is (if Value /= null and then Value.all in NewWorkAreaJDialog_Access_Array_Object'Class then NewWorkAreaJDialog_Access_Array_Object'Class (Value.all).Value else null);
   type NewWorkAreaJDialog_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NewWorkAreaJDialog_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NewWorkAreaJDialog_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NewWorkAreaJDialog_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NewWorkAreaJDialog_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NewWorkAreaJDialog_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NewWorkAreaJDialog_Access_Array_Access_Array_Object'Class then NewWorkAreaJDialog_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References;

with org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References;
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
limited with org.allbinary.graphics.j2me.MyFrame_Package;
with org.allbinary.graphics.j2me.MyFrame_Package_References;
--  with java.awt.Frame_Package; use java.awt.Frame_Package;
--  with java.awt.event.WindowAdapter_Package; use java.awt.event.WindowAdapter_Package;
--  with java.awt.event.WindowEvent_Package; use java.awt.event.WindowEvent_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
limited with org.allbinary.graphics.j2me.dialog.Dimension_Package;
with org.allbinary.graphics.j2me.dialog.Dimension_Package_References;
limited with org.allbinary.graphics.j2me.dialog.JTextField_Package;
with org.allbinary.graphics.j2me.dialog.JTextField_Package_References;

package org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package is

   package MyFrame_Package renames Standard.org.allbinary.graphics.j2me.MyFrame_Package;
   package Reference_Types is
   subtype MyFrame_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access;
   use type MyFrame_Access;
   subtype MyFrame_Access_Array is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array;
   use type MyFrame_Access_Array;
   subtype MyFrame_Access_Array_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access;
   use type MyFrame_Access_Array_Access;
   subtype MyFrame_Access_Array_Access_Array is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access_Array;
   use type MyFrame_Access_Array_Access_Array;
   subtype MyFrame_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access_Array_Access;
   use type MyFrame_Access_Array_Access_Array_Access;
   subtype Dimension_Access is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access;
   use type Dimension_Access;
   subtype Dimension_Access_Array is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access_Array;
   use type Dimension_Access_Array;
   subtype Dimension_Access_Array_Access is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access_Array_Access;
   use type Dimension_Access_Array_Access;
   subtype Dimension_Access_Array_Access_Array is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access_Array_Access_Array;
   use type Dimension_Access_Array_Access_Array;
   subtype Dimension_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access_Array_Access_Array_Access;
   use type Dimension_Access_Array_Access_Array_Access;
   subtype JTextField_Access is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access;
   use type JTextField_Access;
   subtype JTextField_Access_Array is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access_Array;
   use type JTextField_Access_Array;
   subtype JTextField_Access_Array_Access is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access_Array_Access;
   use type JTextField_Access_Array_Access;
   subtype JTextField_Access_Array_Access_Array is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access_Array_Access_Array;
   use type JTextField_Access_Array_Access_Array;
   subtype JTextField_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access_Array_Access_Array_Access;
   use type JTextField_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NewWorkAreaJDialog_Access is org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.NewWorkAreaJDialog_Access;
   function "=" (Left, Right : NewWorkAreaJDialog_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References."=";
   subtype NewWorkAreaJDialog_Access_Array is org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.NewWorkAreaJDialog_Access_Array;
   function "=" (Left, Right : NewWorkAreaJDialog_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References."=";
   subtype NewWorkAreaJDialog_Access_Array_Access is org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.NewWorkAreaJDialog_Access_Array_Access;
   function "=" (Left, Right : NewWorkAreaJDialog_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References."=";
   function Java_Box (Value : NewWorkAreaJDialog_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.Java_Box;
   function Java_Unbox_NewWorkAreaJDialog_Access_Array (Value : access Java_Object'Class) return NewWorkAreaJDialog_Access_Array_Access renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.Java_Unbox_NewWorkAreaJDialog_Access_Array;
   subtype NewWorkAreaJDialog_Access_Array_Access_Array is org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.NewWorkAreaJDialog_Access_Array_Access_Array;
   function "=" (Left, Right : NewWorkAreaJDialog_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References."=";
   subtype NewWorkAreaJDialog_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.NewWorkAreaJDialog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NewWorkAreaJDialog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References."=";
   function Java_Box (Value : NewWorkAreaJDialog_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.Java_Box;
   function Java_Unbox_NewWorkAreaJDialog_Access_Array_Access_Array (Value : access Java_Object'Class) return NewWorkAreaJDialog_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package_References.Java_Unbox_NewWorkAreaJDialog_Access_Array_Access_Array;

   type NewWorkAreaJDialog is new Java_Object with record
      parent : MyFrame_Access;
      dimension : Dimension_Access;
      xSizeJTextField : JTextField_Access;
      ySizeJTextField : JTextField_Access;
      nameJTextField : JTextField_Access;
   end record;

   procedure Initialize (This : in out NewWorkAreaJDialog'Class; parent_Param : access MyFrame_Package.MyFrame'Class; modal : Boolean; dimension_Param : access Dimension_Package.Dimension'Class; newName : Unbounded_String);
   function Create (parent_Param : access MyFrame_Package.MyFrame'Class; modal : Boolean; dimension_Param : access Dimension_Package.Dimension'Class; newName : Unbounded_String) return NewWorkAreaJDialog_Access;
   procedure disposeNewDialog (This : in out NewWorkAreaJDialog);
   procedure initComponents (This : in out NewWorkAreaJDialog);
   procedure closeDialog (This : in out NewWorkAreaJDialog; evt_Param : access WindowEvent_Package.WindowEvent'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package;


