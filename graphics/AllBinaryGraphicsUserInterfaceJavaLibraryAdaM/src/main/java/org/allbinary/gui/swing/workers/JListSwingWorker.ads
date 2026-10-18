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
with org.allbinary.gui.swing.workers.SwingWorker_Package; use org.allbinary.gui.swing.workers.SwingWorker_Package;
with org.allbinary.gui.swing.workers.JList_Package; use org.allbinary.gui.swing.workers.JList_Package;
with org.allbinary.gui.swing.workers.ListModel_Package; use org.allbinary.gui.swing.workers.ListModel_Package;

package org.allbinary.gui.swing.workers.JListSwingWorker_Package is


   type JListSwingWorker is tagged;
   type JListSwingWorker_Access is access all JListSwingWorker'Class;
   type JListSwingWorker_Access_Array is array (Natural range <>) of JListSwingWorker_Access;
   type JListSwingWorker_Access_Array_Access is access all JListSwingWorker_Access_Array;
   type JListSwingWorker_Access_Array_Access_Array is array (Natural range <>) of JListSwingWorker_Access_Array_Access;
   type JListSwingWorker_Access_Array_Access_Array_Access is access all JListSwingWorker_Access_Array_Access_Array;

   type JListSwingWorker is new SwingWorker with record
      jList : JList_Access;
      listModel : ListModel_Access;
   end record;

   procedure Initialize (This : in out JListSwingWorker'Class; jList_Param : access JList_Package.JList'Class; listModel_Param : access ListModel_Package.ListModel'Class);
   function Create (jList_Param : access JList_Package.JList'Class; listModel_Param : access ListModel_Package.ListModel'Class) return JListSwingWorker_Access;
   function doInBackground (This : in out JListSwingWorker) return Java_Object_Access;
   procedure done (This : in out JListSwingWorker);
   function getJList (This : in out JListSwingWorker) return JList_Access;
   procedure setJList (This : in out JListSwingWorker; jList_Param : access JList_Package.JList'Class);
   function getListModel (This : in out JListSwingWorker) return ListModel_Access;
   procedure setListModel (This : in out JListSwingWorker; listModel_Param : access ListModel_Package.ListModel'Class);

end org.allbinary.gui.swing.workers.JListSwingWorker_Package;


