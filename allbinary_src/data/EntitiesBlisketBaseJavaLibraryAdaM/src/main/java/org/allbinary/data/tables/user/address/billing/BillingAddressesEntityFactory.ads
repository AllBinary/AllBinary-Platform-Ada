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
with org.allbinary.data.tables.user.address.StreetAddressesEntity_Package; use org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package is

   package StreetAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type BillingAddressesEntityFactory is tagged;
   type BillingAddressesEntityFactory_Access is access all BillingAddressesEntityFactory'Class;
   type BillingAddressesEntityFactory_Access_Array is array (Natural range <>) of BillingAddressesEntityFactory_Access;
   type BillingAddressesEntityFactory_Access_Array_Access is access all BillingAddressesEntityFactory_Access_Array;
   type BillingAddressesEntityFactory_Access_Array_Access_Array is array (Natural range <>) of BillingAddressesEntityFactory_Access_Array_Access;
   type BillingAddressesEntityFactory_Access_Array_Access_Array_Access is access all BillingAddressesEntityFactory_Access_Array_Access_Array;

   type BillingAddressesEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : BillingAddressesEntityFactory_Access;

   procedure Initialize (This : in out BillingAddressesEntityFactory'Class);
   function Create return BillingAddressesEntityFactory_Access;
   function getInstance return BillingAddressesEntityFactory_Access;
   function getInstance (This : in out BillingAddressesEntityFactory; userName : Unbounded_String) return StreetAddressesEntity_Access;
   procedure getInstance (This : in out BillingAddressesEntityFactory; userName : Unbounded_String);

end org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;


