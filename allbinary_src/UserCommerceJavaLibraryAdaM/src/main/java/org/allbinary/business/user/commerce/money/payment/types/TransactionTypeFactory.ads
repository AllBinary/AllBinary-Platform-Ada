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
limited with org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package;
package org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References is
   type TransactionTypeFactory_Access is access all org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package.TransactionTypeFactory'Class;
   type TransactionTypeFactory_Access_Array is array (Natural range <>) of TransactionTypeFactory_Access;
   type TransactionTypeFactory_Access_Array_Access is access all TransactionTypeFactory_Access_Array;
   type TransactionTypeFactory_Access_Array_Access_Array is array (Natural range <>) of TransactionTypeFactory_Access_Array_Access;
   type TransactionTypeFactory_Access_Array_Access_Array_Access is access all TransactionTypeFactory_Access_Array_Access_Array;
   type TransactionTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in TransactionTypeFactory_Access_Array_Object'Class then TransactionTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransactionTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransactionTypeFactory_Access_Array_Access_Array_Object'Class then TransactionTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package;
with org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References;

package org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package is

   package Reference_Types is
   subtype TransactionType_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access;
   use type TransactionType_Access;
   subtype TransactionType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access_Array;
   use type TransactionType_Access_Array;
   subtype TransactionType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access_Array_Access;
   use type TransactionType_Access_Array_Access;
   subtype TransactionType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access_Array_Access_Array;
   use type TransactionType_Access_Array_Access_Array;
   subtype TransactionType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access_Array_Access_Array_Access;
   use type TransactionType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransactionTypeFactory_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.TransactionTypeFactory_Access;
   function "=" (Left, Right : TransactionTypeFactory_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References."=";
   subtype TransactionTypeFactory_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.TransactionTypeFactory_Access_Array;
   function "=" (Left, Right : TransactionTypeFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References."=";
   subtype TransactionTypeFactory_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.TransactionTypeFactory_Access_Array_Access;
   function "=" (Left, Right : TransactionTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References."=";
   function Java_Box (Value : TransactionTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.Java_Box;
   function Java_Unbox_TransactionTypeFactory_Access_Array (Value : access Java_Object'Class) return TransactionTypeFactory_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.Java_Unbox_TransactionTypeFactory_Access_Array;
   subtype TransactionTypeFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.TransactionTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransactionTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References."=";
   subtype TransactionTypeFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.TransactionTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransactionTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References."=";
   function Java_Box (Value : TransactionTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.Java_Box;
   function Java_Unbox_TransactionTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransactionTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package_References.Java_Unbox_TransactionTypeFactory_Access_Array_Access_Array;

   type TransactionTypeFactory is new Java_Object with record
      SALE : TransactionType_Access;
      CREDIT : TransactionType_Access;
      AUTHORIZATION : TransactionType_Access;
      DELAYEDCAPTURE : TransactionType_Access;
      VOID : TransactionType_Access;
      INQUIRY : TransactionType_Access;
   end record;
   instance : TransactionTypeFactory_Access;

   procedure Initialize (This : in out TransactionTypeFactory'Class);
   function Create return TransactionTypeFactory_Access;
   function getInstance return TransactionTypeFactory_Access;

end org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package;


