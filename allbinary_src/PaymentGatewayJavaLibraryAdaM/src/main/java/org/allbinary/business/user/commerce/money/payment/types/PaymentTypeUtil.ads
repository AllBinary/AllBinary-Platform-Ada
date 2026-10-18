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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;

package org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PaymentTypeUtil is tagged;
   type PaymentTypeUtil_Access is access all PaymentTypeUtil'Class;
   type PaymentTypeUtil_Access_Array is array (Natural range <>) of PaymentTypeUtil_Access;
   type PaymentTypeUtil_Access_Array_Access is access all PaymentTypeUtil_Access_Array;
   type PaymentTypeUtil_Access_Array_Access_Array is array (Natural range <>) of PaymentTypeUtil_Access_Array_Access;
   type PaymentTypeUtil_Access_Array_Access_Array_Access is access all PaymentTypeUtil_Access_Array_Access_Array;

   type PaymentTypeUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      PAYMENTGATEWAYFILEPATHSTRING : Unbounded_String;
      SHIPPINGMETHODSFILENAME : Unbounded_String;
      defaultName : Unbounded_String;
      paymentTypeVector : BasicArrayList_Access;
   end record;
   instance : PaymentTypeUtil_Access;

   procedure Initialize (This : in out PaymentTypeUtil'Class);
   function Create return PaymentTypeUtil_Access;
   function getInstance return PaymentTypeUtil_Access;
   procedure add (This : in out PaymentTypeUtil; paymentType_Param : access PaymentType_Package.PaymentType'Class);
   function get (This : in out PaymentTypeUtil; paymentTypeString : Unbounded_String) return PaymentType_Access;
   procedure get (This : in out PaymentTypeUtil; paymentTypeString : Unbounded_String);
   procedure initDefault (This : in out PaymentTypeUtil; storeName : Unbounded_String);
   function getDefault (This : in out PaymentTypeUtil; storeName : Unbounded_String) return PaymentType_Access;
   procedure getDefault (This : in out PaymentTypeUtil; storeName : Unbounded_String);
   function isContain (This : in out PaymentTypeUtil; paymentType_Param : access PaymentType_Package.PaymentType'Class) return Boolean;
   procedure isContain (This : in out PaymentTypeUtil; paymentType_Param : access PaymentType_Package.PaymentType'Class);
   function difference (This : in out PaymentTypeUtil; a_PaymentTypeVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure difference (This : in out PaymentTypeUtil; a_PaymentTypeVector_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;


