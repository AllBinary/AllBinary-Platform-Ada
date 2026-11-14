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
limited with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package;
package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References is
   type TransactionResultEntityInterface_Access is access all org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package.TransactionResultEntityInterface'Class;
   type TransactionResultEntityInterface_Access_Array is array (Natural range <>) of TransactionResultEntityInterface_Access;
   type TransactionResultEntityInterface_Access_Array_Access is access all TransactionResultEntityInterface_Access_Array;
   type TransactionResultEntityInterface_Access_Array_Access_Array is array (Natural range <>) of TransactionResultEntityInterface_Access_Array_Access;
   type TransactionResultEntityInterface_Access_Array_Access_Array_Access is access all TransactionResultEntityInterface_Access_Array_Access_Array;
   type TransactionResultEntityInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionResultEntityInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionResultEntityInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionResultEntityInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionResultEntityInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionResultEntityInterface_Access_Array_Access is (if Value /= null and then Value.all in TransactionResultEntityInterface_Access_Array_Object'Class then TransactionResultEntityInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TransactionResultEntityInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionResultEntityInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionResultEntityInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionResultEntityInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionResultEntityInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionResultEntityInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransactionResultEntityInterface_Access_Array_Access_Array_Object'Class then TransactionResultEntityInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package is

   package TransactionResultInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
   package Reference_Types is
   subtype TransactionResultInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access;
   use type TransactionResultInterface_Access;
   subtype TransactionResultInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array;
   use type TransactionResultInterface_Access_Array;
   subtype TransactionResultInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access;
   use type TransactionResultInterface_Access_Array_Access;
   subtype TransactionResultInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access_Array;
   use type TransactionResultInterface_Access_Array_Access_Array;
   subtype TransactionResultInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access_Array_Access;
   use type TransactionResultInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TransactionResultEntityInterface is interface and BasicDataTableInterface;
   subtype TransactionResultEntityInterface_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.TransactionResultEntityInterface_Access;
   function "=" (Left, Right : TransactionResultEntityInterface_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References."=";
   subtype TransactionResultEntityInterface_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.TransactionResultEntityInterface_Access_Array;
   function "=" (Left, Right : TransactionResultEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References."=";
   subtype TransactionResultEntityInterface_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.TransactionResultEntityInterface_Access_Array_Access;
   function "=" (Left, Right : TransactionResultEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References."=";
   function Java_Box (Value : TransactionResultEntityInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.Java_Box;
   function Java_Unbox_TransactionResultEntityInterface_Access_Array (Value : access Java_Object'Class) return TransactionResultEntityInterface_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.Java_Unbox_TransactionResultEntityInterface_Access_Array;
   subtype TransactionResultEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.TransactionResultEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransactionResultEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References."=";
   subtype TransactionResultEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.TransactionResultEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransactionResultEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References."=";
   function Java_Box (Value : TransactionResultEntityInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.Java_Box;
   function Java_Unbox_TransactionResultEntityInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TransactionResultEntityInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package_References.Java_Unbox_TransactionResultEntityInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TransactionResultEntityInterface (Value : TransactionResultEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getTransactionResultInterface (This : in out TransactionResultEntityInterface; orderNumber : Unbounded_String) return TransactionResultInterface_Access is abstract;
   procedure getTransactionResultInterface (This : in out TransactionResultEntityInterface; orderNumber : Unbounded_String) is abstract;
   procedure remove (This : in out TransactionResultEntityInterface; userName : Unbounded_String; orderNumber : Unbounded_String) is abstract;
   procedure add (This : in out TransactionResultEntityInterface; userName : Unbounded_String; orderNumber : Unbounded_String; resultInterface_Param : access TransactionResultInterface_Package.TransactionResultInterface'Class) is abstract;

end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package;


