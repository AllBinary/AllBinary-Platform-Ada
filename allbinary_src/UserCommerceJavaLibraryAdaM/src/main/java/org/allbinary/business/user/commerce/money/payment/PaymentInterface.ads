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

limited with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
package org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References is
   type PaymentInterface_Access is access all org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package.PaymentInterface'Class;
   type PaymentInterface_Access_Array is array (Natural range <>) of PaymentInterface_Access;
   type PaymentInterface_Access_Array_Access is access all PaymentInterface_Access_Array;
   type PaymentInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentInterface_Access_Array_Access;
   type PaymentInterface_Access_Array_Access_Array_Access is access all PaymentInterface_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type PaymentInterface is interface;
   subtype PaymentInterface_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access;
   function "=" (Left, Right : PaymentInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References."=";
   subtype PaymentInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array;
   function "=" (Left, Right : PaymentInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References."=";
   subtype PaymentInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References."=";
   subtype PaymentInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References."=";
   subtype PaymentInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References."=";
   function Java_Object_Access_From_PaymentInterface (Value : PaymentInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setName (This : in out PaymentInterface; value : Unbounded_String) is abstract;
   procedure setType (This : in out PaymentInterface; value : Unbounded_String) is abstract;
   procedure setExpiration (This : in out PaymentInterface; value : Unbounded_String) is abstract;
   procedure setNumber (This : in out PaymentInterface; value : Unbounded_String) is abstract;
   function getId (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getName (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getType (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getExpiration (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getEncryption (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getNumber (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getLastFour (This : in out PaymentInterface) return Unbounded_String is abstract;
   function isDefault (This : in out PaymentInterface) return Boolean is abstract;

end org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;


