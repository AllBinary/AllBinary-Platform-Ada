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

package org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package is

   package TwoDimensionalConstraintInterface_Package renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

   type AdvertisementImageInterface is interface;
   type AdvertisementImageInterface_Access is access all AdvertisementImageInterface'Class;
   type AdvertisementImageInterface_Access_Array is array (Natural range <>) of AdvertisementImageInterface_Access;
   type AdvertisementImageInterface_Access_Array_Access is access all AdvertisementImageInterface_Access_Array;
   function getFileName (This : in out AdvertisementImageInterface) return Unbounded_String is abstract;
   function getUrl (This : in out AdvertisementImageInterface) return Unbounded_String is abstract;
   function getTwoDimensionalConstraint (This : in out AdvertisementImageInterface) return TwoDimensionalConstraintInterface_Access is abstract;

end org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;


