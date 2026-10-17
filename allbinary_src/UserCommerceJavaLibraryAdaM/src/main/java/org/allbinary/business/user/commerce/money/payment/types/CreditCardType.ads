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

package org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package is


   type CreditCardType is tagged;
   type CreditCardType_Access is access all CreditCardType'Class;
   type CreditCardType_Access_Array is array (Natural range <>) of CreditCardType_Access;
   type CreditCardType_Access_Array_Access is access all CreditCardType_Access_Array;

   type CreditCardType is new Java_Object with record
      name : Unbounded_String;
   end record;
   MAXLEN : Integer;

   procedure Initialize (This : in out CreditCardType'Class; cardType : Unbounded_String);
   function Create (cardType : Unbounded_String) return CreditCardType_Access;
   function toString (This : in out CreditCardType) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package;


