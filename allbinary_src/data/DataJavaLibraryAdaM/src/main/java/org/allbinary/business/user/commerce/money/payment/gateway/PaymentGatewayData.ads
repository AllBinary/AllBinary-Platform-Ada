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
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References is
   type PaymentGatewayData_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package.PaymentGatewayData'Class;
   type PaymentGatewayData_Access_Array is array (Natural range <>) of PaymentGatewayData_Access;
   type PaymentGatewayData_Access_Array_Access is access all PaymentGatewayData_Access_Array;
   type PaymentGatewayData_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayData_Access_Array_Access;
   type PaymentGatewayData_Access_Array_Access_Array_Access is access all PaymentGatewayData_Access_Array_Access_Array;
   type PaymentGatewayData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayData_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayData_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayData_Access_Array_Object'Class then PaymentGatewayData_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayData_Access_Array_Access_Array_Object'Class then PaymentGatewayData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayData_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.PaymentGatewayData_Access;
   function "=" (Left, Right : PaymentGatewayData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References."=";
   subtype PaymentGatewayData_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.PaymentGatewayData_Access_Array;
   function "=" (Left, Right : PaymentGatewayData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References."=";
   subtype PaymentGatewayData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.PaymentGatewayData_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References."=";
   function Java_Box (Value : PaymentGatewayData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayData_Access_Array (Value : access Java_Object'Class) return PaymentGatewayData_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.Java_Unbox_PaymentGatewayData_Access_Array;
   subtype PaymentGatewayData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.PaymentGatewayData_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References."=";
   subtype PaymentGatewayData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.PaymentGatewayData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References."=";
   function Java_Box (Value : PaymentGatewayData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayData_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package_References.Java_Unbox_PaymentGatewayData_Access_Array_Access_Array;

   type PaymentGatewayData is new Java_Object with record
      key : Unbounded_String;
   end record;
   CRYPTNUM : constant Integer := 5;
   ID : PaymentGatewayData_Access;
   NAME : PaymentGatewayData_Access;
   VALUE : PaymentGatewayData_Access;
   PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE : PaymentGatewayData_Access;
   PAYMENTPROCESSORINTERFACEFACTORYINTERFACE : PaymentGatewayData_Access;
   MODE : PaymentGatewayData_Access;
   SERVERPROTOCOL : PaymentGatewayData_Access;
   SERVER : PaymentGatewayData_Access;
   SERVERPORT : PaymentGatewayData_Access;
   SERVERPATH : PaymentGatewayData_Access;
   TESTPROTOCOL : PaymentGatewayData_Access;
   TESTSERVER : PaymentGatewayData_Access;
   TESTPORT : PaymentGatewayData_Access;
   TESTPATH : PaymentGatewayData_Access;
   TIMEOUT : PaymentGatewayData_Access;
   PROXYPROTOCOL : PaymentGatewayData_Access;
   PROXYSERVER : PaymentGatewayData_Access;
   PROXYPATH : PaymentGatewayData_Access;
   PROXYUSERNAME : PaymentGatewayData_Access;
   PROXYPASSWORD : PaymentGatewayData_Access;
   PROXYPORT : PaymentGatewayData_Access;
   PROXYTIMEOUT : PaymentGatewayData_Access;
   SPECIAL1 : PaymentGatewayData_Access;
   SPECIAL2 : PaymentGatewayData_Access;
   SPECIAL3 : PaymentGatewayData_Access;
   SPECIAL4 : PaymentGatewayData_Access;
   SPECIAL5 : PaymentGatewayData_Access;
   SPECIAL6 : PaymentGatewayData_Access;
   SPECIAL7 : PaymentGatewayData_Access;
   SPECIAL8 : PaymentGatewayData_Access;
   SPECIAL9 : PaymentGatewayData_Access;

   procedure Initialize (This : in out PaymentGatewayData'Class; value : Unbounded_String);
   function Create (value : Unbounded_String) return PaymentGatewayData_Access;
   function toString (This : in out PaymentGatewayData) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;


