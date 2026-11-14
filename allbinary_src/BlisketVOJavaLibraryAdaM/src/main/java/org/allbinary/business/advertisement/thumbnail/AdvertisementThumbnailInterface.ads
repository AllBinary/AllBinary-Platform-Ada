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
limited with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
package org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References is
   type AdvertisementThumbnailInterface_Access is access all org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package.AdvertisementThumbnailInterface'Class;
   type AdvertisementThumbnailInterface_Access_Array is array (Natural range <>) of AdvertisementThumbnailInterface_Access;
   type AdvertisementThumbnailInterface_Access_Array_Access is access all AdvertisementThumbnailInterface_Access_Array;
   type AdvertisementThumbnailInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementThumbnailInterface_Access_Array_Access;
   type AdvertisementThumbnailInterface_Access_Array_Access_Array_Access is access all AdvertisementThumbnailInterface_Access_Array_Access_Array;
   type AdvertisementThumbnailInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementThumbnailInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementThumbnailInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementThumbnailInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementThumbnailInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementThumbnailInterface_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementThumbnailInterface_Access_Array_Object'Class then AdvertisementThumbnailInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementThumbnailInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementThumbnailInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementThumbnailInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementThumbnailInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementThumbnailInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementThumbnailInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementThumbnailInterface_Access_Array_Access_Array_Object'Class then AdvertisementThumbnailInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References;

with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package; use org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;

package org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package is

   package AdvertisementImageInterface_Package renames Standard.org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type AdvertisementThumbnailInterface is interface and AdvertisementImageInterface;
   subtype AdvertisementThumbnailInterface_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   subtype AdvertisementThumbnailInterface_Access_Array is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   subtype AdvertisementThumbnailInterface_Access_Array_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   function Java_Box (Value : AdvertisementThumbnailInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementThumbnailInterface_Access_Array (Value : access Java_Object'Class) return AdvertisementThumbnailInterface_Access_Array_Access renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.Java_Unbox_AdvertisementThumbnailInterface_Access_Array;
   subtype AdvertisementThumbnailInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   subtype AdvertisementThumbnailInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   function Java_Box (Value : AdvertisementThumbnailInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementThumbnailInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementThumbnailInterface_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.Java_Unbox_AdvertisementThumbnailInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AdvertisementThumbnailInterface (Value : AdvertisementThumbnailInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;


