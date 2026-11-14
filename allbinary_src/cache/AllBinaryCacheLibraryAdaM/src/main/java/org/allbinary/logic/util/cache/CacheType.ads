-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
limited with org.allbinary.logic.util.cache.CacheType_Package;
package org.allbinary.logic.util.cache.CacheType_Package_References is
   type CacheType_Access is access all org.allbinary.logic.util.cache.CacheType_Package.CacheType'Class;
   type CacheType_Access_Array is array (Natural range <>) of CacheType_Access;
   type CacheType_Access_Array_Access is access all CacheType_Access_Array;
   type CacheType_Access_Array_Access_Array is array (Natural range <>) of CacheType_Access_Array_Access;
   type CacheType_Access_Array_Access_Array_Access is access all CacheType_Access_Array_Access_Array;
   type CacheType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CacheType_Access_Array_Access;
   end record;
   function Java_Box (Value : CacheType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CacheType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CacheType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CacheType_Access_Array_Access is (if Value /= null and then Value.all in CacheType_Access_Array_Object'Class then CacheType_Access_Array_Object'Class (Value.all).Value else null);
   type CacheType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CacheType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CacheType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CacheType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CacheType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CacheType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CacheType_Access_Array_Access_Array_Object'Class then CacheType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.CacheType_Package_References;

with org.allbinary.logic.util.cache.CacheType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.util.cache.CacheType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CacheType_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access;
   function "=" (Left, Right : CacheType_Access) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   subtype CacheType_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array;
   function "=" (Left, Right : CacheType_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   subtype CacheType_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access;
   function "=" (Left, Right : CacheType_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   function Java_Box (Value : CacheType_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.CacheType_Package_References.Java_Box;
   function Java_Unbox_CacheType_Access_Array (Value : access Java_Object'Class) return CacheType_Access_Array_Access renames org.allbinary.logic.util.cache.CacheType_Package_References.Java_Unbox_CacheType_Access_Array;
   subtype CacheType_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array;
   function "=" (Left, Right : CacheType_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   subtype CacheType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   function Java_Box (Value : CacheType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.CacheType_Package_References.Java_Box;
   function Java_Unbox_CacheType_Access_Array_Access_Array (Value : access Java_Object'Class) return CacheType_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.CacheType_Package_References.Java_Unbox_CacheType_Access_Array_Access_Array;

   type CacheType is new Java_Object with record
      vendor : Unbounded_String;
      type_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out CacheType'Class; vendor : Unbounded_String; type_Id : Unbounded_String);
   function Create (vendor : Unbounded_String; type_Id : Unbounded_String) return CacheType_Access;
   function getVendor (This : in out CacheType) return Unbounded_String;
   function getType (This : in out CacheType) return Unbounded_String;
   function toString (This : in out CacheType) return Unbounded_String;

end org.allbinary.logic.util.cache.CacheType_Package;


