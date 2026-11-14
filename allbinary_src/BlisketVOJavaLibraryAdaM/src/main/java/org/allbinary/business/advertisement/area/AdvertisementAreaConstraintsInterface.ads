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
limited with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;
package org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References is
   type AdvertisementAreaConstraintsInterface_Access is access all org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package.AdvertisementAreaConstraintsInterface'Class;
   type AdvertisementAreaConstraintsInterface_Access_Array is array (Natural range <>) of AdvertisementAreaConstraintsInterface_Access;
   type AdvertisementAreaConstraintsInterface_Access_Array_Access is access all AdvertisementAreaConstraintsInterface_Access_Array;
   type AdvertisementAreaConstraintsInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementAreaConstraintsInterface_Access_Array_Access;
   type AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access is access all AdvertisementAreaConstraintsInterface_Access_Array_Access_Array;
   type AdvertisementAreaConstraintsInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementAreaConstraintsInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementAreaConstraintsInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementAreaConstraintsInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementAreaConstraintsInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementAreaConstraintsInterface_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementAreaConstraintsInterface_Access_Array_Object'Class then AdvertisementAreaConstraintsInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementAreaConstraintsInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Object'Class then AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References;

with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References;
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

package org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package is

   package DisplayInBrowserContraintsInterface_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   type AdvertisementAreaConstraintsInterface is interface;
   subtype AdvertisementAreaConstraintsInterface_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access;
   function "=" (Left, Right : AdvertisementAreaConstraintsInterface_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References."=";
   subtype AdvertisementAreaConstraintsInterface_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access_Array;
   function "=" (Left, Right : AdvertisementAreaConstraintsInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References."=";
   subtype AdvertisementAreaConstraintsInterface_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreaConstraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References."=";
   function Java_Box (Value : AdvertisementAreaConstraintsInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementAreaConstraintsInterface_Access_Array (Value : access Java_Object'Class) return AdvertisementAreaConstraintsInterface_Access_Array_Access renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.Java_Unbox_AdvertisementAreaConstraintsInterface_Access_Array;
   subtype AdvertisementAreaConstraintsInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementAreaConstraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References."=";
   subtype AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References."=";
   function Java_Box (Value : AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementAreaConstraintsInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementAreaConstraintsInterface_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package_References.Java_Unbox_AdvertisementAreaConstraintsInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AdvertisementAreaConstraintsInterface (Value : AdvertisementAreaConstraintsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getDisplayInBrowserContraints (This : in out AdvertisementAreaConstraintsInterface) return DisplayInBrowserContraintsInterface_Access is abstract;
   function getTwoDimensionContraints (This : in out AdvertisementAreaConstraintsInterface) return TwoDimensionalConstraintInterface_Access is abstract;

end org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;


