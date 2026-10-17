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
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

package org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package is

   package DisplayInBrowserContraintsInterface_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

   type AdvertisementAreaConstraintsInterface is interface;
   type AdvertisementAreaConstraintsInterface_Access is access all AdvertisementAreaConstraintsInterface'Class;
   type AdvertisementAreaConstraintsInterface_Access_Array is array (Natural range <>) of AdvertisementAreaConstraintsInterface_Access;
   type AdvertisementAreaConstraintsInterface_Access_Array_Access is access all AdvertisementAreaConstraintsInterface_Access_Array;
   function getDisplayInBrowserContraints (This : in out AdvertisementAreaConstraintsInterface) return DisplayInBrowserContraintsInterface_Access is abstract;
   function getTwoDimensionContraints (This : in out AdvertisementAreaConstraintsInterface) return TwoDimensionalConstraintInterface_Access is abstract;

end org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;


