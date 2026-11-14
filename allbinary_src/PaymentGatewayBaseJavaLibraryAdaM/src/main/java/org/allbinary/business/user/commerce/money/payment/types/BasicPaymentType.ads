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
limited with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
package org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References is
   type BasicPaymentType_Access is access all org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package.BasicPaymentType'Class;
   type BasicPaymentType_Access_Array is array (Natural range <>) of BasicPaymentType_Access;
   type BasicPaymentType_Access_Array_Access is access all BasicPaymentType_Access_Array;
   type BasicPaymentType_Access_Array_Access_Array is array (Natural range <>) of BasicPaymentType_Access_Array_Access;
   type BasicPaymentType_Access_Array_Access_Array_Access is access all BasicPaymentType_Access_Array_Access_Array;
   type BasicPaymentType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicPaymentType_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicPaymentType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicPaymentType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicPaymentType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicPaymentType_Access_Array_Access is (if Value /= null and then Value.all in BasicPaymentType_Access_Array_Object'Class then BasicPaymentType_Access_Array_Object'Class (Value.all).Value else null);
   type BasicPaymentType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicPaymentType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicPaymentType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicPaymentType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicPaymentType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicPaymentType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicPaymentType_Access_Array_Access_Array_Object'Class then BasicPaymentType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentGatewayInterfaceFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
   package PaymentGatewayDomNodeFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
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
   subtype PaymentGatewayInterfaceFactoryInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access;
   use type PaymentGatewayInterfaceFactoryInterface_Access;
   subtype PaymentGatewayInterfaceFactoryInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access_Array;
   use type PaymentGatewayInterfaceFactoryInterface_Access_Array;
   subtype PaymentGatewayInterfaceFactoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access_Array_Access;
   use type PaymentGatewayInterfaceFactoryInterface_Access_Array_Access;
   subtype PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array;
   use type PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype PaymentGatewayDomNodeFactoryInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access;
   use type PaymentGatewayDomNodeFactoryInterface_Access;
   subtype PaymentGatewayDomNodeFactoryInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access_Array;
   use type PaymentGatewayDomNodeFactoryInterface_Access_Array;
   subtype PaymentGatewayDomNodeFactoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access_Array_Access;
   use type PaymentGatewayDomNodeFactoryInterface_Access_Array_Access;
   subtype PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array;
   use type PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array;
   subtype PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array_Access;
   use type PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicPaymentType_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access;
   function "=" (Left, Right : BasicPaymentType_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References."=";
   subtype BasicPaymentType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array;
   function "=" (Left, Right : BasicPaymentType_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References."=";
   subtype BasicPaymentType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access;
   function "=" (Left, Right : BasicPaymentType_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References."=";
   function Java_Box (Value : BasicPaymentType_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.Java_Box;
   function Java_Unbox_BasicPaymentType_Access_Array (Value : access Java_Object'Class) return BasicPaymentType_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.Java_Unbox_BasicPaymentType_Access_Array;
   subtype BasicPaymentType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access_Array;
   function "=" (Left, Right : BasicPaymentType_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References."=";
   subtype BasicPaymentType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicPaymentType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References."=";
   function Java_Box (Value : BasicPaymentType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.Java_Box;
   function Java_Unbox_BasicPaymentType_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicPaymentType_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.Java_Unbox_BasicPaymentType_Access_Array_Access_Array;

   type BasicPaymentType is new Java_Object with record
      name : Unbounded_String;
      value : Unbounded_String;
      paymentGatewayInterfaceFactoryInterface : PaymentGatewayInterfaceFactoryInterface_Access;
      paymentGatewayDomNodeFactoryInterface : PaymentGatewayDomNodeFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String);
   function Create (paymentMethod : Unbounded_String) return BasicPaymentType_Access;
   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String; paymentGatewayInterfaceFactoryInterface_Param : access PaymentGatewayInterfaceFactoryInterface_Package.PaymentGatewayInterfaceFactoryInterface'Class; paymentGatewayDomNodeFactoryInterface_Param : access PaymentGatewayDomNodeFactoryInterface_Package.PaymentGatewayDomNodeFactoryInterface'Class);
   function Create (paymentMethod : Unbounded_String; paymentGatewayInterfaceFactoryInterface_Param : access PaymentGatewayInterfaceFactoryInterface_Package.PaymentGatewayInterfaceFactoryInterface'Class; paymentGatewayDomNodeFactoryInterface_Param : access PaymentGatewayDomNodeFactoryInterface_Package.PaymentGatewayDomNodeFactoryInterface'Class) return BasicPaymentType_Access;
   procedure init (This : in out BasicPaymentType; paymentMethod : Unbounded_String);
   function getName (This : in out BasicPaymentType) return Unbounded_String;
   function getValue (This : in out BasicPaymentType) return Unbounded_String;
   function getPaymentGatewayInterfaceFactoryInterface (This : in out BasicPaymentType) return PaymentGatewayInterfaceFactoryInterface_Access;
   function getPaymentGatewayDomNodeFactoryInterface (This : in out BasicPaymentType) return PaymentGatewayDomNodeFactoryInterface_Access;
   function getKey (This : in out BasicPaymentType) return Java_Object_Access;
   function toVector (This : in out BasicPaymentType) return BasicArrayList_Access;
   function toHashMap (This : in out BasicPaymentType) return HashMap_Access;
   function toString (This : in out BasicPaymentType) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;


