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
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package; use org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;

package org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type SimpleStateTaxModule is tagged;
   type SimpleStateTaxModule_Access is access all SimpleStateTaxModule'Class;
   type SimpleStateTaxModule_Access_Array is array (Natural range <>) of SimpleStateTaxModule_Access;
   type SimpleStateTaxModule_Access_Array_Access is access all SimpleStateTaxModule_Access_Array;
   type SimpleStateTaxModule_Access_Array_Access_Array is array (Natural range <>) of SimpleStateTaxModule_Access_Array_Access;
   type SimpleStateTaxModule_Access_Array_Access_Array_Access is access all SimpleStateTaxModule_Access_Array_Access_Array;

   type SimpleStateTaxModule is new Java_Object and TaxModuleInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      streetAddress : StreetAddress_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      ALL_Id : Unbounded_String;
      STATETAXPATH : Unbounded_String;
      STATETAXFILE : Unbounded_String;
      document : Document_Access;
   end record;

   procedure Initialize (This : in out SimpleStateTaxModule'Class);
   function Create return SimpleStateTaxModule_Access;
   function getTaxRate (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Float;
   procedure getTaxRate (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function isValid (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Boolean;
   procedure isValid (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);

end org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package;


