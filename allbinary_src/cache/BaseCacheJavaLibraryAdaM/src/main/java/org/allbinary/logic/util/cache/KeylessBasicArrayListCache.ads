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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package; use org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package;

package org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;

   type KeylessBasicArrayListCache is tagged;
   type KeylessBasicArrayListCache_Access is access all KeylessBasicArrayListCache'Class;
   type KeylessBasicArrayListCache_Access_Array is array (Natural range <>) of KeylessBasicArrayListCache_Access;
   type KeylessBasicArrayListCache_Access_Array_Access is access all KeylessBasicArrayListCache_Access_Array;

   type KeylessBasicArrayListCache is new IndexedBasicArrayListCache with record
      logUtil : LogUtil_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;

   procedure Initialize (This : in out KeylessBasicArrayListCache'Class);
   function Create return KeylessBasicArrayListCache_Access;
   function get (This : in out KeylessBasicArrayListCache) return BasicArrayList_Access;
   procedure get (This : in out KeylessBasicArrayListCache);
   procedure clear (This : in out KeylessBasicArrayListCache);
   function log (This : in out KeylessBasicArrayListCache) return Unbounded_String;
   procedure log (This : in out KeylessBasicArrayListCache);

end org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package;


