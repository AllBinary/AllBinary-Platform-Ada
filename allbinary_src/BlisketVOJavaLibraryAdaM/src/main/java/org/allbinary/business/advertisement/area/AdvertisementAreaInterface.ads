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

limited with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
package org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References is
   type AdvertisementAreaInterface_Access is access all org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package.AdvertisementAreaInterface'Class;
   type AdvertisementAreaInterface_Access_Array is array (Natural range <>) of AdvertisementAreaInterface_Access;
   type AdvertisementAreaInterface_Access_Array_Access is access all AdvertisementAreaInterface_Access_Array;
   type AdvertisementAreaInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementAreaInterface_Access_Array_Access;
   type AdvertisementAreaInterface_Access_Array_Access_Array_Access is access all AdvertisementAreaInterface_Access_Array_Access_Array;
end org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References;

with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References;

package org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package is

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


   type AdvertisementAreaInterface is interface;
   subtype AdvertisementAreaInterface_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access;
   function "=" (Left, Right : AdvertisementAreaInterface_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   subtype AdvertisementAreaInterface_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array;
   function "=" (Left, Right : AdvertisementAreaInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   subtype AdvertisementAreaInterface_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreaInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   subtype AdvertisementAreaInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementAreaInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   subtype AdvertisementAreaInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreaInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   function Java_Object_Access_From_AdvertisementAreaInterface (Value : AdvertisementAreaInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out AdvertisementAreaInterface) return Unbounded_String is abstract;
   function getStoreName (This : in out AdvertisementAreaInterface) return Unbounded_String is abstract;
   function getDescription (This : in out AdvertisementAreaInterface) return Unbounded_String is abstract;
   function getConstraints (This : in out AdvertisementAreaInterface) return AdvertisementAreaConstraintsInterface_Access is abstract;
   function getCampaign (This : in out AdvertisementAreaInterface) return Unbounded_String is abstract;
   procedure setName (This : in out AdvertisementAreaInterface; name : Unbounded_String) is abstract;
   procedure setStoreName (This : in out AdvertisementAreaInterface; storeName : Unbounded_String) is abstract;
   procedure setDescription (This : in out AdvertisementAreaInterface; description : Unbounded_String) is abstract;
   procedure setConstraints (This : in out AdvertisementAreaInterface; advertisementConstraintsInterface_Param : access AdvertisementAreaConstraintsInterface_Package.AdvertisementAreaConstraintsInterface'Class) is abstract;
   procedure setCampaign (This : in out AdvertisementAreaInterface; campaign : Unbounded_String) is abstract;

end org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;


