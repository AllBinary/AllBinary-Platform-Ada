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
--  with java.io.File_Package; use java.io.File_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.gui.dialog.JDialog_Package; use org.allbinary.gui.dialog.JDialog_Package;
with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package; use org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;

package org.allbinary.gui.dialog.FileJDialog_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type FileJDialog is tagged;
   type FileJDialog_Access is access all FileJDialog'Class;
   type FileJDialog_Access_Array is array (Natural range <>) of FileJDialog_Access;
   type FileJDialog_Access_Array_Access is access all FileJDialog_Access_Array;

   type FileJDialog is new JDialog with record
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


