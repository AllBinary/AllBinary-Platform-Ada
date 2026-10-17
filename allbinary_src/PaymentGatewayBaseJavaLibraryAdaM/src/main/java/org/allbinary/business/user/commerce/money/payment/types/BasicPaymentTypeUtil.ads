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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;

package org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type BasicPaymentTypeUtil is tagged;
   type BasicPaymentTypeUtil_Access is access all BasicPaymentTypeUtil'Class;
   type BasicPaymentTypeUtil_Access_Array is array (Natural range <>) of BasicPaymentTypeUtil_Access;
   type BasicPaymentTypeUtil_Access_Array_Access is access all BasicPaymentTypeUtil_Access_Array;

   type BasicPaymentTypeUtil is new Java_Object with record
      paymentTypeVector : BasicArrayList_Access;
   end record;
   instance : BasicPaymentTypeUtil_Access;

   procedure Initialize (This : in out BasicPaymentTypeUtil'Class);
   function Create return BasicPaymentTypeUtil_Access;
   function getInstance return BasicPaymentTypeUtil_Access;
   procedure add (This : in out BasicPaymentTypeUtil; paymentType_Param : access BasicPaymentType'Class);
   function get (This : in out BasicPaymentTypeUtil; paymentTypeString : Unbounded_String) return BasicPaymentType_Access;
   procedure get (This : in out BasicPaymentTypeUtil; paymentTypeString : Unbounded_String);
   function isContain (This : in out BasicPaymentTypeUtil; paymentType_Param : access BasicPaymentType'Class) return Boolean;
   procedure isContain (This : in out BasicPaymentTypeUtil; paymentType_Param : access BasicPaymentType'Class);
   function difference (This : in out BasicPaymentTypeUtil; a_PaymentTypeVector_Param : access BasicArrayList'Class) return BasicArrayList_Access;
   procedure difference (This : in out BasicPaymentTypeUtil; a_PaymentTypeVector_Param : access BasicArrayList'Class);

end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;


