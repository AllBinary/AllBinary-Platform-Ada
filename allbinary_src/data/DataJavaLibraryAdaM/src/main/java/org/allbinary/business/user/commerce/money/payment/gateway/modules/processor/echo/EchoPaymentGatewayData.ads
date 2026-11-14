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
limited with org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References is
   type EchoPaymentGatewayData_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package.EchoPaymentGatewayData'Class;
   type EchoPaymentGatewayData_Access_Array is array (Natural range <>) of EchoPaymentGatewayData_Access;
   type EchoPaymentGatewayData_Access_Array_Access is access all EchoPaymentGatewayData_Access_Array;
   type EchoPaymentGatewayData_Access_Array_Access_Array is array (Natural range <>) of EchoPaymentGatewayData_Access_Array_Access;
   type EchoPaymentGatewayData_Access_Array_Access_Array_Access is access all EchoPaymentGatewayData_Access_Array_Access_Array;
   type EchoPaymentGatewayData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EchoPaymentGatewayData_Access_Array_Access;
   end record;
   function Java_Box (Value : EchoPaymentGatewayData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EchoPaymentGatewayData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EchoPaymentGatewayData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EchoPaymentGatewayData_Access_Array_Access is (if Value /= null and then Value.all in EchoPaymentGatewayData_Access_Array_Object'Class then EchoPaymentGatewayData_Access_Array_Object'Class (Value.all).Value else null);
   type EchoPaymentGatewayData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EchoPaymentGatewayData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EchoPaymentGatewayData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EchoPaymentGatewayData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EchoPaymentGatewayData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EchoPaymentGatewayData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EchoPaymentGatewayData_Access_Array_Access_Array_Object'Class then EchoPaymentGatewayData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype EchoPaymentGatewayData_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.EchoPaymentGatewayData_Access;
   function "=" (Left, Right : EchoPaymentGatewayData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References."=";
   subtype EchoPaymentGatewayData_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.EchoPaymentGatewayData_Access_Array;
   function "=" (Left, Right : EchoPaymentGatewayData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References."=";
   subtype EchoPaymentGatewayData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.EchoPaymentGatewayData_Access_Array_Access;
   function "=" (Left, Right : EchoPaymentGatewayData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References."=";
   function Java_Box (Value : EchoPaymentGatewayData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.Java_Box;
   function Java_Unbox_EchoPaymentGatewayData_Access_Array (Value : access Java_Object'Class) return EchoPaymentGatewayData_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.Java_Unbox_EchoPaymentGatewayData_Access_Array;
   subtype EchoPaymentGatewayData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.EchoPaymentGatewayData_Access_Array_Access_Array;
   function "=" (Left, Right : EchoPaymentGatewayData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References."=";
   subtype EchoPaymentGatewayData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.EchoPaymentGatewayData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EchoPaymentGatewayData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References."=";
   function Java_Box (Value : EchoPaymentGatewayData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.Java_Box;
   function Java_Unbox_EchoPaymentGatewayData_Access_Array_Access_Array (Value : access Java_Object'Class) return EchoPaymentGatewayData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package_References.Java_Unbox_EchoPaymentGatewayData_Access_Array_Access_Array;

   type EchoPaymentGatewayData is new Java_Object with null record;
   TRANSACTION_TYPE : Unbounded_String;
   MERCHANT_ECHO_ID : Unbounded_String;
   ORDER_TYPE : Unbounded_String;
   MERCHANT_PIN : Unbounded_String;
   ISP_ECHO_ID : Unbounded_String;
   ISP_PIN : Unbounded_String;
   BILLING_IP_ADDRESS : Unbounded_String;
   MERCHANT_EMAIL : Unbounded_String;
   AUTHORIZATION : Unbounded_String;
   BILLING_PREFIX : Unbounded_String;
   BILLING_NAME : Unbounded_String;
   BILLING_FIRST_NAME : Unbounded_String;
   BILLING_LAST_NAME : Unbounded_String;
   BILLING_COMPANY_NAME : Unbounded_String;
   BILLING_ADDRESS1 : Unbounded_String;
   BILLING_ADDRESS2 : Unbounded_String;
   BILLING_CITY : Unbounded_String;
   BILLING_STATE : Unbounded_String;
   BILLING_ZIP : Unbounded_String;
   BILLING_COUNTRY : Unbounded_String;
   BILLING_PHONE : Unbounded_String;
   BILLING_FAX : Unbounded_String;
   BILLING_EMAIL : Unbounded_String;
   CC_NUMBER : Unbounded_String;
   CCEXP_MONTH : Unbounded_String;
   CCEXP_YEAR : Unbounded_String;
   CNP_RECURRING : Unbounded_String;
   cnp_security : Unbounded_String;
   COUNTER : Unbounded_String;
   DEBUG : Unbounded_String;
   EC_ACCOUNT : Unbounded_String;
   EC_ACCOUNT_TYPE : Unbounded_String;
   EC_ADDRESS1 : Unbounded_String;
   EC_ADDRESS2 : Unbounded_String;
   EC_BANK_NAME : Unbounded_String;
   EC_CITY : Unbounded_String;
   EC_EMAIL : Unbounded_String;
   EC_FIRST_NAME : Unbounded_String;
   EC_ID_COUNTRY : Unbounded_String;
   EC_ID_EXP_MM : Unbounded_String;
   EC_ID_EXP_DD : Unbounded_String;
   EC_ID_EXP_YY : Unbounded_String;
   EC_ID_NUMBER : Unbounded_String;
   EC_ID_STATE : Unbounded_String;
   EC_ID_TYPE : Unbounded_String;
   EC_LAST_NAME : Unbounded_String;
   EC_BUSINESS_NAME : Unbounded_String;
   EC_LICENSE_NUMBER : Unbounded_String;
   EC_LICENSE_STATE : Unbounded_String;
   EC_MERCHANT_REF : Unbounded_String;
   EC_NBDS_CODE : Unbounded_String;
   EC_OTHER_NAME : Unbounded_String;
   EC_PAYEE : Unbounded_String;
   EC_PAYMENT_TYPE : Unbounded_String;
   EC_RT : Unbounded_String;
   EC_SERIAL_NUMBER : Unbounded_String;
   EC_STATE : Unbounded_String;
   EC_TRANSACTION_DT : Unbounded_String;
   EC_ZIP : Unbounded_String;
   GRAND_TOTAL : Unbounded_String;
   MERCHANT_TRACE_NBR : Unbounded_String;
   ORDER_NUMBER : Unbounded_String;
   ORIGINAL_AMOUNT : Unbounded_String;
   ORIGINAL_TRANDATE_MM : Unbounded_String;
   ORIGINAL_TRANDATE_DD : Unbounded_String;
   ORIGINAL_TRANDATE_YYYY : Unbounded_String;
   ORIGINAL_REFERENCE : Unbounded_String;
   PRODUCT_DESCRIPTION : Unbounded_String;
   PURCHASE_ORDER_NUMBER : Unbounded_String;
   SALES_TAX : Unbounded_String;

   procedure Initialize (This : in out EchoPaymentGatewayData'Class);
   function Create return EchoPaymentGatewayData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package;


