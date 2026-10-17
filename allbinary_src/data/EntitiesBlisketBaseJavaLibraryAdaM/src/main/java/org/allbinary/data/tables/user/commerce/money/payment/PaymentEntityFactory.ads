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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PaymentEntityFactory is tagged;
   type PaymentEntityFactory_Access is access all PaymentEntityFactory'Class;
   type PaymentEntityFactory_Access_Array is array (Natural range <>) of PaymentEntityFactory_Access;
   type PaymentEntityFactory_Access_Array_Access is access all PaymentEntityFactory_Access_Array;

   type PaymentEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : PaymentEntityFactory_Access;

   procedure Initialize (This : in out PaymentEntityFactory'Class);
   function Create return PaymentEntityFactory_Access;
   function getInstance return PaymentEntityFactory_Access;
   procedure getInstance;
   function getPaymentEntityInstance (This : in out PaymentEntityFactory) return PaymentEntity_Access;
   procedure getPaymentEntityInstance (This : in out PaymentEntityFactory);

end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;


