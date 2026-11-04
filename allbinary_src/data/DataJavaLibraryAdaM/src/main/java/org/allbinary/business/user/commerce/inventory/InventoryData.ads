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

limited with org.allbinary.business.user.commerce.inventory.InventoryData_Package;
package org.allbinary.business.user.commerce.inventory.InventoryData_Package_References is
   type InventoryData_Access is access all org.allbinary.business.user.commerce.inventory.InventoryData_Package.InventoryData'Class;
   type InventoryData_Access_Array is array (Natural range <>) of InventoryData_Access;
   type InventoryData_Access_Array_Access is access all InventoryData_Access_Array;
   type InventoryData_Access_Array_Access_Array is array (Natural range <>) of InventoryData_Access_Array_Access;
   type InventoryData_Access_Array_Access_Array_Access is access all InventoryData_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.InventoryData_Package_References;

with org.allbinary.business.user.commerce.inventory.InventoryData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.InventoryData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InventoryData_Access is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access;
   function "=" (Left, Right : InventoryData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   subtype InventoryData_Access_Array is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access_Array;
   function "=" (Left, Right : InventoryData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   subtype InventoryData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access_Array_Access;
   function "=" (Left, Right : InventoryData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   subtype InventoryData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";
   subtype InventoryData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.InventoryData_Package_References.InventoryData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.InventoryData_Package_References."=";

   type InventoryData is new Java_Object with null record;
   INVENTORY : Unbounded_String;

   procedure Initialize (This : in out InventoryData'Class);
   function Create return InventoryData_Access;

end org.allbinary.business.user.commerce.inventory.InventoryData_Package;


