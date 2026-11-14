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
limited with org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package;
package org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References is
   type AdvertisementAreaConstraints_Access is access all org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package.AdvertisementAreaConstraints'Class;
   type AdvertisementAreaConstraints_Access_Array is array (Natural range <>) of AdvertisementAreaConstraints_Access;
   type AdvertisementAreaConstraints_Access_Array_Access is access all AdvertisementAreaConstraints_Access_Array;
   type AdvertisementAreaConstraints_Access_Array_Access_Array is array (Natural range <>) of AdvertisementAreaConstraints_Access_Array_Access;
   type AdvertisementAreaConstraints_Access_Array_Access_Array_Access is access all AdvertisementAreaConstraints_Access_Array_Access_Array;
   type AdvertisementAreaConstraints_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementAreaConstraints_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementAreaConstraints_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementAreaConstraints_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementAreaConstraints_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementAreaConstraints_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementAreaConstraints_Access_Array_Object'Class then AdvertisementAreaConstraints_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementAreaConstraints_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementAreaConstraints_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementAreaConstraints_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementAreaConstraints_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementAreaConstraints_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementAreaConstraints_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementAreaConstraints_Access_Array_Access_Array_Object'Class then AdvertisementAreaConstraints_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References;

with org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References;
limited with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;

package org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package is

   package DisplayInBrowserContraintsInterface_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype DisplayInBrowserContraintsInterface_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access;
   use type DisplayInBrowserContraintsInterface_Access;
   subtype DisplayInBrowserContraintsInterface_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array;
   use type DisplayInBrowserContraintsInterface_Access_Array;
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access;
   use type DisplayInBrowserContraintsInterface_Access_Array_Access;
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   use type DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access;
   use type DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementAreaConstraints_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.AdvertisementAreaConstraints_Access;
   function "=" (Left, Right : AdvertisementAreaConstraints_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References."=";
   subtype AdvertisementAreaConstraints_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.AdvertisementAreaConstraints_Access_Array;
   function "=" (Left, Right : AdvertisementAreaConstraints_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References."=";
   subtype AdvertisementAreaConstraints_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.AdvertisementAreaConstraints_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreaConstraints_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References."=";
   function Java_Box (Value : AdvertisementAreaConstraints_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.Java_Box;
   function Java_Unbox_AdvertisementAreaConstraints_Access_Array (Value : access Java_Object'Class) return AdvertisementAreaConstraints_Access_Array_Access renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.Java_Unbox_AdvertisementAreaConstraints_Access_Array;
   subtype AdvertisementAreaConstraints_Access_Array_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.AdvertisementAreaConstraints_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementAreaConstraints_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References."=";
   subtype AdvertisementAreaConstraints_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.AdvertisementAreaConstraints_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreaConstraints_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References."=";
   function Java_Box (Value : AdvertisementAreaConstraints_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.Java_Box;
   function Java_Unbox_AdvertisementAreaConstraints_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementAreaConstraints_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package_References.Java_Unbox_AdvertisementAreaConstraints_Access_Array_Access_Array;

   type AdvertisementAreaConstraints is new Java_Object and AdvertisementAreaConstraintsInterface with record
      displayInBrowserContraintsInterface : DisplayInBrowserContraintsInterface_Access;
      twoDimensionConstraintsInterface : TwoDimensionalConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out AdvertisementAreaConstraints'Class; document_Param : access Document_Package.Document'Class);
   function Create (document_Param : access Document_Package.Document'Class) return AdvertisementAreaConstraints_Access;
   procedure setDisplayInBrowserContraints (This : in out AdvertisementAreaConstraints; displayInBrowserContraintsInterface_Param : access DisplayInBrowserContraintsInterface_Package.DisplayInBrowserContraintsInterface'Class);
   procedure getTwoDimensionContraints (This : in out AdvertisementAreaConstraints; twoDimensionConstraintsInterface_Param : access TwoDimensionalConstraintInterface_Package.TwoDimensionalConstraintInterface'Class);
   function getDisplayInBrowserContraints (This : in out AdvertisementAreaConstraints) return DisplayInBrowserContraintsInterface_Access;
   function getTwoDimensionContraints (This : in out AdvertisementAreaConstraints) return TwoDimensionalConstraintInterface_Access;

end org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package;


