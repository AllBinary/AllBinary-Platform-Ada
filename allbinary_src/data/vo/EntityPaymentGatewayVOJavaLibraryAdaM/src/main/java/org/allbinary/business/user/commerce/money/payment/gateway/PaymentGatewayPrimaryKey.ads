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
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References is
   type PaymentGatewayPrimaryKey_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package.PaymentGatewayPrimaryKey'Class;
   type PaymentGatewayPrimaryKey_Access_Array is array (Natural range <>) of PaymentGatewayPrimaryKey_Access;
   type PaymentGatewayPrimaryKey_Access_Array_Access is access all PaymentGatewayPrimaryKey_Access_Array;
   type PaymentGatewayPrimaryKey_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayPrimaryKey_Access_Array_Access;
   type PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access is access all PaymentGatewayPrimaryKey_Access_Array_Access_Array;
   type PaymentGatewayPrimaryKey_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayPrimaryKey_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayPrimaryKey_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayPrimaryKey_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayPrimaryKey_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayPrimaryKey_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayPrimaryKey_Access_Array_Object'Class then PaymentGatewayPrimaryKey_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayPrimaryKey_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayPrimaryKey_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayPrimaryKey_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayPrimaryKey_Access_Array_Access_Array_Object'Class then PaymentGatewayPrimaryKey_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.Serializable_Package; use java.io.Serializable_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayPrimaryKey_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   subtype PaymentGatewayPrimaryKey_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   subtype PaymentGatewayPrimaryKey_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   function Java_Box (Value : PaymentGatewayPrimaryKey_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayPrimaryKey_Access_Array (Value : access Java_Object'Class) return PaymentGatewayPrimaryKey_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.Java_Unbox_PaymentGatewayPrimaryKey_Access_Array;
   subtype PaymentGatewayPrimaryKey_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   subtype PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   function Java_Box (Value : PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayPrimaryKey_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.Java_Unbox_PaymentGatewayPrimaryKey_Access_Array_Access_Array;

   type PaymentGatewayPrimaryKey is new Java_Object with record
      storeName : Unbounded_String;
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentGatewayPrimaryKey'Class; storeName : Unbounded_String; gatewayName : Unbounded_String);
   function Create (storeName : Unbounded_String; gatewayName : Unbounded_String) return PaymentGatewayPrimaryKey_Access;
   function getStoreName (This : in out PaymentGatewayPrimaryKey) return Unbounded_String;
   procedure setStoreName (This : in out PaymentGatewayPrimaryKey; storeName : Unbounded_String);
   function getName (This : in out PaymentGatewayPrimaryKey) return Unbounded_String;
   procedure setName (This : in out PaymentGatewayPrimaryKey; name : Unbounded_String);
   function toString (This : in out PaymentGatewayPrimaryKey) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;


