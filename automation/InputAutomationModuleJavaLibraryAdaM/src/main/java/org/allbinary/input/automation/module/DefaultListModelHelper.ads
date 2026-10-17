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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package org.allbinary.input.automation.module.DefaultListModelHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type DefaultListModelHelper is tagged;
   type DefaultListModelHelper_Access is access all DefaultListModelHelper'Class;
   type DefaultListModelHelper_Access_Array is array (Natural range <>) of DefaultListModelHelper_Access;
   type DefaultListModelHelper_Access_Array_Access is access all DefaultListModelHelper_Access_Array;

   type DefaultListModelHelper is new Java_Object with record
      defaultListModel : DefaultListModel_Access;
      vector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out DefaultListModelHelper'Class);
   function Create return DefaultListModelHelper_Access;
   procedure initDefaultModelList (This : in out DefaultListModelHelper);
   function getListModel (This : in out DefaultListModelHelper) return ListModel_Access;
   procedure getListModel (This : in out DefaultListModelHelper);
   procedure add (This : in out DefaultListModelHelper; string_Id : Unbounded_String);
   procedure remove (This : in out DefaultListModelHelper; string_Id : Unbounded_String);

end org.allbinary.input.automation.module.DefaultListModelHelper_Package;


