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
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaData_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;

package org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DisplayInBrowserContraints_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;
   package DisplayInBrowserContraintsInterface_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
   package TwoDimensionalConstraint_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;
   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type AdvertisementAreaConstraints is tagged;
   type AdvertisementAreaConstraints_Access is access all AdvertisementAreaConstraints'Class;
   type AdvertisementAreaConstraints_Access_Array is array (Natural range <>) of AdvertisementAreaConstraints_Access;
   type AdvertisementAreaConstraints_Access_Array_Access is access all AdvertisementAreaConstraints_Access_Array;

   type AdvertisementAreaConstraints is new AdvertisementAreaConstraintsInterface with record
      displayInBrowserContraintsInterface : DisplayInBrowserContraintsInterface_Access;
      twoDimensionConstraintsInterface : TwoDimensionalConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out AdvertisementAreaConstraints'Class; document : Document_Access);
   function Create (document : Document_Access) return AdvertisementAreaConstraints_Access;
   procedure setDisplayInBrowserContraints (This : in out AdvertisementAreaConstraints; displayInBrowserContraintsInterface : DisplayInBrowserContraintsInterface_Access);
   procedure getTwoDimensionContraints (This : in out AdvertisementAreaConstraints; twoDimensionConstraintsInterface : TwoDimensionalConstraintInterface_Access);
   function getDisplayInBrowserContraints (This : in out AdvertisementAreaConstraints) return DisplayInBrowserContraintsInterface_Access;
   function getTwoDimensionContraints (This : in out AdvertisementAreaConstraints) return TwoDimensionalConstraintInterface_Access;

end org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package;


