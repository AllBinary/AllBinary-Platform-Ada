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
limited with org.allbinary.data.generator.PaymentGatewayIdGenerator_Package;
package org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References is
   type PaymentGatewayIdGenerator_Access is access all org.allbinary.data.generator.PaymentGatewayIdGenerator_Package.PaymentGatewayIdGenerator'Class;
   type PaymentGatewayIdGenerator_Access_Array is array (Natural range <>) of PaymentGatewayIdGenerator_Access;
   type PaymentGatewayIdGenerator_Access_Array_Access is access all PaymentGatewayIdGenerator_Access_Array;
   type PaymentGatewayIdGenerator_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayIdGenerator_Access_Array_Access;
   type PaymentGatewayIdGenerator_Access_Array_Access_Array_Access is access all PaymentGatewayIdGenerator_Access_Array_Access_Array;
   type PaymentGatewayIdGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayIdGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayIdGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayIdGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayIdGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayIdGenerator_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayIdGenerator_Access_Array_Object'Class then PaymentGatewayIdGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayIdGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayIdGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayIdGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayIdGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayIdGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayIdGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayIdGenerator_Access_Array_Access_Array_Object'Class then PaymentGatewayIdGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References;

with org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.generator.UniqueIdGenerator_Package; use org.allbinary.data.generator.UniqueIdGenerator_Package;

package org.allbinary.data.generator.PaymentGatewayIdGenerator_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayIdGenerator_Access is org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.PaymentGatewayIdGenerator_Access;
   function "=" (Left, Right : PaymentGatewayIdGenerator_Access) return Boolean renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References."=";
   subtype PaymentGatewayIdGenerator_Access_Array is org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.PaymentGatewayIdGenerator_Access_Array;
   function "=" (Left, Right : PaymentGatewayIdGenerator_Access_Array) return Boolean renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References."=";
   subtype PaymentGatewayIdGenerator_Access_Array_Access is org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.PaymentGatewayIdGenerator_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayIdGenerator_Access_Array_Access) return Boolean renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References."=";
   function Java_Box (Value : PaymentGatewayIdGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayIdGenerator_Access_Array (Value : access Java_Object'Class) return PaymentGatewayIdGenerator_Access_Array_Access renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.Java_Unbox_PaymentGatewayIdGenerator_Access_Array;
   subtype PaymentGatewayIdGenerator_Access_Array_Access_Array is org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.PaymentGatewayIdGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayIdGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References."=";
   subtype PaymentGatewayIdGenerator_Access_Array_Access_Array_Access is org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.PaymentGatewayIdGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayIdGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References."=";
   function Java_Box (Value : PaymentGatewayIdGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayIdGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayIdGenerator_Access_Array_Access_Array_Access renames org.allbinary.data.generator.PaymentGatewayIdGenerator_Package_References.Java_Unbox_PaymentGatewayIdGenerator_Access_Array_Access_Array;

   type PaymentGatewayIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentGatewayIdGenerator'Class);
   function Create return PaymentGatewayIdGenerator_Access;

end org.allbinary.data.generator.PaymentGatewayIdGenerator_Package;


