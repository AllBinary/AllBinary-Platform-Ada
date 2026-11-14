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
limited with org.allbinary.logic.util.cache.BasicArrayListCacheable_Package;
package org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References is
   type BasicArrayListCacheable_Access is access all org.allbinary.logic.util.cache.BasicArrayListCacheable_Package.BasicArrayListCacheable'Class;
   type BasicArrayListCacheable_Access_Array is array (Natural range <>) of BasicArrayListCacheable_Access;
   type BasicArrayListCacheable_Access_Array_Access is access all BasicArrayListCacheable_Access_Array;
   type BasicArrayListCacheable_Access_Array_Access_Array is array (Natural range <>) of BasicArrayListCacheable_Access_Array_Access;
   type BasicArrayListCacheable_Access_Array_Access_Array_Access is access all BasicArrayListCacheable_Access_Array_Access_Array;
   type BasicArrayListCacheable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayListCacheable_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayListCacheable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayListCacheable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayListCacheable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayListCacheable_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayListCacheable_Access_Array_Object'Class then BasicArrayListCacheable_Access_Array_Object'Class (Value.all).Value else null);
   type BasicArrayListCacheable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayListCacheable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayListCacheable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayListCacheable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayListCacheable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayListCacheable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayListCacheable_Access_Array_Access_Array_Object'Class then BasicArrayListCacheable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References;

with org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.logic.util.cache.BasicArrayListCacheable_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicArrayListCacheable_Access is org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.BasicArrayListCacheable_Access;
   function "=" (Left, Right : BasicArrayListCacheable_Access) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References."=";
   subtype BasicArrayListCacheable_Access_Array is org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.BasicArrayListCacheable_Access_Array;
   function "=" (Left, Right : BasicArrayListCacheable_Access_Array) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References."=";
   subtype BasicArrayListCacheable_Access_Array_Access is org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.BasicArrayListCacheable_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListCacheable_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References."=";
   function Java_Box (Value : BasicArrayListCacheable_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.Java_Box;
   function Java_Unbox_BasicArrayListCacheable_Access_Array (Value : access Java_Object'Class) return BasicArrayListCacheable_Access_Array_Access renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.Java_Unbox_BasicArrayListCacheable_Access_Array;
   subtype BasicArrayListCacheable_Access_Array_Access_Array is org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.BasicArrayListCacheable_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListCacheable_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References."=";
   subtype BasicArrayListCacheable_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.BasicArrayListCacheable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListCacheable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References."=";
   function Java_Box (Value : BasicArrayListCacheable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.Java_Box;
   function Java_Unbox_BasicArrayListCacheable_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicArrayListCacheable_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.BasicArrayListCacheable_Package_References.Java_Unbox_BasicArrayListCacheable_Access_Array_Access_Array;

   type BasicArrayListCacheable is new BasicArrayListD and CacheableInterface with null record;

   procedure Initialize (This : in out BasicArrayListCacheable'Class);
   function Create return BasicArrayListCacheable_Access;
   function getKey (This : in out BasicArrayListCacheable) return Java_Object_Access;

end org.allbinary.logic.util.cache.BasicArrayListCacheable_Package;


