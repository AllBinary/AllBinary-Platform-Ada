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

limited with org.allbinary.gui.dialog.BasicTextJDialog_Package;
package org.allbinary.gui.dialog.BasicTextJDialog_Package_References is
   type BasicTextJDialog_Access is access all org.allbinary.gui.dialog.BasicTextJDialog_Package.BasicTextJDialog'Class;
   type BasicTextJDialog_Access_Array is array (Natural range <>) of BasicTextJDialog_Access;
   type BasicTextJDialog_Access_Array_Access is access all BasicTextJDialog_Access_Array;
   type BasicTextJDialog_Access_Array_Access_Array is array (Natural range <>) of BasicTextJDialog_Access_Array_Access;
   type BasicTextJDialog_Access_Array_Access_Array_Access is access all BasicTextJDialog_Access_Array_Access_Array;
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
with org.allbinary.gui.dialog.JDialog_Package; use org.allbinary.gui.dialog.JDialog_Package;
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
   subtype BasicTextJDialog_Access_Array_Access_Array is org.allbinary.gui.dialog.BasicTextJDialog_Package_References.BasicTextJDialog_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTextJDialog_Access_Array_Access_Array) return Boolean renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References."=";
   subtype BasicTextJDialog_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.BasicTextJDialog_Package_References.BasicTextJDialog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTextJDialog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.BasicTextJDialog_Package_References."=";

   type BasicTextJDialog is new JDialog with record
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


