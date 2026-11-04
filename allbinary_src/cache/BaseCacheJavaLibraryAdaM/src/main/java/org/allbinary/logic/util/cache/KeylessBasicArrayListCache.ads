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

limited with org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package;
package org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References is
   type KeylessBasicArrayListCache_Access is access all org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package.KeylessBasicArrayListCache'Class;
   type KeylessBasicArrayListCache_Access_Array is array (Natural range <>) of KeylessBasicArrayListCache_Access;
   type KeylessBasicArrayListCache_Access_Array_Access is access all KeylessBasicArrayListCache_Access_Array;
   type KeylessBasicArrayListCache_Access_Array_Access_Array is array (Natural range <>) of KeylessBasicArrayListCache_Access_Array_Access;
   type KeylessBasicArrayListCache_Access_Array_Access_Array_Access is access all KeylessBasicArrayListCache_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References;

with org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package; use org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package;

package org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype KeylessBasicArrayListCache_Access is org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References.KeylessBasicArrayListCache_Access;
   function "=" (Left, Right : KeylessBasicArrayListCache_Access) return Boolean renames org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References."=";
   subtype KeylessBasicArrayListCache_Access_Array is org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References.KeylessBasicArrayListCache_Access_Array;
   function "=" (Left, Right : KeylessBasicArrayListCache_Access_Array) return Boolean renames org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References."=";
   subtype KeylessBasicArrayListCache_Access_Array_Access is org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References.KeylessBasicArrayListCache_Access_Array_Access;
   function "=" (Left, Right : KeylessBasicArrayListCache_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References."=";
   subtype KeylessBasicArrayListCache_Access_Array_Access_Array is org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References.KeylessBasicArrayListCache_Access_Array_Access_Array;
   function "=" (Left, Right : KeylessBasicArrayListCache_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References."=";
   subtype KeylessBasicArrayListCache_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References.KeylessBasicArrayListCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeylessBasicArrayListCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package_References."=";

   type KeylessBasicArrayListCache is new IndexedBasicArrayListCache with record
      logUtil : LogUtil_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;

   procedure Initialize (This : in out KeylessBasicArrayListCache'Class);
   function Create return KeylessBasicArrayListCache_Access;
   function get (This : in out KeylessBasicArrayListCache) return BasicArrayList_Access;
   procedure clear (This : in out KeylessBasicArrayListCache);
   function log (This : in out KeylessBasicArrayListCache) return Unbounded_String;

end org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package;


