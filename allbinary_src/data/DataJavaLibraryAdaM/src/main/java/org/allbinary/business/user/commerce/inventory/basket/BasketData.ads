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

limited with org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
package org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References is
   type BasketData_Access is access all org.allbinary.business.user.commerce.inventory.basket.BasketData_Package.BasketData'Class;
   type BasketData_Access_Array is array (Natural range <>) of BasketData_Access;
   type BasketData_Access_Array_Access is access all BasketData_Access_Array;
   type BasketData_Access_Array_Access_Array is array (Natural range <>) of BasketData_Access_Array_Access;
   type BasketData_Access_Array_Access_Array_Access is access all BasketData_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References;

with org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.basket.BasketData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasketData_Access is org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References.BasketData_Access;
   function "=" (Left, Right : BasketData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References."=";
   subtype BasketData_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References.BasketData_Access_Array;
   function "=" (Left, Right : BasketData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References."=";
   subtype BasketData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References.BasketData_Access_Array_Access;
   function "=" (Left, Right : BasketData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References."=";
   subtype BasketData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References.BasketData_Access_Array_Access_Array;
   function "=" (Left, Right : BasketData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References."=";
   subtype BasketData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References.BasketData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasketData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketData_Package_References."=";

   type BasketData is new Java_Object with null record;
   BASKET : Unbounded_String;
   NAME : Unbounded_String;
   BASKETREVIEW : Unbounded_String;
   TOTALWEIGHT : Unbounded_String;
   ITEMTOTAL : Unbounded_String;
   ITEMTOTALINBASKET : Unbounded_String;
   SUBTOTAL : Unbounded_String;
   ISEMPTY : Unbounded_String;
   INSERT : Unbounded_String;
   DELETE : Unbounded_String;
   ADJUST : Unbounded_String;

   procedure Initialize (This : in out BasketData'Class);
   function Create return BasketData_Access;

end org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;


