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
limited with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package;
package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References is
   type PaymentEntityInterface_Access is access all org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package.PaymentEntityInterface'Class;
   type PaymentEntityInterface_Access_Array is array (Natural range <>) of PaymentEntityInterface_Access;
   type PaymentEntityInterface_Access_Array_Access is access all PaymentEntityInterface_Access_Array;
   type PaymentEntityInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentEntityInterface_Access_Array_Access;
   type PaymentEntityInterface_Access_Array_Access_Array_Access is access all PaymentEntityInterface_Access_Array_Access_Array;
   type PaymentEntityInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentEntityInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentEntityInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentEntityInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentEntityInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentEntityInterface_Access_Array_Access is (if Value /= null and then Value.all in PaymentEntityInterface_Access_Array_Object'Class then PaymentEntityInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentEntityInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentEntityInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentEntityInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentEntityInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentEntityInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentEntityInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentEntityInterface_Access_Array_Access_Array_Object'Class then PaymentEntityInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References;
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
limited with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
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
   subtype PaymentInterface_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access;
   use type PaymentInterface_Access;
   subtype PaymentInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array;
   use type PaymentInterface_Access_Array;
   subtype PaymentInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access;
   use type PaymentInterface_Access_Array_Access;
   subtype PaymentInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access_Array;
   use type PaymentInterface_Access_Array_Access_Array;
   subtype PaymentInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access_Array_Access;
   use type PaymentInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PaymentEntityInterface is interface and BasicDataTableInterface;
   subtype PaymentEntityInterface_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.PaymentEntityInterface_Access;
   function "=" (Left, Right : PaymentEntityInterface_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References."=";
   subtype PaymentEntityInterface_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.PaymentEntityInterface_Access_Array;
   function "=" (Left, Right : PaymentEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References."=";
   subtype PaymentEntityInterface_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.PaymentEntityInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References."=";
   function Java_Box (Value : PaymentEntityInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.Java_Box;
   function Java_Unbox_PaymentEntityInterface_Access_Array (Value : access Java_Object'Class) return PaymentEntityInterface_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.Java_Unbox_PaymentEntityInterface_Access_Array;
   subtype PaymentEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.PaymentEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References."=";
   subtype PaymentEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.PaymentEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References."=";
   function Java_Box (Value : PaymentEntityInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.Java_Box;
   function Java_Unbox_PaymentEntityInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentEntityInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package_References.Java_Unbox_PaymentEntityInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PaymentEntityInterface (Value : PaymentEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getLastId (This : in out PaymentEntityInterface; userName : Unbounded_String) return Unbounded_String is abstract;
   procedure getLastId (This : in out PaymentEntityInterface; userName : Unbounded_String) is abstract;
   procedure setDefault (This : in out PaymentEntityInterface; userName : Unbounded_String; index : Integer) is abstract;
   function getDefault (This : in out PaymentEntityInterface; userName : Unbounded_String) return PaymentInterface_Access is abstract;
   procedure getDefault (This : in out PaymentEntityInterface; userName : Unbounded_String) is abstract;
   function get (This : in out PaymentEntityInterface; userName : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure get (This : in out PaymentEntityInterface; userName : Unbounded_String) is abstract;
   procedure add (This : in out PaymentEntityInterface; userName : Unbounded_String; paymentInterface_Param : access PaymentInterface_Package.PaymentInterface'Class) is abstract;
   procedure remove (This : in out PaymentEntityInterface; userName : Unbounded_String; index : Integer) is abstract;
   procedure insert (This : in out PaymentEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;

end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package;


