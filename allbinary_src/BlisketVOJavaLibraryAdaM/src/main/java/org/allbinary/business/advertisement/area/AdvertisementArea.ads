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
limited with org.allbinary.business.advertisement.area.AdvertisementArea_Package;
package org.allbinary.business.advertisement.area.AdvertisementArea_Package_References is
   type AdvertisementArea_Access is access all org.allbinary.business.advertisement.area.AdvertisementArea_Package.AdvertisementArea'Class;
   type AdvertisementArea_Access_Array is array (Natural range <>) of AdvertisementArea_Access;
   type AdvertisementArea_Access_Array_Access is access all AdvertisementArea_Access_Array;
   type AdvertisementArea_Access_Array_Access_Array is array (Natural range <>) of AdvertisementArea_Access_Array_Access;
   type AdvertisementArea_Access_Array_Access_Array_Access is access all AdvertisementArea_Access_Array_Access_Array;
   type AdvertisementArea_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementArea_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementArea_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementArea_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementArea_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementArea_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementArea_Access_Array_Object'Class then AdvertisementArea_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementArea_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementArea_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementArea_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementArea_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementArea_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementArea_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementArea_Access_Array_Access_Array_Object'Class then AdvertisementArea_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.area.AdvertisementArea_Package_References;

with org.allbinary.business.advertisement.area.AdvertisementArea_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
limited with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References;

package org.allbinary.business.advertisement.area.AdvertisementArea_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   subtype AdvertisementAreaConstraintsInterface_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access;
   use type AdvertisementAreaConstraintsInterface_Access;
   subtype AdvertisementAreaConstraintsInterface_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access_Array;
   use type AdvertisementAreaConstraintsInterface_Access_Array;
   subtype AdvertisementAreaConstraintsInterface_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access_Array_Access;
   use type AdvertisementAreaConstraintsInterface_Access_Array_Access;
   subtype AdvertisementAreaConstraintsInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access_Array_Access_Array;
   use type AdvertisementAreaConstraintsInterface_Access_Array_Access_Array;
   subtype AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access;
   use type AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementArea_Access is org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.AdvertisementArea_Access;
   function "=" (Left, Right : AdvertisementArea_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References."=";
   subtype AdvertisementArea_Access_Array is org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.AdvertisementArea_Access_Array;
   function "=" (Left, Right : AdvertisementArea_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References."=";
   subtype AdvertisementArea_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.AdvertisementArea_Access_Array_Access;
   function "=" (Left, Right : AdvertisementArea_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References."=";
   function Java_Box (Value : AdvertisementArea_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.Java_Box;
   function Java_Unbox_AdvertisementArea_Access_Array (Value : access Java_Object'Class) return AdvertisementArea_Access_Array_Access renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.Java_Unbox_AdvertisementArea_Access_Array;
   subtype AdvertisementArea_Access_Array_Access_Array is org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.AdvertisementArea_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementArea_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References."=";
   subtype AdvertisementArea_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.AdvertisementArea_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementArea_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References."=";
   function Java_Box (Value : AdvertisementArea_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.Java_Box;
   function Java_Unbox_AdvertisementArea_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementArea_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.area.AdvertisementArea_Package_References.Java_Unbox_AdvertisementArea_Access_Array_Access_Array;

   type AdvertisementArea is new Java_Object and AdvertisementAreaInterface with record
      name : Unbounded_String;
      storeName : Unbounded_String;
      description : Unbounded_String;
      advertisementAreaConstraintsInterface : AdvertisementAreaConstraintsInterface_Access;
      campaign : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdvertisementArea'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return AdvertisementArea_Access;
   function getName (This : in out AdvertisementArea) return Unbounded_String;
   function getStoreName (This : in out AdvertisementArea) return Unbounded_String;
   function getDescription (This : in out AdvertisementArea) return Unbounded_String;
   function getConstraints (This : in out AdvertisementArea) return AdvertisementAreaConstraintsInterface_Access;
   function getCampaign (This : in out AdvertisementArea) return Unbounded_String;
   procedure setName (This : in out AdvertisementArea; name : Unbounded_String);
   procedure setStoreName (This : in out AdvertisementArea; storeName : Unbounded_String);
   procedure setDescription (This : in out AdvertisementArea; description : Unbounded_String);
   procedure setConstraints (This : in out AdvertisementArea; advertisementConstraintsInterface_Param : access AdvertisementAreaConstraintsInterface_Package.AdvertisementAreaConstraintsInterface'Class);
   procedure setCampaign (This : in out AdvertisementArea; campaign : Unbounded_String);

end org.allbinary.business.advertisement.area.AdvertisementArea_Package;


