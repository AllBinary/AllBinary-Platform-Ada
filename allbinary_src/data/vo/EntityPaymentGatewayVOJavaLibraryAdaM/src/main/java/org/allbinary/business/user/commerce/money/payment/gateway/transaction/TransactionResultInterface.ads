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
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References is
   type TransactionResultInterface_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package.TransactionResultInterface'Class;
   type TransactionResultInterface_Access_Array is array (Natural range <>) of TransactionResultInterface_Access;
   type TransactionResultInterface_Access_Array_Access is access all TransactionResultInterface_Access_Array;
   type TransactionResultInterface_Access_Array_Access_Array is array (Natural range <>) of TransactionResultInterface_Access_Array_Access;
   type TransactionResultInterface_Access_Array_Access_Array_Access is access all TransactionResultInterface_Access_Array_Access_Array;
   type TransactionResultInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionResultInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionResultInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionResultInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionResultInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionResultInterface_Access_Array_Access is (if Value /= null and then Value.all in TransactionResultInterface_Access_Array_Object'Class then TransactionResultInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TransactionResultInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionResultInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionResultInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionResultInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionResultInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionResultInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransactionResultInterface_Access_Array_Access_Array_Object'Class then TransactionResultInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   type TransactionResultInterface is interface;
   subtype TransactionResultInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access;
   function "=" (Left, Right : TransactionResultInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   subtype TransactionResultInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array;
   function "=" (Left, Right : TransactionResultInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   subtype TransactionResultInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access;
   function "=" (Left, Right : TransactionResultInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   function Java_Box (Value : TransactionResultInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.Java_Box;
   function Java_Unbox_TransactionResultInterface_Access_Array (Value : access Java_Object'Class) return TransactionResultInterface_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.Java_Unbox_TransactionResultInterface_Access_Array;
   subtype TransactionResultInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransactionResultInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   subtype TransactionResultInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransactionResultInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   function Java_Box (Value : TransactionResultInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.Java_Box;
   function Java_Unbox_TransactionResultInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TransactionResultInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.Java_Unbox_TransactionResultInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TransactionResultInterface (Value : TransactionResultInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function toString (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getValues (This : in out TransactionResultInterface) return BasicArrayList_Access is abstract;
   function getResult (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getPnRef (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getRespMsg (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getAvsAddr (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getAvsZip (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getOrigResult (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getStatus (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getFraudCode (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getFraudMsg (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getErrCode (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getScore (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getReason1 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getReason2 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getReason3 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException1 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException2 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException3 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException4 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException5 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException6 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException7 (This : in out TransactionResultInterface) return Unbounded_String is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;


