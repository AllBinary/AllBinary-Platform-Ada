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
limited with org.allbinary.business.advertisement.search.AdvertisementSearchData_Package;
package org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References is
   type AdvertisementSearchData_Access is access all org.allbinary.business.advertisement.search.AdvertisementSearchData_Package.AdvertisementSearchData'Class;
   type AdvertisementSearchData_Access_Array is array (Natural range <>) of AdvertisementSearchData_Access;
   type AdvertisementSearchData_Access_Array_Access is access all AdvertisementSearchData_Access_Array;
   type AdvertisementSearchData_Access_Array_Access_Array is array (Natural range <>) of AdvertisementSearchData_Access_Array_Access;
   type AdvertisementSearchData_Access_Array_Access_Array_Access is access all AdvertisementSearchData_Access_Array_Access_Array;
   type AdvertisementSearchData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementSearchData_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementSearchData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementSearchData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementSearchData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementSearchData_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementSearchData_Access_Array_Object'Class then AdvertisementSearchData_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementSearchData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementSearchData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementSearchData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementSearchData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementSearchData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementSearchData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementSearchData_Access_Array_Access_Array_Object'Class then AdvertisementSearchData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References;

with org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.advertisement.search.AdvertisementSearchData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementSearchData_Access is org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.AdvertisementSearchData_Access;
   function "=" (Left, Right : AdvertisementSearchData_Access) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References."=";
   subtype AdvertisementSearchData_Access_Array is org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.AdvertisementSearchData_Access_Array;
   function "=" (Left, Right : AdvertisementSearchData_Access_Array) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References."=";
   subtype AdvertisementSearchData_Access_Array_Access is org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.AdvertisementSearchData_Access_Array_Access;
   function "=" (Left, Right : AdvertisementSearchData_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References."=";
   function Java_Box (Value : AdvertisementSearchData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.Java_Box;
   function Java_Unbox_AdvertisementSearchData_Access_Array (Value : access Java_Object'Class) return AdvertisementSearchData_Access_Array_Access renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.Java_Unbox_AdvertisementSearchData_Access_Array;
   subtype AdvertisementSearchData_Access_Array_Access_Array is org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.AdvertisementSearchData_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementSearchData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References."=";
   subtype AdvertisementSearchData_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.AdvertisementSearchData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementSearchData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References."=";
   function Java_Box (Value : AdvertisementSearchData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.Java_Box;
   function Java_Unbox_AdvertisementSearchData_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementSearchData_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.search.AdvertisementSearchData_Package_References.Java_Unbox_AdvertisementSearchData_Access_Array_Access_Array;

   type AdvertisementSearchData is new Java_Object with record
      TITLE : Unbounded_String;
      PRICE : Unbounded_String;
      RELEVANCY : Unbounded_String;
      POPULARITY : Unbounded_String;
   end record;
   instance : AdvertisementSearchData_Access;

   procedure Initialize (This : in out AdvertisementSearchData'Class);
   function Create return AdvertisementSearchData_Access;
   function getInstance return AdvertisementSearchData_Access;

end org.allbinary.business.advertisement.search.AdvertisementSearchData_Package;


