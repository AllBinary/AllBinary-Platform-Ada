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
with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package; use org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.user.commerce.money.tax.TaxFactory_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package TaxModuleInterface_Package renames Standard.org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TaxFactory is tagged;
   type TaxFactory_Access is access all TaxFactory'Class;
   type TaxFactory_Access_Array is array (Natural range <>) of TaxFactory_Access;
   type TaxFactory_Access_Array_Access is access all TaxFactory_Access_Array;
   type TaxFactory_Access_Array_Access_Array is array (Natural range <>) of TaxFactory_Access_Array_Access;
   type TaxFactory_Access_Array_Access_Array_Access is access all TaxFactory_Access_Array_Access_Array;

   type TaxFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      TAXATIONFILENAME : Unbounded_String;
   end record;
   instance : TaxFactory_Access;

   procedure Initialize (This : in out TaxFactory'Class);
   function Create return TaxFactory_Access;
   function getInstance return TaxFactory_Access;
   function getInstance (This : in out TaxFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return TaxModuleInterface_Access;
   procedure getInstance (This : in out TaxFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);

end org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;


