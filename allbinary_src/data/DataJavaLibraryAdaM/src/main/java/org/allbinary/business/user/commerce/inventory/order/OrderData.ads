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

package org.allbinary.business.user.commerce.inventory.order.OrderData_Package is


   type OrderData is tagged;
   type OrderData_Access is access all OrderData'Class;
   type OrderData_Access_Array is array (Natural range <>) of OrderData_Access;
   type OrderData_Access_Array_Access is access all OrderData_Access_Array;
   type OrderData_Access_Array_Access_Array is array (Natural range <>) of OrderData_Access_Array_Access;
   type OrderData_Access_Array_Access_Array_Access is access all OrderData_Access_Array_Access_Array;

   type OrderData is new Java_Object with null record;
   ORDERS : Unbounded_String;
   ORDER : Unbounded_String;
   ID : Unbounded_String;
   CUSTOMERCOMMENT : Unbounded_String;
   CUSTOMERCANCELCOMMENT : Unbounded_String;
   STORECOMMENT : Unbounded_String;
   STORECANCELCOMMENT : Unbounded_String;

   procedure Initialize (This : in out OrderData'Class);
   function Create return OrderData_Access;

end org.allbinary.business.user.commerce.inventory.order.OrderData_Package;


