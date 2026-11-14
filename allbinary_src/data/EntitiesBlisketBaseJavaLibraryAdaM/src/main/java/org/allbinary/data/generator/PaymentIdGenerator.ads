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
limited with org.allbinary.data.generator.PaymentIdGenerator_Package;
package org.allbinary.data.generator.PaymentIdGenerator_Package_References is
   type PaymentIdGenerator_Access is access all org.allbinary.data.generator.PaymentIdGenerator_Package.PaymentIdGenerator'Class;
   type PaymentIdGenerator_Access_Array is array (Natural range <>) of PaymentIdGenerator_Access;
   type PaymentIdGenerator_Access_Array_Access is access all PaymentIdGenerator_Access_Array;
   type PaymentIdGenerator_Access_Array_Access_Array is array (Natural range <>) of PaymentIdGenerator_Access_Array_Access;
   type PaymentIdGenerator_Access_Array_Access_Array_Access is access all PaymentIdGenerator_Access_Array_Access_Array;
   type PaymentIdGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentIdGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentIdGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentIdGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentIdGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentIdGenerator_Access_Array_Access is (if Value /= null and then Value.all in PaymentIdGenerator_Access_Array_Object'Class then PaymentIdGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentIdGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentIdGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentIdGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentIdGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentIdGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentIdGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentIdGenerator_Access_Array_Access_Array_Object'Class then PaymentIdGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.generator.PaymentIdGenerator_Package_References;

with org.allbinary.data.generator.PaymentIdGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.generator.UniqueIdGenerator_Package; use org.allbinary.data.generator.UniqueIdGenerator_Package;

package org.allbinary.data.generator.PaymentIdGenerator_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentIdGenerator_Access is org.allbinary.data.generator.PaymentIdGenerator_Package_References.PaymentIdGenerator_Access;
   function "=" (Left, Right : PaymentIdGenerator_Access) return Boolean renames org.allbinary.data.generator.PaymentIdGenerator_Package_References."=";
   subtype PaymentIdGenerator_Access_Array is org.allbinary.data.generator.PaymentIdGenerator_Package_References.PaymentIdGenerator_Access_Array;
   function "=" (Left, Right : PaymentIdGenerator_Access_Array) return Boolean renames org.allbinary.data.generator.PaymentIdGenerator_Package_References."=";
   subtype PaymentIdGenerator_Access_Array_Access is org.allbinary.data.generator.PaymentIdGenerator_Package_References.PaymentIdGenerator_Access_Array_Access;
   function "=" (Left, Right : PaymentIdGenerator_Access_Array_Access) return Boolean renames org.allbinary.data.generator.PaymentIdGenerator_Package_References."=";
   function Java_Box (Value : PaymentIdGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.PaymentIdGenerator_Package_References.Java_Box;
   function Java_Unbox_PaymentIdGenerator_Access_Array (Value : access Java_Object'Class) return PaymentIdGenerator_Access_Array_Access renames org.allbinary.data.generator.PaymentIdGenerator_Package_References.Java_Unbox_PaymentIdGenerator_Access_Array;
   subtype PaymentIdGenerator_Access_Array_Access_Array is org.allbinary.data.generator.PaymentIdGenerator_Package_References.PaymentIdGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentIdGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.data.generator.PaymentIdGenerator_Package_References."=";
   subtype PaymentIdGenerator_Access_Array_Access_Array_Access is org.allbinary.data.generator.PaymentIdGenerator_Package_References.PaymentIdGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentIdGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.generator.PaymentIdGenerator_Package_References."=";
   function Java_Box (Value : PaymentIdGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.PaymentIdGenerator_Package_References.Java_Box;
   function Java_Unbox_PaymentIdGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentIdGenerator_Access_Array_Access_Array_Access renames org.allbinary.data.generator.PaymentIdGenerator_Package_References.Java_Unbox_PaymentIdGenerator_Access_Array_Access_Array;

   type PaymentIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentIdGenerator'Class);
   function Create return PaymentIdGenerator_Access;

end org.allbinary.data.generator.PaymentIdGenerator_Package;


