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
limited with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References is
   type PaymentGatewayEntityFactory_Access is access all org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package.PaymentGatewayEntityFactory'Class;
   type PaymentGatewayEntityFactory_Access_Array is array (Natural range <>) of PaymentGatewayEntityFactory_Access;
   type PaymentGatewayEntityFactory_Access_Array_Access is access all PaymentGatewayEntityFactory_Access_Array;
   type PaymentGatewayEntityFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayEntityFactory_Access_Array_Access;
   type PaymentGatewayEntityFactory_Access_Array_Access_Array_Access is access all PaymentGatewayEntityFactory_Access_Array_Access_Array;
   type PaymentGatewayEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayEntityFactory_Access_Array_Object'Class then PaymentGatewayEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayEntityFactory_Access_Array_Access_Array_Object'Class then PaymentGatewayEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References;

package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package is

   package Reference_Types is
   subtype PaymentGatewayEntity_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access;
   use type PaymentGatewayEntity_Access;
   subtype PaymentGatewayEntity_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access_Array;
   use type PaymentGatewayEntity_Access_Array;
   subtype PaymentGatewayEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access_Array_Access;
   use type PaymentGatewayEntity_Access_Array_Access;
   subtype PaymentGatewayEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access_Array_Access_Array;
   use type PaymentGatewayEntity_Access_Array_Access_Array;
   subtype PaymentGatewayEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access_Array_Access_Array_Access;
   use type PaymentGatewayEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayEntityFactory_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.PaymentGatewayEntityFactory_Access;
   function "=" (Left, Right : PaymentGatewayEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References."=";
   subtype PaymentGatewayEntityFactory_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.PaymentGatewayEntityFactory_Access_Array;
   function "=" (Left, Right : PaymentGatewayEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References."=";
   subtype PaymentGatewayEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.PaymentGatewayEntityFactory_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References."=";
   function Java_Box (Value : PaymentGatewayEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayEntityFactory_Access_Array (Value : access Java_Object'Class) return PaymentGatewayEntityFactory_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.Java_Unbox_PaymentGatewayEntityFactory_Access_Array;
   subtype PaymentGatewayEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.PaymentGatewayEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References."=";
   subtype PaymentGatewayEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.PaymentGatewayEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References."=";
   function Java_Box (Value : PaymentGatewayEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package_References.Java_Unbox_PaymentGatewayEntityFactory_Access_Array_Access_Array;

   type PaymentGatewayEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out PaymentGatewayEntityFactory'Class);
   function Create return PaymentGatewayEntityFactory_Access;
   function getInstance return PaymentGatewayEntity_Access;

end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;


