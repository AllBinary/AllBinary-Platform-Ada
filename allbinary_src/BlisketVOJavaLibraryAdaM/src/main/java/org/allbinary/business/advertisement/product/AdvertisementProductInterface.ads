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

package org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package is

   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

   type AdvertisementProductInterface is interface;
   type AdvertisementProductInterface_Access is access all AdvertisementProductInterface'Class;
   type AdvertisementProductInterface_Access_Array is array (Natural range <>) of AdvertisementProductInterface_Access;
   type AdvertisementProductInterface_Access_Array_Access is access all AdvertisementProductInterface_Access_Array;
   type AdvertisementProductInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementProductInterface_Access_Array_Access;
   type AdvertisementProductInterface_Access_Array_Access_Array_Access is access all AdvertisementProductInterface_Access_Array_Access_Array;
   function getType (This : in out AdvertisementProductInterface) return Unbounded_String is abstract;
   function getLink (This : in out AdvertisementProductInterface) return Unbounded_String is abstract;
   function getNumber (This : in out AdvertisementProductInterface) return Integer is abstract;
   function getTwoDimensionalConstraint (This : in out AdvertisementProductInterface) return TwoDimensionalConstraintInterface_Access is abstract;

end org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;


