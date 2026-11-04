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

limited with org.allbinary.business.advertisement.image.AdvertisementImage_Package;
package org.allbinary.business.advertisement.image.AdvertisementImage_Package_References is
   type AdvertisementImage_Access is access all org.allbinary.business.advertisement.image.AdvertisementImage_Package.AdvertisementImage'Class;
   type AdvertisementImage_Access_Array is array (Natural range <>) of AdvertisementImage_Access;
   type AdvertisementImage_Access_Array_Access is access all AdvertisementImage_Access_Array;
   type AdvertisementImage_Access_Array_Access_Array is array (Natural range <>) of AdvertisementImage_Access_Array_Access;
   type AdvertisementImage_Access_Array_Access_Array_Access is access all AdvertisementImage_Access_Array_Access_Array;
end org.allbinary.business.advertisement.image.AdvertisementImage_Package_References;

with org.allbinary.business.advertisement.image.AdvertisementImage_Package_References;
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
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package; use org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;

package org.allbinary.business.advertisement.image.AdvertisementImage_Package is

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


   subtype AdvertisementImage_Access is org.allbinary.business.advertisement.image.AdvertisementImage_Package_References.AdvertisementImage_Access;
   function "=" (Left, Right : AdvertisementImage_Access) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImage_Package_References."=";
   subtype AdvertisementImage_Access_Array is org.allbinary.business.advertisement.image.AdvertisementImage_Package_References.AdvertisementImage_Access_Array;
   function "=" (Left, Right : AdvertisementImage_Access_Array) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImage_Package_References."=";
   subtype AdvertisementImage_Access_Array_Access is org.allbinary.business.advertisement.image.AdvertisementImage_Package_References.AdvertisementImage_Access_Array_Access;
   function "=" (Left, Right : AdvertisementImage_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImage_Package_References."=";
   subtype AdvertisementImage_Access_Array_Access_Array is org.allbinary.business.advertisement.image.AdvertisementImage_Package_References.AdvertisementImage_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementImage_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImage_Package_References."=";
   subtype AdvertisementImage_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.image.AdvertisementImage_Package_References.AdvertisementImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementImage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImage_Package_References."=";

   type AdvertisementImage is new Java_Object and AdvertisementImageInterface with record
      imageFileName : Unbounded_String;
      imageUrl : Unbounded_String;
      constraint : TwoDimensionalConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out AdvertisementImage'Class);
   function Create return AdvertisementImage_Access;
   function getFileName (This : in out AdvertisementImage) return Unbounded_String;
   function getUrl (This : in out AdvertisementImage) return Unbounded_String;
   function getTwoDimensionalConstraint (This : in out AdvertisementImage) return TwoDimensionalConstraintInterface_Access;

end org.allbinary.business.advertisement.image.AdvertisementImage_Package;


