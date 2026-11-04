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

limited with org.allbinary.business.advertisement.product.AdvertisementProduct_Package;
package org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References is
   type AdvertisementProduct_Access is access all org.allbinary.business.advertisement.product.AdvertisementProduct_Package.AdvertisementProduct'Class;
   type AdvertisementProduct_Access_Array is array (Natural range <>) of AdvertisementProduct_Access;
   type AdvertisementProduct_Access_Array_Access is access all AdvertisementProduct_Access_Array;
   type AdvertisementProduct_Access_Array_Access_Array is array (Natural range <>) of AdvertisementProduct_Access_Array_Access;
   type AdvertisementProduct_Access_Array_Access_Array_Access is access all AdvertisementProduct_Access_Array_Access_Array;
end org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References;

with org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References;
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
with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package; use org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;

package org.allbinary.business.advertisement.product.AdvertisementProduct_Package is

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


   subtype AdvertisementProduct_Access is org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References.AdvertisementProduct_Access;
   function "=" (Left, Right : AdvertisementProduct_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References."=";
   subtype AdvertisementProduct_Access_Array is org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References.AdvertisementProduct_Access_Array;
   function "=" (Left, Right : AdvertisementProduct_Access_Array) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References."=";
   subtype AdvertisementProduct_Access_Array_Access is org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References.AdvertisementProduct_Access_Array_Access;
   function "=" (Left, Right : AdvertisementProduct_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References."=";
   subtype AdvertisementProduct_Access_Array_Access_Array is org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References.AdvertisementProduct_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementProduct_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References."=";
   subtype AdvertisementProduct_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References.AdvertisementProduct_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementProduct_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProduct_Package_References."=";

   type AdvertisementProduct is new Java_Object and AdvertisementProductInterface with record
      type_Id : Unbounded_String;
      link : Unbounded_String;
      number : Integer;
      constraint : TwoDimensionalConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out AdvertisementProduct'Class);
   function Create return AdvertisementProduct_Access;
   function getType (This : in out AdvertisementProduct) return Unbounded_String;
   function getLink (This : in out AdvertisementProduct) return Unbounded_String;
   function getNumber (This : in out AdvertisementProduct) return Integer;
   function getTwoDimensionalConstraint (This : in out AdvertisementProduct) return TwoDimensionalConstraintInterface_Access;

end org.allbinary.business.advertisement.product.AdvertisementProduct_Package;


