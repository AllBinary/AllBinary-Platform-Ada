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

limited with org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package;
package org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References is
   type CustomItemData_Access is access all org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package.CustomItemData'Class;
   type CustomItemData_Access_Array is array (Natural range <>) of CustomItemData_Access;
   type CustomItemData_Access_Array_Access is access all CustomItemData_Access_Array;
   type CustomItemData_Access_Array_Access_Array is array (Natural range <>) of CustomItemData_Access_Array_Access;
   type CustomItemData_Access_Array_Access_Array_Access is access all CustomItemData_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References;

with org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CustomItemData_Access is org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References.CustomItemData_Access;
   function "=" (Left, Right : CustomItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References."=";
   subtype CustomItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References.CustomItemData_Access_Array;
   function "=" (Left, Right : CustomItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References."=";
   subtype CustomItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References.CustomItemData_Access_Array_Access;
   function "=" (Left, Right : CustomItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References."=";
   subtype CustomItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References.CustomItemData_Access_Array_Access_Array;
   function "=" (Left, Right : CustomItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References."=";
   subtype CustomItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References.CustomItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package_References."=";

   type CustomItemData is new Java_Object with null record;
   PACKAGE_Id : Unbounded_String;

   procedure Initialize (This : in out CustomItemData'Class);
   function Create return CustomItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package;


