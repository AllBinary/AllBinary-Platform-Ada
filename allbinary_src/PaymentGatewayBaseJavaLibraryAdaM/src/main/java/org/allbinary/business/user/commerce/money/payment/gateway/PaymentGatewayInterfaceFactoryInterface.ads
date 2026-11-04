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

limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References is
   type PaymentGatewayInterfaceFactoryInterface_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package.PaymentGatewayInterfaceFactoryInterface'Class;
   type PaymentGatewayInterfaceFactoryInterface_Access_Array is array (Natural range <>) of PaymentGatewayInterfaceFactoryInterface_Access;
   type PaymentGatewayInterfaceFactoryInterface_Access_Array_Access is access all PaymentGatewayInterfaceFactoryInterface_Access_Array;
   type PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayInterfaceFactoryInterface_Access_Array_Access;
   type PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   type PaymentGatewayInterfaceFactoryInterface is interface;
   subtype PaymentGatewayInterfaceFactoryInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access;
   function "=" (Left, Right : PaymentGatewayInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References."=";
   subtype PaymentGatewayInterfaceFactoryInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : PaymentGatewayInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References."=";
   subtype PaymentGatewayInterfaceFactoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References."=";
   subtype PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References."=";
   subtype PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References.PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_PaymentGatewayInterfaceFactoryInterface (Value : PaymentGatewayInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out PaymentGatewayInterfaceFactoryInterface; hashMap_Param : access HashMap_Package.HashMap'Class) return PaymentGatewayInterface_Access is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;


