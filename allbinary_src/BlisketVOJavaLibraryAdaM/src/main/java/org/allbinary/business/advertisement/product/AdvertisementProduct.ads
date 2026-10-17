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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package; use org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;

package org.allbinary.business.advertisement.product.AdvertisementProduct_Package is

   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

   type AdvertisementProduct is tagged;
   type AdvertisementProduct_Access is access all AdvertisementProduct'Class;
   type AdvertisementProduct_Access_Array is array (Natural range <>) of AdvertisementProduct_Access;
   type AdvertisementProduct_Access_Array_Access is access all AdvertisementProduct_Access_Array;

   type AdvertisementProduct is new AdvertisementProductInterface with record
      type_Id : Unbounded_String;
      link : Unbounded_String;
      number : Integer;
      constraint : TwoDimensionalConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out AdvertisementProduct'Class);
   function Create return AdvertisementProduct_Access;
   function getType (This : in out AdvertisementProduct) return Unbounded_String;
   procedure getType (This : in out AdvertisementProduct);
   function getLink (This : in out AdvertisementProduct) return Unbounded_String;
   procedure getLink (This : in out AdvertisementProduct);
   function getNumber (This : in out AdvertisementProduct) return Integer;
   procedure getNumber (This : in out AdvertisementProduct);
   function getTwoDimensionalConstraint (This : in out AdvertisementProduct) return TwoDimensionalConstraintInterface_Access;
   procedure getTwoDimensionalConstraint (This : in out AdvertisementProduct);

end org.allbinary.business.advertisement.product.AdvertisementProduct_Package;


