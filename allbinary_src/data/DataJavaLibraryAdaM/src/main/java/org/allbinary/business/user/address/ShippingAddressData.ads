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

package org.allbinary.business.user.address.ShippingAddressData_Package is


   type ShippingAddressData is tagged;
   type ShippingAddressData_Access is access all ShippingAddressData'Class;
   type ShippingAddressData_Access_Array is array (Natural range <>) of ShippingAddressData_Access;
   type ShippingAddressData_Access_Array_Access is access all ShippingAddressData_Access_Array;

   type ShippingAddressData is new Java_Object with null record;
   SETTOBILLINGADDRESS : Unbounded_String;
   SELECT_Id : Unbounded_String;
   SELECTNAME : Unbounded_String;
   MULTIPLE : Unbounded_String;
   SHIPPINGADDRESSES : Unbounded_String;
   SHIPPINGADDRESS : Unbounded_String;
   ID : Unbounded_String;
   ADDRESS : Unbounded_String;
   NAME : Unbounded_String;
   STREET : Unbounded_String;
   CITY : Unbounded_String;
   STATE : Unbounded_String;
   CODE : Unbounded_String;
   COUNTRY : Unbounded_String;
   TAX : Unbounded_String;

   procedure Initialize (This : in out ShippingAddressData'Class);
   function Create return ShippingAddressData_Access;

end org.allbinary.business.user.address.ShippingAddressData_Package;


