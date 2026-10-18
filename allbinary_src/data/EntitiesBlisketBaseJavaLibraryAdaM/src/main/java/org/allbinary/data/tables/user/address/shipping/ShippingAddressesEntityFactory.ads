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

package org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package is

   package StreetAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ShippingAddressesEntityFactory is tagged;
   type ShippingAddressesEntityFactory_Access is access all ShippingAddressesEntityFactory'Class;
   type ShippingAddressesEntityFactory_Access_Array is array (Natural range <>) of ShippingAddressesEntityFactory_Access;
   type ShippingAddressesEntityFactory_Access_Array_Access is access all ShippingAddressesEntityFactory_Access_Array;
   type ShippingAddressesEntityFactory_Access_Array_Access_Array is array (Natural range <>) of ShippingAddressesEntityFactory_Access_Array_Access;
   type ShippingAddressesEntityFactory_Access_Array_Access_Array_Access is access all ShippingAddressesEntityFactory_Access_Array_Access_Array;

   type ShippingAddressesEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ShippingAddressesEntityFactory_Access;

   procedure Initialize (This : in out ShippingAddressesEntityFactory'Class);
   function Create return ShippingAddressesEntityFactory_Access;
   function getInstance return ShippingAddressesEntityFactory_Access;
   function getInstance (This : in out ShippingAddressesEntityFactory; userName : Unbounded_String) return StreetAddressesEntity_Access;
   procedure getInstance (This : in out ShippingAddressesEntityFactory; userName : Unbounded_String);

end org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;


