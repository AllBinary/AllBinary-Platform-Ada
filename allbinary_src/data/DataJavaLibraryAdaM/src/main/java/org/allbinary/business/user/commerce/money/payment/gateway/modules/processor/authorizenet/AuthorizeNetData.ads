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
limited with org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References is
   type AuthorizeNetData_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package.AuthorizeNetData'Class;
   type AuthorizeNetData_Access_Array is array (Natural range <>) of AuthorizeNetData_Access;
   type AuthorizeNetData_Access_Array_Access is access all AuthorizeNetData_Access_Array;
   type AuthorizeNetData_Access_Array_Access_Array is array (Natural range <>) of AuthorizeNetData_Access_Array_Access;
   type AuthorizeNetData_Access_Array_Access_Array_Access is access all AuthorizeNetData_Access_Array_Access_Array;
   type AuthorizeNetData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthorizeNetData_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthorizeNetData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthorizeNetData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthorizeNetData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthorizeNetData_Access_Array_Access is (if Value /= null and then Value.all in AuthorizeNetData_Access_Array_Object'Class then AuthorizeNetData_Access_Array_Object'Class (Value.all).Value else null);
   type AuthorizeNetData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthorizeNetData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthorizeNetData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthorizeNetData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthorizeNetData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthorizeNetData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AuthorizeNetData_Access_Array_Access_Array_Object'Class then AuthorizeNetData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AuthorizeNetData_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.AuthorizeNetData_Access;
   function "=" (Left, Right : AuthorizeNetData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References."=";
   subtype AuthorizeNetData_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.AuthorizeNetData_Access_Array;
   function "=" (Left, Right : AuthorizeNetData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References."=";
   subtype AuthorizeNetData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.AuthorizeNetData_Access_Array_Access;
   function "=" (Left, Right : AuthorizeNetData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References."=";
   function Java_Box (Value : AuthorizeNetData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.Java_Box;
   function Java_Unbox_AuthorizeNetData_Access_Array (Value : access Java_Object'Class) return AuthorizeNetData_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.Java_Unbox_AuthorizeNetData_Access_Array;
   subtype AuthorizeNetData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.AuthorizeNetData_Access_Array_Access_Array;
   function "=" (Left, Right : AuthorizeNetData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References."=";
   subtype AuthorizeNetData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.AuthorizeNetData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AuthorizeNetData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References."=";
   function Java_Box (Value : AuthorizeNetData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.Java_Box;
   function Java_Unbox_AuthorizeNetData_Access_Array_Access_Array (Value : access Java_Object'Class) return AuthorizeNetData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package_References.Java_Unbox_AuthorizeNetData_Access_Array_Access_Array;

   type AuthorizeNetData is new Java_Object with null record;
   X_LOGIN : Unbounded_String;
   X_TRAN_KEY : Unbounded_String;
   X_VERSION : Unbounded_String;
   X_TEST_REQUEST : Unbounded_String;
   X_RELAY_RESPONSE : Unbounded_String;
   X_DUPLICATE_WINDOW : Unbounded_String;
   X_FIRST_NAME : Unbounded_String;
   X_LAST_NAME : Unbounded_String;
   X_COMPANY : Unbounded_String;
   X_ADDRESS : Unbounded_String;
   X_CITY : Unbounded_String;
   X_STATE : Unbounded_String;
   X_ZIP : Unbounded_String;
   X_COUNTRY : Unbounded_String;
   X_PHONE : Unbounded_String;
   X_FAX : Unbounded_String;
   X_CUST_ID : Unbounded_String;
   X_CUSTOMER_IP : Unbounded_String;
   X_CUSTOMER_TAX_ID : Unbounded_String;
   X_EMAIL_CUSTOMER : Unbounded_String;
   X_EMAIL : Unbounded_String;
   X_EMAIL_MERCHANT : Unbounded_String;
   X_INVOICE_NUM : Unbounded_String;
   X_DESCRIPTION : Unbounded_String;
   X_SHIP_TO_FIRST_NAME : Unbounded_String;
   X_SHIP_TO_LAST_NAME : Unbounded_String;
   X_SHIP_TO_COMPANY : Unbounded_String;
   X_SHIP_TO_ADDRESS : Unbounded_String;
   X_SHIP_TO_CITY : Unbounded_String;
   X_SHIP_TO_STATE : Unbounded_String;
   X_SHIP_TO_ZIP : Unbounded_String;
   X_SHIP_TO_COUNTRY : Unbounded_String;
   X_AMOUNT : Unbounded_String;
   X_CURRENCY_CODE : Unbounded_String;
   X_METHOD : Unbounded_String;
   X_TYPE : Unbounded_String;
   X_RECURRING_BILLING : Unbounded_String;
   X_BANK_ABA_CODE : Unbounded_String;
   X_BANK_ACCT_NUM : Unbounded_String;
   X_BANK_ACCT_TYPE : Unbounded_String;
   X_BANK_NAME : Unbounded_String;
   X_BANK_ACCT_NAME : Unbounded_String;
   X_ECHECK_TYPE : Unbounded_String;
   X_CARD_NUM : Unbounded_String;
   X_EXP_DATE : Unbounded_String;
   X_CARD_CODE : Unbounded_String;
   X_TRANS_ID : Unbounded_String;
   X_AUTH_CODE : Unbounded_String;
   X_PO_NUM : Unbounded_String;
   X_TAX : Unbounded_String;
   X_TAX_EXEMPT : Unbounded_String;
   X_FREIGHT : Unbounded_String;
   X_DUTY : Unbounded_String;

   procedure Initialize (This : in out AuthorizeNetData'Class);
   function Create return AuthorizeNetData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package;


