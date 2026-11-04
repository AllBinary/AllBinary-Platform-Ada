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

limited with org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;
package org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References is
   type AdvertisementWebsiteInterface_Access is access all org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package.AdvertisementWebsiteInterface'Class;
   type AdvertisementWebsiteInterface_Access_Array is array (Natural range <>) of AdvertisementWebsiteInterface_Access;
   type AdvertisementWebsiteInterface_Access_Array_Access is access all AdvertisementWebsiteInterface_Access_Array;
   type AdvertisementWebsiteInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementWebsiteInterface_Access_Array_Access;
   type AdvertisementWebsiteInterface_Access_Array_Access_Array_Access is access all AdvertisementWebsiteInterface_Access_Array_Access_Array;
end org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References;

with org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type AdvertisementWebsiteInterface is interface;
   subtype AdvertisementWebsiteInterface_Access is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access;
   function "=" (Left, Right : AdvertisementWebsiteInterface_Access) return Boolean renames org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References."=";
   subtype AdvertisementWebsiteInterface_Access_Array is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access_Array;
   function "=" (Left, Right : AdvertisementWebsiteInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References."=";
   subtype AdvertisementWebsiteInterface_Access_Array_Access is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementWebsiteInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References."=";
   subtype AdvertisementWebsiteInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementWebsiteInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References."=";
   subtype AdvertisementWebsiteInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementWebsiteInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References."=";
   function Java_Object_Access_From_AdvertisementWebsiteInterface (Value : AdvertisementWebsiteInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function toString (This : in out AdvertisementWebsiteInterface) return Unbounded_String is abstract;

end org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;


