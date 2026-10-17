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
with org.allbinary.business.user.commerce.money.payment.types.TenderType_Package; use org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;

package org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package is


   type TenderTypeFactory is tagged;
   type TenderTypeFactory_Access is access all TenderTypeFactory'Class;
   type TenderTypeFactory_Access_Array is array (Natural range <>) of TenderTypeFactory_Access;
   type TenderTypeFactory_Access_Array_Access is access all TenderTypeFactory_Access_Array;

   type TenderTypeFactory is new Java_Object with record
      CREDITCARD : TenderType_Access;
      CHECK : TenderType_Access;
      ACH : TenderType_Access;
   end record;
   instance : TenderTypeFactory_Access;

   procedure Initialize (This : in out TenderTypeFactory'Class);
   function Create return TenderTypeFactory_Access;
   function getInstance return TenderTypeFactory_Access;

end org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package;


