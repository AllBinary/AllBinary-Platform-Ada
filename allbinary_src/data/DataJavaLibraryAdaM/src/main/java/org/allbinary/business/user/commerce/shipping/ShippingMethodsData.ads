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

package org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package is


   type ShippingMethodsData is tagged;
   type ShippingMethodsData_Access is access all ShippingMethodsData'Class;
   type ShippingMethodsData_Access_Array is array (Natural range <>) of ShippingMethodsData_Access;
   type ShippingMethodsData_Access_Array_Access is access all ShippingMethodsData_Access_Array;
   type ShippingMethodsData_Access_Array_Access_Array is array (Natural range <>) of ShippingMethodsData_Access_Array_Access;
   type ShippingMethodsData_Access_Array_Access_Array_Access is access all ShippingMethodsData_Access_Array_Access_Array;

   type ShippingMethodsData is new Java_Object with null record;
   SHIPPINGMETHODSORDERSUMMARIES : Unbounded_String;
   SHIPPINGMETHODORDERSUMMARY : Unbounded_String;
   SHIPPINGMETHODS : Unbounded_String;
   NAME : Unbounded_String;
   SHIPPINGCOST : Unbounded_String;
   TAXRATE : Unbounded_String;
   SUBTOTAL : Unbounded_String;
   TAX : Unbounded_String;
   TOTAL : Unbounded_String;

   procedure Initialize (This : in out ShippingMethodsData'Class);
   function Create return ShippingMethodsData_Access;

end org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package;


