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
limited with org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package;
package org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References is
   type TransactionType_Access is access all org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package.TransactionType'Class;
   type TransactionType_Access_Array is array (Natural range <>) of TransactionType_Access;
   type TransactionType_Access_Array_Access is access all TransactionType_Access_Array;
   type TransactionType_Access_Array_Access_Array is array (Natural range <>) of TransactionType_Access_Array_Access;
   type TransactionType_Access_Array_Access_Array_Access is access all TransactionType_Access_Array_Access_Array;
   type TransactionType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionType_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionType_Access_Array_Access is (if Value /= null and then Value.all in TransactionType_Access_Array_Object'Class then TransactionType_Access_Array_Object'Class (Value.all).Value else null);
   type TransactionType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransactionType_Access_Array_Access_Array_Object'Class then TransactionType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransactionType_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access;
   function "=" (Left, Right : TransactionType_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References."=";
   subtype TransactionType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access_Array;
   function "=" (Left, Right : TransactionType_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References."=";
   subtype TransactionType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access_Array_Access;
   function "=" (Left, Right : TransactionType_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References."=";
   function Java_Box (Value : TransactionType_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.Java_Box;
   function Java_Unbox_TransactionType_Access_Array (Value : access Java_Object'Class) return TransactionType_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.Java_Unbox_TransactionType_Access_Array;
   subtype TransactionType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access_Array_Access_Array;
   function "=" (Left, Right : TransactionType_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References."=";
   subtype TransactionType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.TransactionType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransactionType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References."=";
   function Java_Box (Value : TransactionType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.Java_Box;
   function Java_Unbox_TransactionType_Access_Array_Access_Array (Value : access Java_Object'Class) return TransactionType_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package_References.Java_Unbox_TransactionType_Access_Array_Access_Array;

   type TransactionType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransactionType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TransactionType_Access;
   function isEqual (This : in out TransactionType; transactionType_Var_Param : access TransactionType_Package.TransactionType'Class) return Boolean;
   procedure isEqual (This : in out TransactionType; transactionType_Var_Param : access TransactionType_Package.TransactionType'Class);
   function toString (This : in out TransactionType) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package;


