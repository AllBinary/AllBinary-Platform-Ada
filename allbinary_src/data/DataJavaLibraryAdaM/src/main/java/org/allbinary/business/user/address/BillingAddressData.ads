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

package org.allbinary.business.user.address.BillingAddressData_Package is


   type BillingAddressData is tagged;
   type BillingAddressData_Access is access all BillingAddressData'Class;
   type BillingAddressData_Access_Array is array (Natural range <>) of BillingAddressData_Access;
   type BillingAddressData_Access_Array_Access is access all BillingAddressData_Access_Array;

   type BillingAddressData is new Java_Object with null record;
   MAX : Integer;
   MIN : Integer;
   MULTIPLE : Unbounded_String;
   STATES : Unbounded_String;
   SETTOSHIPPINGADDRESS : Unbounded_String;
   SELECT_Id : Unbounded_String;
   SETTOSHIPPINGADDRESSNAME : Unbounded_String;
   BILLINGADDRESSES : Unbounded_String;
   BILLINGADDRESS : Unbounded_String;
   ID : Unbounded_String;
   ADDRESS : Unbounded_String;
   NAME : Unbounded_String;
   STREET : Unbounded_String;
   CITY : Unbounded_String;
   STATE : Unbounded_String;
   CODE : Unbounded_String;
   COUNTRY : Unbounded_String;

   procedure Initialize (This : in out BillingAddressData'Class);
   function Create return BillingAddressData_Access;

end org.allbinary.business.user.address.BillingAddressData_Package;


