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

with AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References is
   type PaymentGatewayPageData_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package.PaymentGatewayPageData'Class;
   type PaymentGatewayPageData_Access_Array is array (Natural range <>) of PaymentGatewayPageData_Access;
   type PaymentGatewayPageData_Access_Array_Access is access all PaymentGatewayPageData_Access_Array;
   type PaymentGatewayPageData_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayPageData_Access_Array_Access;
   type PaymentGatewayPageData_Access_Array_Access_Array_Access is access all PaymentGatewayPageData_Access_Array_Access_Array;
   type PaymentGatewayPageData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayPageData_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayPageData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayPageData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayPageData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayPageData_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayPageData_Access_Array_Object'Class then PaymentGatewayPageData_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayPageData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayPageData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayPageData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayPageData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayPageData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayPageData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayPageData_Access_Array_Access_Array_Object'Class then PaymentGatewayPageData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayPageData_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.PaymentGatewayPageData_Access;
   function "=" (Left, Right : PaymentGatewayPageData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References."=";
   subtype PaymentGatewayPageData_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.PaymentGatewayPageData_Access_Array;
   function "=" (Left, Right : PaymentGatewayPageData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References."=";
   subtype PaymentGatewayPageData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.PaymentGatewayPageData_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayPageData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References."=";
   function Java_Box (Value : PaymentGatewayPageData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayPageData_Access_Array (Value : access Java_Object'Class) return PaymentGatewayPageData_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.Java_Unbox_PaymentGatewayPageData_Access_Array;
   subtype PaymentGatewayPageData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.PaymentGatewayPageData_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayPageData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References."=";
   subtype PaymentGatewayPageData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.PaymentGatewayPageData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayPageData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References."=";
   function Java_Box (Value : PaymentGatewayPageData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayPageData_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayPageData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package_References.Java_Unbox_PaymentGatewayPageData_Access_Array_Access_Array;

   type PaymentGatewayPageData is new Java_Object with record
      MAKEPAYMENT : Unbounded_String;
      CHECKOUT : Unbounded_String;
      SHIPPING : Unbounded_String;
      SHIPPINGADDRESS : Unbounded_String;
      SHIPPINGADDRESSACTION : Unbounded_String;
      BILLINGADDRESS : Unbounded_String;
      PAYMENT : Unbounded_String;
      AUTHORIZE : Unbounded_String;
      FINISH : Unbounded_String;
   end record;
   EXTENSION : Unbounded_String;
   NAME : Unbounded_String;
   FORWARDMAKEPAYMENT : Unbounded_String;
   PAYMENTOPTIONS : Unbounded_String;
   STARTCHECKOUT : Unbounded_String;

   procedure Initialize (This : in out PaymentGatewayPageData'Class; location : Unbounded_String; paymentMethod : Unbounded_String);
   function Create (location : Unbounded_String; paymentMethod : Unbounded_String) return PaymentGatewayPageData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package;


