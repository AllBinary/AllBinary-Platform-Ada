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

limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References is
   type PaymentGatewayMapping_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package.PaymentGatewayMapping'Class;
   type PaymentGatewayMapping_Access_Array is array (Natural range <>) of PaymentGatewayMapping_Access;
   type PaymentGatewayMapping_Access_Array_Access is access all PaymentGatewayMapping_Access_Array;
   type PaymentGatewayMapping_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayMapping_Access_Array_Access;
   type PaymentGatewayMapping_Access_Array_Access_Array_Access is access all PaymentGatewayMapping_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References;
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
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayMapping_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References.PaymentGatewayMapping_Access;
   function "=" (Left, Right : PaymentGatewayMapping_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References."=";
   subtype PaymentGatewayMapping_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References.PaymentGatewayMapping_Access_Array;
   function "=" (Left, Right : PaymentGatewayMapping_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References."=";
   subtype PaymentGatewayMapping_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References.PaymentGatewayMapping_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayMapping_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References."=";
   subtype PaymentGatewayMapping_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References.PaymentGatewayMapping_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References."=";
   subtype PaymentGatewayMapping_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References.PaymentGatewayMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package_References."=";

   type PaymentGatewayMapping is new Java_Object and TableMappingInterface with record
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayMapping'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class);
   function Create (paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) return PaymentGatewayMapping_Access;
   function toHashMap (This : in out PaymentGatewayMapping) return HashMap_Access;
   function toVector (This : in out PaymentGatewayMapping) return BasicArrayList_Access;
   function getKey (This : in out PaymentGatewayMapping) return Java_Object_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package;


