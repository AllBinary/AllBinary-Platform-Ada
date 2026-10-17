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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.resources.KeyValueFactory_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type KeyValueFactory is tagged;
   type KeyValueFactory_Access is access all KeyValueFactory'Class;
   type KeyValueFactory_Access_Array is array (Natural range <>) of KeyValueFactory_Access;
   type KeyValueFactory_Access_Array_Access is access all KeyValueFactory_Access_Array;

   type KeyValueFactory is new Java_Object with record
      MAP : ABHashtable_Access;
   end record;
   instance : KeyValueFactory_Access;

   procedure Initialize (This : in out KeyValueFactory'Class);
   function Create return KeyValueFactory_Access;
   function getInstance return KeyValueFactory_Access;
   procedure getInstance;
   function get (This : in out KeyValueFactory; key : Unbounded_String) return Unbounded_String;
   procedure get (This : in out KeyValueFactory; key : Unbounded_String);

end org.allbinary.resources.KeyValueFactory_Package;


