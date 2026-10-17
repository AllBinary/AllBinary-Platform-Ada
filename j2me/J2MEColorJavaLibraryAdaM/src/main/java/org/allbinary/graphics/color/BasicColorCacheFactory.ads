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

package org.allbinary.graphics.color.BasicColorCacheFactory_Package is

   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type BasicColorCacheFactory is tagged;
   type BasicColorCacheFactory_Access is access all BasicColorCacheFactory'Class;
   type BasicColorCacheFactory_Access_Array is array (Natural range <>) of BasicColorCacheFactory_Access;
   type BasicColorCacheFactory_Access_Array_Access is access all BasicColorCacheFactory_Access_Array;

   type BasicColorCacheFactory is new Java_Object with record
      hashtable : ABHashtable_Access;
   end record;
   instance : BasicColorCacheFactory_Access;

   procedure Initialize (This : in out BasicColorCacheFactory'Class);
   function Create return BasicColorCacheFactory_Access;
   function getInstance return BasicColorCacheFactory_Access;
   procedure getInstance;
   procedure add (This : in out BasicColorCacheFactory; basicDefaultColor : BasicColor_Access);
   function getAndOrCreate (This : in out BasicColorCacheFactory; integer_Id : Integer) return BasicColor_Access;
   procedure getAndOrCreate (This : in out BasicColorCacheFactory; integer_Id : Integer);

end org.allbinary.graphics.color.BasicColorCacheFactory_Package;


