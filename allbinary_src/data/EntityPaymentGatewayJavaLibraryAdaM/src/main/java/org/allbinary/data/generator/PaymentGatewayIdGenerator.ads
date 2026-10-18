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
with org.allbinary.data.generator.UniqueIdGenerator_Package; use org.allbinary.data.generator.UniqueIdGenerator_Package;

package org.allbinary.data.generator.PaymentGatewayIdGenerator_Package is


   type PaymentGatewayIdGenerator is tagged;
   type PaymentGatewayIdGenerator_Access is access all PaymentGatewayIdGenerator'Class;
   type PaymentGatewayIdGenerator_Access_Array is array (Natural range <>) of PaymentGatewayIdGenerator_Access;
   type PaymentGatewayIdGenerator_Access_Array_Access is access all PaymentGatewayIdGenerator_Access_Array;
   type PaymentGatewayIdGenerator_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayIdGenerator_Access_Array_Access;
   type PaymentGatewayIdGenerator_Access_Array_Access_Array_Access is access all PaymentGatewayIdGenerator_Access_Array_Access_Array;

   type PaymentGatewayIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentGatewayIdGenerator'Class);
   function Create return PaymentGatewayIdGenerator_Access;

end org.allbinary.data.generator.PaymentGatewayIdGenerator_Package;


