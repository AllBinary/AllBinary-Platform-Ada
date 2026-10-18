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

package org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package is

   package StreetAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;

   type BillingAddressesEntity is tagged;
   type BillingAddressesEntity_Access is access all BillingAddressesEntity'Class;
   type BillingAddressesEntity_Access_Array is array (Natural range <>) of BillingAddressesEntity_Access;
   type BillingAddressesEntity_Access_Array_Access is access all BillingAddressesEntity_Access_Array;
   type BillingAddressesEntity_Access_Array_Access_Array is array (Natural range <>) of BillingAddressesEntity_Access_Array_Access;
   type BillingAddressesEntity_Access_Array_Access_Array_Access is access all BillingAddressesEntity_Access_Array_Access_Array;

   type BillingAddressesEntity is new StreetAddressesEntity with record
      TABLENAME : Unbounded_String;
   end record;

   procedure Initialize (This : in out BillingAddressesEntity'Class; userName : Unbounded_String);
   function Create (userName : Unbounded_String) return BillingAddressesEntity_Access;

end org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;


