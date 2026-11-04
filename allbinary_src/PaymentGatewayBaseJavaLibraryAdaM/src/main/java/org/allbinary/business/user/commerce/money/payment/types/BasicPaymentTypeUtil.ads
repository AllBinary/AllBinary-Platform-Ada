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

limited with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
package org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References is
   type BasicPaymentTypeUtil_Access is access all org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package.BasicPaymentTypeUtil'Class;
   type BasicPaymentTypeUtil_Access_Array is array (Natural range <>) of BasicPaymentTypeUtil_Access;
   type BasicPaymentTypeUtil_Access_Array_Access is access all BasicPaymentTypeUtil_Access_Array;
   type BasicPaymentTypeUtil_Access_Array_Access_Array is array (Natural range <>) of BasicPaymentTypeUtil_Access_Array_Access;
   type BasicPaymentTypeUtil_Access_Array_Access_Array_Access is access all BasicPaymentTypeUtil_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References;

package org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicPaymentType_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access;
   use type BasicPaymentType_Access;
   subtype BasicPaymentType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array;
   use type BasicPaymentType_Access_Array;
   subtype BasicPaymentType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access;
   use type BasicPaymentType_Access_Array_Access;
   subtype BasicPaymentType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access_Array;
   use type BasicPaymentType_Access_Array_Access_Array;
   subtype BasicPaymentType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access_Array_Access;
   use type BasicPaymentType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicPaymentTypeUtil_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References.BasicPaymentTypeUtil_Access;
   function "=" (Left, Right : BasicPaymentTypeUtil_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References."=";
   subtype BasicPaymentTypeUtil_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References.BasicPaymentTypeUtil_Access_Array;
   function "=" (Left, Right : BasicPaymentTypeUtil_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References."=";
   subtype BasicPaymentTypeUtil_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References.BasicPaymentTypeUtil_Access_Array_Access;
   function "=" (Left, Right : BasicPaymentTypeUtil_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References."=";
   subtype BasicPaymentTypeUtil_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References.BasicPaymentTypeUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicPaymentTypeUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References."=";
   subtype BasicPaymentTypeUtil_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References.BasicPaymentTypeUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicPaymentTypeUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package_References."=";

   type BasicPaymentTypeUtil is new Java_Object with record
      paymentTypeVector : BasicArrayList_Access;
   end record;
   instance : BasicPaymentTypeUtil_Access;

   procedure Initialize (This : in out BasicPaymentTypeUtil'Class);
   function Create return BasicPaymentTypeUtil_Access;
   function getInstance return BasicPaymentTypeUtil_Access;
   procedure add (This : in out BasicPaymentTypeUtil; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class);
   function get (This : in out BasicPaymentTypeUtil; paymentTypeString : Unbounded_String) return BasicPaymentType_Access;
   procedure get (This : in out BasicPaymentTypeUtil; paymentTypeString : Unbounded_String);
   function isContain (This : in out BasicPaymentTypeUtil; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return Boolean;
   procedure isContain (This : in out BasicPaymentTypeUtil; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class);
   function difference (This : in out BasicPaymentTypeUtil; a_PaymentTypeVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure difference (This : in out BasicPaymentTypeUtil; a_PaymentTypeVector_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;


