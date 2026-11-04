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

limited with org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
package org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References is
   type PaymentData_Access is access all org.allbinary.business.user.commerce.money.payment.PaymentData_Package.PaymentData'Class;
   type PaymentData_Access_Array is array (Natural range <>) of PaymentData_Access;
   type PaymentData_Access_Array_Access is access all PaymentData_Access_Array;
   type PaymentData_Access_Array_Access_Array is array (Natural range <>) of PaymentData_Access_Array_Access;
   type PaymentData_Access_Array_Access_Array_Access is access all PaymentData_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References;

with org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.PaymentData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentData_Access is org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References.PaymentData_Access;
   function "=" (Left, Right : PaymentData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References."=";
   subtype PaymentData_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References.PaymentData_Access_Array;
   function "=" (Left, Right : PaymentData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References."=";
   subtype PaymentData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References.PaymentData_Access_Array_Access;
   function "=" (Left, Right : PaymentData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References."=";
   subtype PaymentData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References.PaymentData_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References."=";
   subtype PaymentData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References.PaymentData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentData_Package_References."=";

   type PaymentData is new Java_Object with null record;
   MIN : constant Integer := 4;
   MAX : constant Integer := 19;
   ADDNEW : Unbounded_String;
   VIEW : Unbounded_String;
   SELECT_Id : Unbounded_String;
   CHANGE : Unbounded_String;
   PAYMENT : Unbounded_String;
   METHOD : Unbounded_String;
   ID : Unbounded_String;
   NUMBER : Unbounded_String;
   NAME : Unbounded_String;
   TYPE_Id : Unbounded_String;
   EXPIRATION : Unbounded_String;
   TENDERTYPE : Unbounded_String;
   TRANSACTIONTYPE : Unbounded_String;
   ABA : Unbounded_String;
   ACCOUNT : Unbounded_String;
   ACCOUNTTYPE : Unbounded_String;
   AUTHORIZATIONCODE : Unbounded_String;
   CHECKNUMBER : Unbounded_String;
   CHECKTYPE : Unbounded_String;
   DRIVERSLICENSE : Unbounded_String;
   MAGNETICINKCHECKREADER : Unbounded_String;

   procedure Initialize (This : in out PaymentData'Class);
   function Create return PaymentData_Access;

end org.allbinary.business.user.commerce.money.payment.PaymentData_Package;


