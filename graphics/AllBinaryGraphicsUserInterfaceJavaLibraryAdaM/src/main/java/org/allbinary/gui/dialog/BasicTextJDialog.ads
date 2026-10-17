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
with org.allbinary.gui.dialog.JDialog_Package; use org.allbinary.gui.dialog.JDialog_Package;
with org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package; use org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package;

package org.allbinary.gui.dialog.BasicTextJDialog_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;

   type BasicTextJDialog is tagged;
   type BasicTextJDialog_Access is access all BasicTextJDialog'Class;
   type BasicTextJDialog_Access_Array is array (Natural range <>) of BasicTextJDialog_Access;
   type BasicTextJDialog_Access_Array_Access is access all BasicTextJDialog_Access_Array;

   type BasicTextJDialog is new JDialog with record
      closeListenerInterface : CloseJDialogListenerInterface_Access;
      jButton1 : JButton_Access;
      textJLabel : JLabel_Access;
   end record;

   procedure Initialize (This : in out BasicTextJDialog'Class; parent_Param : access Frame'Class; modal : Boolean; text : Unbounded_String);
   function Create (parent_Param : access Frame'Class; modal : Boolean; text : Unbounded_String) return BasicTextJDialog_Access;
   procedure Initialize (This : in out BasicTextJDialog'Class; text : Unbounded_String);
   function Create (text : Unbounded_String) return BasicTextJDialog_Access;
   procedure setText (This : in out BasicTextJDialog; text : Unbounded_String);
   procedure addCloseListener (This : in out BasicTextJDialog; closeListenerInterface_Param : access CloseJDialogListenerInterface'Class);
   procedure initComponents (This : in out BasicTextJDialog);
   procedure jButton1ActionPerformed (This : in out BasicTextJDialog; evt_Param : access ActionEvent'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.gui.dialog.BasicTextJDialog_Package;


