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
limited with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package;
package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References is
   type PaymentGatewayEntityInterface_Access is access all org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package.PaymentGatewayEntityInterface'Class;
   type PaymentGatewayEntityInterface_Access_Array is array (Natural range <>) of PaymentGatewayEntityInterface_Access;
   type PaymentGatewayEntityInterface_Access_Array_Access is access all PaymentGatewayEntityInterface_Access_Array;
   type PaymentGatewayEntityInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayEntityInterface_Access_Array_Access;
   type PaymentGatewayEntityInterface_Access_Array_Access_Array_Access is access all PaymentGatewayEntityInterface_Access_Array_Access_Array;
   type PaymentGatewayEntityInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayEntityInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayEntityInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayEntityInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayEntityInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayEntityInterface_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayEntityInterface_Access_Array_Object'Class then PaymentGatewayEntityInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayEntityInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayEntityInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayEntityInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayEntityInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayEntityInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayEntityInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayEntityInterface_Access_Array_Access_Array_Object'Class then PaymentGatewayEntityInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References;
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
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentGatewayInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
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
   subtype PaymentGatewayInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access;
   use type PaymentGatewayInterface_Access;
   subtype PaymentGatewayInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array;
   use type PaymentGatewayInterface_Access_Array;
   subtype PaymentGatewayInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access;
   use type PaymentGatewayInterface_Access_Array_Access;
   subtype PaymentGatewayInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array;
   use type PaymentGatewayInterface_Access_Array_Access_Array;
   subtype PaymentGatewayInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array_Access;
   use type PaymentGatewayInterface_Access_Array_Access_Array_Access;
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


   type PaymentGatewayEntityInterface is interface and BasicDataTableInterface;
   subtype PaymentGatewayEntityInterface_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.PaymentGatewayEntityInterface_Access;
   function "=" (Left, Right : PaymentGatewayEntityInterface_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References."=";
   subtype PaymentGatewayEntityInterface_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.PaymentGatewayEntityInterface_Access_Array;
   function "=" (Left, Right : PaymentGatewayEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References."=";
   subtype PaymentGatewayEntityInterface_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.PaymentGatewayEntityInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References."=";
   function Java_Box (Value : PaymentGatewayEntityInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayEntityInterface_Access_Array (Value : access Java_Object'Class) return PaymentGatewayEntityInterface_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.Java_Unbox_PaymentGatewayEntityInterface_Access_Array;
   subtype PaymentGatewayEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.PaymentGatewayEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References."=";
   subtype PaymentGatewayEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.PaymentGatewayEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References."=";
   function Java_Box (Value : PaymentGatewayEntityInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayEntityInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayEntityInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package_References.Java_Unbox_PaymentGatewayEntityInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PaymentGatewayEntityInterface (Value : PaymentGatewayEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPaymentGatewayInterface (This : in out PaymentGatewayEntityInterface; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return PaymentGatewayInterface_Access is abstract;
   procedure getPaymentGatewayInterface (This : in out PaymentGatewayEntityInterface; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) is abstract;
   function findPaymentTypeVectorByStore (This : in out PaymentGatewayEntityInterface; storeName : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure findPaymentTypeVectorByStore (This : in out PaymentGatewayEntityInterface; storeName : Unbounded_String) is abstract;
   procedure remove (This : in out PaymentGatewayEntityInterface; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) is abstract;
   procedure add (This : in out PaymentGatewayEntityInterface; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is abstract;
   procedure update (This : in out PaymentGatewayEntityInterface; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is abstract;

end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package;


