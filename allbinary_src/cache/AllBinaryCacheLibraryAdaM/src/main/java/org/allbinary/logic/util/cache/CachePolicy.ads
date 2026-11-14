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
limited with org.allbinary.logic.util.cache.CachePolicy_Package;
package org.allbinary.logic.util.cache.CachePolicy_Package_References is
   type CachePolicy_Access is access all org.allbinary.logic.util.cache.CachePolicy_Package.CachePolicy'Class;
   type CachePolicy_Access_Array is array (Natural range <>) of CachePolicy_Access;
   type CachePolicy_Access_Array_Access is access all CachePolicy_Access_Array;
   type CachePolicy_Access_Array_Access_Array is array (Natural range <>) of CachePolicy_Access_Array_Access;
   type CachePolicy_Access_Array_Access_Array_Access is access all CachePolicy_Access_Array_Access_Array;
   type CachePolicy_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CachePolicy_Access_Array_Access;
   end record;
   function Java_Box (Value : CachePolicy_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CachePolicy_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CachePolicy_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CachePolicy_Access_Array_Access is (if Value /= null and then Value.all in CachePolicy_Access_Array_Object'Class then CachePolicy_Access_Array_Object'Class (Value.all).Value else null);
   type CachePolicy_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CachePolicy_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CachePolicy_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CachePolicy_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CachePolicy_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CachePolicy_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CachePolicy_Access_Array_Access_Array_Object'Class then CachePolicy_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.CachePolicy_Package_References;

with org.allbinary.logic.util.cache.CachePolicy_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.util.cache.CachePolicy_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CachePolicy_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access;
   function "=" (Left, Right : CachePolicy_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array;
   function "=" (Left, Right : CachePolicy_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access;
   function "=" (Left, Right : CachePolicy_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   function Java_Box (Value : CachePolicy_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.CachePolicy_Package_References.Java_Box;
   function Java_Unbox_CachePolicy_Access_Array (Value : access Java_Object'Class) return CachePolicy_Access_Array_Access renames org.allbinary.logic.util.cache.CachePolicy_Package_References.Java_Unbox_CachePolicy_Access_Array;
   subtype CachePolicy_Access_Array_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array;
   function "=" (Left, Right : CachePolicy_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CachePolicy_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   function Java_Box (Value : CachePolicy_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.CachePolicy_Package_References.Java_Box;
   function Java_Unbox_CachePolicy_Access_Array_Access_Array (Value : access Java_Object'Class) return CachePolicy_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.CachePolicy_Package_References.Java_Unbox_CachePolicy_Access_Array_Access_Array;

   type CachePolicy is new Java_Object with record
      name : Unbounded_String;
      maxTime : Long_Long_Integer;
      maxSize : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out CachePolicy'Class; name : Unbounded_String; maxTime : Long_Long_Integer; maxSize : Long_Long_Integer);
   function Create (name : Unbounded_String; maxTime : Long_Long_Integer; maxSize : Long_Long_Integer) return CachePolicy_Access;
   function getMaxTime (This : in out CachePolicy) return Long_Long_Integer;
   procedure setMaxTime (This : in out CachePolicy; maxTime : Long_Long_Integer);
   function getMaxSize (This : in out CachePolicy) return Long_Long_Integer;
   procedure setMaxSize (This : in out CachePolicy; maxSize : Long_Long_Integer);
   function getName (This : in out CachePolicy) return Unbounded_String;

end org.allbinary.logic.util.cache.CachePolicy_Package;


