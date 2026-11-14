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
limited with org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
package org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References is
   type TaxFactory_Access is access all org.allbinary.business.user.commerce.money.tax.TaxFactory_Package.TaxFactory'Class;
   type TaxFactory_Access_Array is array (Natural range <>) of TaxFactory_Access;
   type TaxFactory_Access_Array_Access is access all TaxFactory_Access_Array;
   type TaxFactory_Access_Array_Access_Array is array (Natural range <>) of TaxFactory_Access_Array_Access;
   type TaxFactory_Access_Array_Access_Array_Access is access all TaxFactory_Access_Array_Access_Array;
   type TaxFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TaxFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TaxFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TaxFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TaxFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TaxFactory_Access_Array_Access is (if Value /= null and then Value.all in TaxFactory_Access_Array_Object'Class then TaxFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TaxFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TaxFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TaxFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TaxFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TaxFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TaxFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TaxFactory_Access_Array_Access_Array_Object'Class then TaxFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References;

with org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;
with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.business.user.commerce.money.tax.TaxFactory_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package TaxModuleInterface_Package renames Standard.org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype TaxModuleInterface_Access is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access;
   use type TaxModuleInterface_Access;
   subtype TaxModuleInterface_Access_Array is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access_Array;
   use type TaxModuleInterface_Access_Array;
   subtype TaxModuleInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access_Array_Access;
   use type TaxModuleInterface_Access_Array_Access;
   subtype TaxModuleInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access_Array_Access_Array;
   use type TaxModuleInterface_Access_Array_Access_Array;
   subtype TaxModuleInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access_Array_Access_Array_Access;
   use type TaxModuleInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TaxFactory_Access is org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.TaxFactory_Access;
   function "=" (Left, Right : TaxFactory_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References."=";
   subtype TaxFactory_Access_Array is org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.TaxFactory_Access_Array;
   function "=" (Left, Right : TaxFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References."=";
   subtype TaxFactory_Access_Array_Access is org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.TaxFactory_Access_Array_Access;
   function "=" (Left, Right : TaxFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References."=";
   function Java_Box (Value : TaxFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.Java_Box;
   function Java_Unbox_TaxFactory_Access_Array (Value : access Java_Object'Class) return TaxFactory_Access_Array_Access renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.Java_Unbox_TaxFactory_Access_Array;
   subtype TaxFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.TaxFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TaxFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References."=";
   subtype TaxFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.TaxFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TaxFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References."=";
   function Java_Box (Value : TaxFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.Java_Box;
   function Java_Unbox_TaxFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TaxFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package_References.Java_Unbox_TaxFactory_Access_Array_Access_Array;

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


