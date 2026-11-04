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

limited with views.generic_Id.inventory.InventoryColumnUtil_Package;
package views.generic_Id.inventory.InventoryColumnUtil_Package_References is
   type InventoryColumnUtil_Access is access all views.generic_Id.inventory.InventoryColumnUtil_Package.InventoryColumnUtil'Class;
   type InventoryColumnUtil_Access_Array is array (Natural range <>) of InventoryColumnUtil_Access;
   type InventoryColumnUtil_Access_Array_Access is access all InventoryColumnUtil_Access_Array;
   type InventoryColumnUtil_Access_Array_Access_Array is array (Natural range <>) of InventoryColumnUtil_Access_Array_Access;
   type InventoryColumnUtil_Access_Array_Access_Array_Access is access all InventoryColumnUtil_Access_Array_Access_Array;
end views.generic_Id.inventory.InventoryColumnUtil_Package_References;

with views.generic_Id.inventory.InventoryColumnUtil_Package_References;
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
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package views.generic_Id.inventory.InventoryColumnUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   use type BasicItemData_Access;
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   use type BasicItemData_Access_Array;
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   use type BasicItemData_Access_Array_Access;
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   use type BasicItemData_Access_Array_Access_Array;
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   use type BasicItemData_Access_Array_Access_Array_Access;
   subtype InventoryEntity_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access;
   use type InventoryEntity_Access;
   subtype InventoryEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array;
   use type InventoryEntity_Access_Array;
   subtype InventoryEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access;
   use type InventoryEntity_Access_Array_Access;
   subtype InventoryEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access_Array;
   use type InventoryEntity_Access_Array_Access_Array;
   subtype InventoryEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access_Array_Access;
   use type InventoryEntity_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InventoryColumnUtil_Access is views.generic_Id.inventory.InventoryColumnUtil_Package_References.InventoryColumnUtil_Access;
   function "=" (Left, Right : InventoryColumnUtil_Access) return Boolean renames views.generic_Id.inventory.InventoryColumnUtil_Package_References."=";
   subtype InventoryColumnUtil_Access_Array is views.generic_Id.inventory.InventoryColumnUtil_Package_References.InventoryColumnUtil_Access_Array;
   function "=" (Left, Right : InventoryColumnUtil_Access_Array) return Boolean renames views.generic_Id.inventory.InventoryColumnUtil_Package_References."=";
   subtype InventoryColumnUtil_Access_Array_Access is views.generic_Id.inventory.InventoryColumnUtil_Package_References.InventoryColumnUtil_Access_Array_Access;
   function "=" (Left, Right : InventoryColumnUtil_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventoryColumnUtil_Package_References."=";
   subtype InventoryColumnUtil_Access_Array_Access_Array is views.generic_Id.inventory.InventoryColumnUtil_Package_References.InventoryColumnUtil_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryColumnUtil_Access_Array_Access_Array) return Boolean renames views.generic_Id.inventory.InventoryColumnUtil_Package_References."=";
   subtype InventoryColumnUtil_Access_Array_Access_Array_Access is views.generic_Id.inventory.InventoryColumnUtil_Package_References.InventoryColumnUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryColumnUtil_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventoryColumnUtil_Package_References."=";

   type InventoryColumnUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
   end record;
   instance : InventoryColumnUtil_Access;

   procedure Initialize (This : in out InventoryColumnUtil'Class);
   function Create return InventoryColumnUtil_Access;
   function getInstance return InventoryColumnUtil_Access;
   function getColumnWhereLike (This : in out InventoryColumnUtil; inventoryEntity_Param : access InventoryEntity_Package.InventoryEntity'Class; category : Unbounded_String; column : Unbounded_String) return BasicArrayList_Access;
   procedure getColumnWhereLike (This : in out InventoryColumnUtil; inventoryEntity_Param : access InventoryEntity_Package.InventoryEntity'Class; category : Unbounded_String; column : Unbounded_String);

end views.generic_Id.inventory.InventoryColumnUtil_Package;


