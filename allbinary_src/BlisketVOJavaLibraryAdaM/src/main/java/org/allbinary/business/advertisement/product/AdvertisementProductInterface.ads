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

limited with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
package org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References is
   type AdvertisementProductInterface_Access is access all org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package.AdvertisementProductInterface'Class;
   type AdvertisementProductInterface_Access_Array is array (Natural range <>) of AdvertisementProductInterface_Access;
   type AdvertisementProductInterface_Access_Array_Access is access all AdvertisementProductInterface_Access_Array;
   type AdvertisementProductInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementProductInterface_Access_Array_Access;
   type AdvertisementProductInterface_Access_Array_Access_Array_Access is access all AdvertisementProductInterface_Access_Array_Access_Array;
end org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References;

with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References;
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

package org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package is

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


   type AdvertisementProductInterface is interface;
   subtype AdvertisementProductInterface_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access;
   function "=" (Left, Right : AdvertisementProductInterface_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access_Array is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array;
   function "=" (Left, Right : AdvertisementProductInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access_Array_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementProductInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementProductInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementProductInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   function Java_Object_Access_From_AdvertisementProductInterface (Value : AdvertisementProductInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getType (This : in out AdvertisementProductInterface) return Unbounded_String is abstract;
   function getLink (This : in out AdvertisementProductInterface) return Unbounded_String is abstract;
   function getNumber (This : in out AdvertisementProductInterface) return Integer is abstract;
   function getTwoDimensionalConstraint (This : in out AdvertisementProductInterface) return TwoDimensionalConstraintInterface_Access is abstract;

end org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;


