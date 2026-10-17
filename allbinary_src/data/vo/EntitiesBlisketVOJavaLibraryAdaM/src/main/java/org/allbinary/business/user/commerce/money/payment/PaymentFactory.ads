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
--  with javax.servlet.ServletRequest_Package; use javax.servlet.ServletRequest_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PaymentFactory is tagged;
   type PaymentFactory_Access is access all PaymentFactory'Class;
   type PaymentFactory_Access_Array is array (Natural range <>) of PaymentFactory_Access;
   type PaymentFactory_Access_Array_Access is access all PaymentFactory_Access_Array;

   type PaymentFactory is new Java_Object with null record;

   procedure Initialize (This : in out PaymentFactory'Class);
   function Create return PaymentFactory_Access;
   function getInstance (request : ServletRequest_Access) return PaymentInterface_Access;
   procedure getInstance (request : ServletRequest_Access);

end org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package;


