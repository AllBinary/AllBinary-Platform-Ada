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
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package is

   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type StreetAddressesEntityInterface is interface and BasicDataTableInterface;
   type StreetAddressesEntityInterface_Access is access all StreetAddressesEntityInterface'Class;
   type StreetAddressesEntityInterface_Access_Array is array (Natural range <>) of StreetAddressesEntityInterface_Access;
   type StreetAddressesEntityInterface_Access_Array_Access is access all StreetAddressesEntityInterface_Access_Array;
   procedure remove (This : in out StreetAddressesEntityInterface; index : Integer) is abstract;
   procedure add (This : in out StreetAddressesEntityInterface; address : StreetAddress_Access) is abstract;
   procedure update (This : in out StreetAddressesEntityInterface; address : StreetAddress_Access) is abstract;
   function getLastId (This : in out StreetAddressesEntityInterface) return Unbounded_String is abstract;
   function getDefault (This : in out StreetAddressesEntityInterface) return StreetAddress_Access is abstract;
   procedure setDefault (This : in out StreetAddressesEntityInterface; value : Unbounded_String) is abstract;

end org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package;


