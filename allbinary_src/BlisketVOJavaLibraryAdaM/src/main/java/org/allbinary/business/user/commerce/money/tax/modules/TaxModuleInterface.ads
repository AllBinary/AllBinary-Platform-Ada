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

package org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;

   type TaxModuleInterface is interface;
   type TaxModuleInterface_Access is access all TaxModuleInterface'Class;
   type TaxModuleInterface_Access_Array is array (Natural range <>) of TaxModuleInterface_Access;
   type TaxModuleInterface_Access_Array_Access is access all TaxModuleInterface_Access_Array;
   function getTaxRate (This : in out TaxModuleInterface; streetAddress : StreetAddress_Access; storeFrontInterface : StoreFrontInterface_Access) return Float is abstract;
   function isValid (This : in out TaxModuleInterface; streetAddress : StreetAddress_Access; storeFrontInterface : StoreFrontInterface_Access) return Boolean is abstract;

end org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;


