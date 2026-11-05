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

limited with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References is
   type PaymentProcessorInterfaceFactoryInterface_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package.PaymentProcessorInterfaceFactoryInterface'Class;
   type PaymentProcessorInterfaceFactoryInterface_Access_Array is array (Natural range <>) of PaymentProcessorInterfaceFactoryInterface_Access;
   type PaymentProcessorInterfaceFactoryInterface_Access_Array_Access is access all PaymentProcessorInterfaceFactoryInterface_Access_Array;
   type PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentProcessorInterfaceFactoryInterface_Access_Array_Access;
   type PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package is

   package PaymentTransactionInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
   subtype PaymentTransactionInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access;
   use type PaymentTransactionInterface_Access;
   subtype PaymentTransactionInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array;
   use type PaymentTransactionInterface_Access_Array;
   subtype PaymentTransactionInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access;
   use type PaymentTransactionInterface_Access_Array_Access;
   subtype PaymentTransactionInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array;
   use type PaymentTransactionInterface_Access_Array_Access_Array;
   subtype PaymentTransactionInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array_Access;
   use type PaymentTransactionInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype PaymentProcessorInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access;
   use type PaymentProcessorInterface_Access;
   subtype PaymentProcessorInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access_Array;
   use type PaymentProcessorInterface_Access_Array;
   subtype PaymentProcessorInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access_Array_Access;
   use type PaymentProcessorInterface_Access_Array_Access;
   subtype PaymentProcessorInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access_Array_Access_Array;
   use type PaymentProcessorInterface_Access_Array_Access_Array;
   subtype PaymentProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access_Array_Access_Array_Access;
   use type PaymentProcessorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PaymentProcessorInterfaceFactoryInterface is interface;
   subtype PaymentProcessorInterfaceFactoryInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access;
   function "=" (Left, Right : PaymentProcessorInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References."=";
   subtype PaymentProcessorInterfaceFactoryInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : PaymentProcessorInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References."=";
   subtype PaymentProcessorInterfaceFactoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessorInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References."=";
   subtype PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References."=";
   subtype PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_PaymentProcessorInterfaceFactoryInterface (Value : PaymentProcessorInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out PaymentProcessorInterfaceFactoryInterface; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; paymentTransactionInterface_Param : access PaymentTransactionInterface_Package.PaymentTransactionInterface'Class) return PaymentProcessorInterface_Access is abstract;
   procedure getInstance (This : in out PaymentProcessorInterfaceFactoryInterface; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; paymentTransactionInterface_Param : access PaymentTransactionInterface_Package.PaymentTransactionInterface'Class) is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package;


