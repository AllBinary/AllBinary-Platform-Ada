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
limited with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
package org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References is
   type BasketInterface_Access is access all org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package.BasketInterface'Class;
   type BasketInterface_Access_Array is array (Natural range <>) of BasketInterface_Access;
   type BasketInterface_Access_Array_Access is access all BasketInterface_Access_Array;
   type BasketInterface_Access_Array_Access_Array is array (Natural range <>) of BasketInterface_Access_Array_Access;
   type BasketInterface_Access_Array_Access_Array_Access is access all BasketInterface_Access_Array_Access_Array;
   type BasketInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasketInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BasketInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasketInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasketInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasketInterface_Access_Array_Access is (if Value /= null and then Value.all in BasketInterface_Access_Array_Object'Class then BasketInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BasketInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasketInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasketInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasketInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasketInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasketInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasketInterface_Access_Array_Access_Array_Object'Class then BasketInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References;

with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with java.util.Set_Package; use java.util.Set_Package;
limited with org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;

package org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Set_Package renames Standard.java.util.Set_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package Reference_Types is
   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   use type Money_Access;
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   use type Money_Access_Array;
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   use type Money_Access_Array_Access;
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   use type Money_Access_Array_Access_Array;
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   use type Money_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BasketInterface is interface;
   subtype BasketInterface_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access;
   function "=" (Left, Right : BasketInterface_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References."=";
   subtype BasketInterface_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array;
   function "=" (Left, Right : BasketInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References."=";
   subtype BasketInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access;
   function "=" (Left, Right : BasketInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References."=";
   function Java_Box (Value : BasketInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.Java_Box;
   function Java_Unbox_BasketInterface_Access_Array (Value : access Java_Object'Class) return BasketInterface_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.Java_Unbox_BasketInterface_Access_Array;
   subtype BasketInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasketInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References."=";
   subtype BasketInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasketInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References."=";
   function Java_Box (Value : BasketInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.Java_Box;
   function Java_Unbox_BasketInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BasketInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.Java_Unbox_BasketInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BasketInterface (Value : BasketInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure addItem (This : in out BasketInterface; id : Unbounded_String; num : Unbounded_String) is abstract;
   procedure removeItem (This : in out BasketInterface; id : Unbounded_String) is abstract;
   procedure adjustItem (This : in out BasketInterface; id : Unbounded_String; num : Unbounded_String) is abstract;
   function getTotalWeight (This : in out BasketInterface) return Unbounded_String is abstract;
   function getNumberOfItems (This : in out BasketInterface) return Integer is abstract;
   function getIds (This : in out BasketInterface) return Set_Access is abstract;
   function getItems (This : in out BasketInterface) return HashMap_Access is abstract;
   function getNumberOf (This : in out BasketInterface; product : Unbounded_String) return Integer is abstract;
   procedure getNumberOf (This : in out BasketInterface; product : Unbounded_String) is abstract;
   function getSubTotal (This : in out BasketInterface) return Money_Access is abstract;

end org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;


