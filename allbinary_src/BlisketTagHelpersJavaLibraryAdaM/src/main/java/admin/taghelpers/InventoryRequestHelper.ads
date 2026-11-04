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

limited with admin.taghelpers.InventoryRequestHelper_Package;
package admin.taghelpers.InventoryRequestHelper_Package_References is
   type InventoryRequestHelper_Access is access all admin.taghelpers.InventoryRequestHelper_Package.InventoryRequestHelper'Class;
   type InventoryRequestHelper_Access_Array is array (Natural range <>) of InventoryRequestHelper_Access;
   type InventoryRequestHelper_Access_Array_Access is access all InventoryRequestHelper_Access_Array;
   type InventoryRequestHelper_Access_Array_Access_Array is array (Natural range <>) of InventoryRequestHelper_Access_Array_Access;
   type InventoryRequestHelper_Access_Array_Access_Array_Access is access all InventoryRequestHelper_Access_Array_Access_Array;
end admin.taghelpers.InventoryRequestHelper_Package_References;

with admin.taghelpers.InventoryRequestHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.InventoryRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype ItemInterface_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access;
   use type ItemInterface_Access;
   subtype ItemInterface_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array;
   use type ItemInterface_Access_Array;
   subtype ItemInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access;
   use type ItemInterface_Access_Array_Access;
   subtype ItemInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array;
   use type ItemInterface_Access_Array_Access_Array;
   subtype ItemInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array_Access;
   use type ItemInterface_Access_Array_Access_Array_Access;
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


   subtype InventoryRequestHelper_Access is admin.taghelpers.InventoryRequestHelper_Package_References.InventoryRequestHelper_Access;
   function "=" (Left, Right : InventoryRequestHelper_Access) return Boolean renames admin.taghelpers.InventoryRequestHelper_Package_References."=";
   subtype InventoryRequestHelper_Access_Array is admin.taghelpers.InventoryRequestHelper_Package_References.InventoryRequestHelper_Access_Array;
   function "=" (Left, Right : InventoryRequestHelper_Access_Array) return Boolean renames admin.taghelpers.InventoryRequestHelper_Package_References."=";
   subtype InventoryRequestHelper_Access_Array_Access is admin.taghelpers.InventoryRequestHelper_Package_References.InventoryRequestHelper_Access_Array_Access;
   function "=" (Left, Right : InventoryRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.InventoryRequestHelper_Package_References."=";
   subtype InventoryRequestHelper_Access_Array_Access_Array is admin.taghelpers.InventoryRequestHelper_Package_References.InventoryRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.InventoryRequestHelper_Package_References."=";
   subtype InventoryRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.InventoryRequestHelper_Package_References.InventoryRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.InventoryRequestHelper_Package_References."=";

   type InventoryRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      itemInterface : ItemInterface_Access;
   end record;

   procedure Initialize (This : in out InventoryRequestHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return InventoryRequestHelper_Access;
   function insert (This : in out InventoryRequestHelper) return Unbounded_String;
   function delete (This : in out InventoryRequestHelper) return Unbounded_String;
   function update (This : in out InventoryRequestHelper) return Unbounded_String;
   function getItemInterface (This : in out InventoryRequestHelper) return ItemInterface_Access;

end admin.taghelpers.InventoryRequestHelper_Package;


