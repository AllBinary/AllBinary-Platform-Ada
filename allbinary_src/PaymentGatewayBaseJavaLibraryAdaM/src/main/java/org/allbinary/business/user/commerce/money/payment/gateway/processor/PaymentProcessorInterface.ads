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
limited with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References is
   type PaymentProcessorInterface_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package.PaymentProcessorInterface'Class;
   type PaymentProcessorInterface_Access_Array is array (Natural range <>) of PaymentProcessorInterface_Access;
   type PaymentProcessorInterface_Access_Array_Access is access all PaymentProcessorInterface_Access_Array;
   type PaymentProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentProcessorInterface_Access_Array_Access;
   type PaymentProcessorInterface_Access_Array_Access_Array_Access is access all PaymentProcessorInterface_Access_Array_Access_Array;
   type PaymentProcessorInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentProcessorInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentProcessorInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentProcessorInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentProcessorInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentProcessorInterface_Access_Array_Access is (if Value /= null and then Value.all in PaymentProcessorInterface_Access_Array_Object'Class then PaymentProcessorInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentProcessorInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentProcessorInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentProcessorInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentProcessorInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentProcessorInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentProcessorInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentProcessorInterface_Access_Array_Access_Array_Object'Class then PaymentProcessorInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type PaymentProcessorInterface is interface and DomNodeInterface;
   subtype PaymentProcessorInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access;
   function "=" (Left, Right : PaymentProcessorInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References."=";
   subtype PaymentProcessorInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access_Array;
   function "=" (Left, Right : PaymentProcessorInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References."=";
   subtype PaymentProcessorInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References."=";
   function Java_Box (Value : PaymentProcessorInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.Java_Box;
   function Java_Unbox_PaymentProcessorInterface_Access_Array (Value : access Java_Object'Class) return PaymentProcessorInterface_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.Java_Unbox_PaymentProcessorInterface_Access_Array;
   subtype PaymentProcessorInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References."=";
   subtype PaymentProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.PaymentProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References."=";
   function Java_Box (Value : PaymentProcessorInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.Java_Box;
   function Java_Unbox_PaymentProcessorInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentProcessorInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package_References.Java_Unbox_PaymentProcessorInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PaymentProcessorInterface (Value : PaymentProcessorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure process (This : in out PaymentProcessorInterface) is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package;


