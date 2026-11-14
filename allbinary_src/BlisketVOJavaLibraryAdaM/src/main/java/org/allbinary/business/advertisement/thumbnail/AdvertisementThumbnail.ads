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
limited with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package;
package org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References is
   type AdvertisementThumbnail_Access is access all org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package.AdvertisementThumbnail'Class;
   type AdvertisementThumbnail_Access_Array is array (Natural range <>) of AdvertisementThumbnail_Access;
   type AdvertisementThumbnail_Access_Array_Access is access all AdvertisementThumbnail_Access_Array;
   type AdvertisementThumbnail_Access_Array_Access_Array is array (Natural range <>) of AdvertisementThumbnail_Access_Array_Access;
   type AdvertisementThumbnail_Access_Array_Access_Array_Access is access all AdvertisementThumbnail_Access_Array_Access_Array;
   type AdvertisementThumbnail_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementThumbnail_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementThumbnail_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementThumbnail_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementThumbnail_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementThumbnail_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementThumbnail_Access_Array_Object'Class then AdvertisementThumbnail_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementThumbnail_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementThumbnail_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementThumbnail_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementThumbnail_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementThumbnail_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementThumbnail_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementThumbnail_Access_Array_Access_Array_Object'Class then AdvertisementThumbnail_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References;

with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References;
with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package; use org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;

package org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package is

   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
   package Reference_Types is
   subtype TwoDimensionalConstraintInterface_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access;
   use type TwoDimensionalConstraintInterface_Access;
   subtype TwoDimensionalConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array;
   use type TwoDimensionalConstraintInterface_Access_Array;
   subtype TwoDimensionalConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access;
   use type TwoDimensionalConstraintInterface_Access_Array_Access;
   subtype TwoDimensionalConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access_Array;
   use type TwoDimensionalConstraintInterface_Access_Array_Access_Array;
   subtype TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access;
   use type TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementThumbnail_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.AdvertisementThumbnail_Access;
   function "=" (Left, Right : AdvertisementThumbnail_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References."=";
   subtype AdvertisementThumbnail_Access_Array is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.AdvertisementThumbnail_Access_Array;
   function "=" (Left, Right : AdvertisementThumbnail_Access_Array) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References."=";
   subtype AdvertisementThumbnail_Access_Array_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.AdvertisementThumbnail_Access_Array_Access;
   function "=" (Left, Right : AdvertisementThumbnail_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References."=";
   function Java_Box (Value : AdvertisementThumbnail_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.Java_Box;
   function Java_Unbox_AdvertisementThumbnail_Access_Array (Value : access Java_Object'Class) return AdvertisementThumbnail_Access_Array_Access renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.Java_Unbox_AdvertisementThumbnail_Access_Array;
   subtype AdvertisementThumbnail_Access_Array_Access_Array is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.AdvertisementThumbnail_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementThumbnail_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References."=";
   subtype AdvertisementThumbnail_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.AdvertisementThumbnail_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementThumbnail_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References."=";
   function Java_Box (Value : AdvertisementThumbnail_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.Java_Box;
   function Java_Unbox_AdvertisementThumbnail_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementThumbnail_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package_References.Java_Unbox_AdvertisementThumbnail_Access_Array_Access_Array;

   type AdvertisementThumbnail is new Java_Object and AdvertisementThumbnailInterface with record
      imageFileName : Unbounded_String;
      imageUrl : Unbounded_String;
      constraint : TwoDimensionalConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out AdvertisementThumbnail'Class);
   function Create return AdvertisementThumbnail_Access;
   function getFileName (This : in out AdvertisementThumbnail) return Unbounded_String;
   function getUrl (This : in out AdvertisementThumbnail) return Unbounded_String;
   function getTwoDimensionalConstraint (This : in out AdvertisementThumbnail) return TwoDimensionalConstraintInterface_Access;

end org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package;


