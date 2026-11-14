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
limited with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References is
   type PaymentProcessorInterfaceFactory_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package.PaymentProcessorInterfaceFactory'Class;
   type PaymentProcessorInterfaceFactory_Access_Array is array (Natural range <>) of PaymentProcessorInterfaceFactory_Access;
   type PaymentProcessorInterfaceFactory_Access_Array_Access is access all PaymentProcessorInterfaceFactory_Access_Array;
   type PaymentProcessorInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentProcessorInterfaceFactory_Access_Array_Access;
   type PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access is access all PaymentProcessorInterfaceFactory_Access_Array_Access_Array;
   type PaymentProcessorInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentProcessorInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentProcessorInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentProcessorInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentProcessorInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentProcessorInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in PaymentProcessorInterfaceFactory_Access_Array_Object'Class then PaymentProcessorInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentProcessorInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Object'Class then PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References;
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
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
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


   subtype PaymentProcessorInterfaceFactory_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.PaymentProcessorInterfaceFactory_Access;
   function "=" (Left, Right : PaymentProcessorInterfaceFactory_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References."=";
   subtype PaymentProcessorInterfaceFactory_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.PaymentProcessorInterfaceFactory_Access_Array;
   function "=" (Left, Right : PaymentProcessorInterfaceFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References."=";
   subtype PaymentProcessorInterfaceFactory_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.PaymentProcessorInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessorInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References."=";
   function Java_Box (Value : PaymentProcessorInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentProcessorInterfaceFactory_Access_Array (Value : access Java_Object'Class) return PaymentProcessorInterfaceFactory_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.Java_Unbox_PaymentProcessorInterfaceFactory_Access_Array;
   subtype PaymentProcessorInterfaceFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.PaymentProcessorInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentProcessorInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References."=";
   subtype PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References."=";
   function Java_Box (Value : PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentProcessorInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentProcessorInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package_References.Java_Unbox_PaymentProcessorInterfaceFactory_Access_Array_Access_Array;

   type PaymentProcessorInterfaceFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : PaymentProcessorInterfaceFactory_Access;

   procedure Initialize (This : in out PaymentProcessorInterfaceFactory'Class);
   function Create return PaymentProcessorInterfaceFactory_Access;
   function getInstance return PaymentProcessorInterfaceFactory_Access;
   function getInstance (This : in out PaymentProcessorInterfaceFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentProcessorInterface_Access;
   procedure getInstance (This : in out PaymentProcessorInterfaceFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package;


