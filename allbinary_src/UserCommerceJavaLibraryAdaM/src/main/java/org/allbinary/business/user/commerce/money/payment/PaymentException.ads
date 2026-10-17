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
with org.allbinary.business.user.commerce.money.payment.Exception_Package; use org.allbinary.business.user.commerce.money.payment.Exception_Package;

package org.allbinary.business.user.commerce.money.payment.PaymentException_Package is


   type PaymentException is tagged;
   type PaymentException_Access is access all PaymentException'Class;
   type PaymentException_Access_Array is array (Natural range <>) of PaymentException_Access;
   type PaymentException_Access_Array_Access is access all PaymentException_Access_Array;

   type PaymentException is new Exception with null record;

   procedure Initialize (This : in out PaymentException'Class; error : Unbounded_String);
   function Create (error : Unbounded_String) return PaymentException_Access;

end org.allbinary.business.user.commerce.money.payment.PaymentException_Package;


