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
limited with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;
package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References is
   type PaymentEntityFactory_Access is access all org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package.PaymentEntityFactory'Class;
   type PaymentEntityFactory_Access_Array is array (Natural range <>) of PaymentEntityFactory_Access;
   type PaymentEntityFactory_Access_Array_Access is access all PaymentEntityFactory_Access_Array;
   type PaymentEntityFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentEntityFactory_Access_Array_Access;
   type PaymentEntityFactory_Access_Array_Access_Array_Access is access all PaymentEntityFactory_Access_Array_Access_Array;
   type PaymentEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in PaymentEntityFactory_Access_Array_Object'Class then PaymentEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentEntityFactory_Access_Array_Access_Array_Object'Class then PaymentEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;
with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References;

package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype PaymentEntity_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access;
   use type PaymentEntity_Access;
   subtype PaymentEntity_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access_Array;
   use type PaymentEntity_Access_Array;
   subtype PaymentEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access_Array_Access;
   use type PaymentEntity_Access_Array_Access;
   subtype PaymentEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access_Array_Access_Array;
   use type PaymentEntity_Access_Array_Access_Array;
   subtype PaymentEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access_Array_Access_Array_Access;
   use type PaymentEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentEntityFactory_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.PaymentEntityFactory_Access;
   function "=" (Left, Right : PaymentEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References."=";
   subtype PaymentEntityFactory_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.PaymentEntityFactory_Access_Array;
   function "=" (Left, Right : PaymentEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References."=";
   subtype PaymentEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.PaymentEntityFactory_Access_Array_Access;
   function "=" (Left, Right : PaymentEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References."=";
   function Java_Box (Value : PaymentEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentEntityFactory_Access_Array (Value : access Java_Object'Class) return PaymentEntityFactory_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.Java_Unbox_PaymentEntityFactory_Access_Array;
   subtype PaymentEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.PaymentEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References."=";
   subtype PaymentEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.PaymentEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References."=";
   function Java_Box (Value : PaymentEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package_References.Java_Unbox_PaymentEntityFactory_Access_Array_Access_Array;

   type PaymentEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : PaymentEntityFactory_Access;

   procedure Initialize (This : in out PaymentEntityFactory'Class);
   function Create return PaymentEntityFactory_Access;
   function getInstance return PaymentEntityFactory_Access;
   function getPaymentEntityInstance (This : in out PaymentEntityFactory) return PaymentEntity_Access;

end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;


