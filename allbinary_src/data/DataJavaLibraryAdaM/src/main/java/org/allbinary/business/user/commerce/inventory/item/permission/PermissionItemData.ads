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
limited with org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package;
package org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References is
   type PermissionItemData_Access is access all org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package.PermissionItemData'Class;
   type PermissionItemData_Access_Array is array (Natural range <>) of PermissionItemData_Access;
   type PermissionItemData_Access_Array_Access is access all PermissionItemData_Access_Array;
   type PermissionItemData_Access_Array_Access_Array is array (Natural range <>) of PermissionItemData_Access_Array_Access;
   type PermissionItemData_Access_Array_Access_Array_Access is access all PermissionItemData_Access_Array_Access_Array;
   type PermissionItemData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PermissionItemData_Access_Array_Access;
   end record;
   function Java_Box (Value : PermissionItemData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PermissionItemData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PermissionItemData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PermissionItemData_Access_Array_Access is (if Value /= null and then Value.all in PermissionItemData_Access_Array_Object'Class then PermissionItemData_Access_Array_Object'Class (Value.all).Value else null);
   type PermissionItemData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PermissionItemData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PermissionItemData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PermissionItemData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PermissionItemData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PermissionItemData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PermissionItemData_Access_Array_Access_Array_Object'Class then PermissionItemData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References;

with org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PermissionItemData_Access is org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.PermissionItemData_Access;
   function "=" (Left, Right : PermissionItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References."=";
   subtype PermissionItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.PermissionItemData_Access_Array;
   function "=" (Left, Right : PermissionItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References."=";
   subtype PermissionItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.PermissionItemData_Access_Array_Access;
   function "=" (Left, Right : PermissionItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References."=";
   function Java_Box (Value : PermissionItemData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.Java_Box;
   function Java_Unbox_PermissionItemData_Access_Array (Value : access Java_Object'Class) return PermissionItemData_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.Java_Unbox_PermissionItemData_Access_Array;
   subtype PermissionItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.PermissionItemData_Access_Array_Access_Array;
   function "=" (Left, Right : PermissionItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References."=";
   subtype PermissionItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.PermissionItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PermissionItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References."=";
   function Java_Box (Value : PermissionItemData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.Java_Box;
   function Java_Unbox_PermissionItemData_Access_Array_Access_Array (Value : access Java_Object'Class) return PermissionItemData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package_References.Java_Unbox_PermissionItemData_Access_Array_Access_Array;

   type PermissionItemData is new Java_Object with null record;
   WHO : Unbounded_String;
   WHAT : Unbounded_String;
   TYPE_Id : Unbounded_String;
   START_TIME : Unbounded_String;
   END_TIME : Unbounded_String;
   REMOTE_ADDR : Unbounded_String;

   procedure Initialize (This : in out PermissionItemData'Class);
   function Create return PermissionItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package;


