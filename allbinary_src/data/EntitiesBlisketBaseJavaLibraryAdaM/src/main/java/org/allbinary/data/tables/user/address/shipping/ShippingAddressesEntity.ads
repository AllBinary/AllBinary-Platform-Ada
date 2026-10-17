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

package org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package is

   package StreetAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;

   type ShippingAddressesEntity is tagged;
   type ShippingAddressesEntity_Access is access all ShippingAddressesEntity'Class;
   type ShippingAddressesEntity_Access_Array is array (Natural range <>) of ShippingAddressesEntity_Access;
   type ShippingAddressesEntity_Access_Array_Access is access all ShippingAddressesEntity_Access_Array;

   type ShippingAddressesEntity is new StreetAddressesEntity with record
      TABLENAME : Unbounded_String;
   end record;

   procedure Initialize (This : in out ShippingAddressesEntity'Class; userName : Unbounded_String);
   function Create (userName : Unbounded_String) return ShippingAddressesEntity_Access;

end org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;


