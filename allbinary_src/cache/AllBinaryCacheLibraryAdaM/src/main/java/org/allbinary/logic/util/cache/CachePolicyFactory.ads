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
limited with org.allbinary.logic.util.cache.CachePolicyFactory_Package;
package org.allbinary.logic.util.cache.CachePolicyFactory_Package_References is
   type CachePolicyFactory_Access is access all org.allbinary.logic.util.cache.CachePolicyFactory_Package.CachePolicyFactory'Class;
   type CachePolicyFactory_Access_Array is array (Natural range <>) of CachePolicyFactory_Access;
   type CachePolicyFactory_Access_Array_Access is access all CachePolicyFactory_Access_Array;
   type CachePolicyFactory_Access_Array_Access_Array is array (Natural range <>) of CachePolicyFactory_Access_Array_Access;
   type CachePolicyFactory_Access_Array_Access_Array_Access is access all CachePolicyFactory_Access_Array_Access_Array;
   type CachePolicyFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CachePolicyFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CachePolicyFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CachePolicyFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CachePolicyFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CachePolicyFactory_Access_Array_Access is (if Value /= null and then Value.all in CachePolicyFactory_Access_Array_Object'Class then CachePolicyFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CachePolicyFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CachePolicyFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CachePolicyFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CachePolicyFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CachePolicyFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CachePolicyFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CachePolicyFactory_Access_Array_Access_Array_Object'Class then CachePolicyFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.CachePolicyFactory_Package_References;

with org.allbinary.logic.util.cache.CachePolicyFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package_References;

package org.allbinary.logic.util.cache.CachePolicyFactory_Package is

   package Reference_Types is
   subtype CachePolicy_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access;
   use type CachePolicy_Access;
   subtype CachePolicy_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array;
   use type CachePolicy_Access_Array;
   subtype CachePolicy_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access;
   use type CachePolicy_Access_Array_Access;
   subtype CachePolicy_Access_Array_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array;
   use type CachePolicy_Access_Array_Access_Array;
   subtype CachePolicy_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array_Access;
   use type CachePolicy_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CachePolicyFactory_Access is org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.CachePolicyFactory_Access;
   function "=" (Left, Right : CachePolicyFactory_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References."=";
   subtype CachePolicyFactory_Access_Array is org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.CachePolicyFactory_Access_Array;
   function "=" (Left, Right : CachePolicyFactory_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References."=";
   subtype CachePolicyFactory_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.CachePolicyFactory_Access_Array_Access;
   function "=" (Left, Right : CachePolicyFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References."=";
   function Java_Box (Value : CachePolicyFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.Java_Box;
   function Java_Unbox_CachePolicyFactory_Access_Array (Value : access Java_Object'Class) return CachePolicyFactory_Access_Array_Access renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.Java_Unbox_CachePolicyFactory_Access_Array;
   subtype CachePolicyFactory_Access_Array_Access_Array is org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.CachePolicyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CachePolicyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References."=";
   subtype CachePolicyFactory_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.CachePolicyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CachePolicyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References."=";
   function Java_Box (Value : CachePolicyFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.Java_Box;
   function Java_Unbox_CachePolicyFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CachePolicyFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.CachePolicyFactory_Package_References.Java_Unbox_CachePolicyFactory_Access_Array_Access_Array;

   type CachePolicyFactory is new Java_Object with record
      NAME : Unbounded_String;
      MAX_TIME_THOUSAND_MAX : CachePolicy_Access;
      THIRTY_MINUTES_TEN_THOUSAND_MAX : CachePolicy_Access;
      THIRTY_MINUTES_FIFTY_THOUSAND_MAX : CachePolicy_Access;
      ONE_MINUTE_FIVE_MAX : CachePolicy_Access;
      ONE_MINUTE_TEN_MAX : CachePolicy_Access;
      ONE_MINUTE_ONE_HUNDRED_MAX : CachePolicy_Access;
   end record;
   instance : CachePolicyFactory_Access;

   procedure Initialize (This : in out CachePolicyFactory'Class);
   function Create return CachePolicyFactory_Access;
   function getInstance return CachePolicyFactory_Access;

end org.allbinary.logic.util.cache.CachePolicyFactory_Package;


