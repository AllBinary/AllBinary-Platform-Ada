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

limited with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
package org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References is
   type InventoryEntity_Access is access all org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package.InventoryEntity'Class;
   type InventoryEntity_Access_Array is array (Natural range <>) of InventoryEntity_Access;
   type InventoryEntity_Access_Array_Access is access all InventoryEntity_Access_Array;
   type InventoryEntity_Access_Array_Access_Array is array (Natural range <>) of InventoryEntity_Access_Array_Access;
   type InventoryEntity_Access_Array_Access_Array_Access is access all InventoryEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
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
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
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


   subtype InventoryEntity_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access;
   function "=" (Left, Right : InventoryEntity_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References."=";
   subtype InventoryEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array;
   function "=" (Left, Right : InventoryEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References."=";
   subtype InventoryEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access;
   function "=" (Left, Right : InventoryEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References."=";
   subtype InventoryEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References."=";
   subtype InventoryEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References."=";

   type InventoryEntity is new AbSqlBean and InventoryEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out InventoryEntity'Class);
   function Create return InventoryEntity_Access;
   procedure insert (This : in out InventoryEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure delete (This : in out InventoryEntity; value : Unbounded_String);
   function getItems (This : in out InventoryEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access;
   procedure getItems (This : in out InventoryEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function getItem (This : in out InventoryEntity; id : Unbounded_String) return ItemInterface_Access;
   procedure getItem (This : in out InventoryEntity; id : Unbounded_String);
   function getWeight (This : in out InventoryEntity; id : Unbounded_String) return Unbounded_String;
   procedure getWeight (This : in out InventoryEntity; id : Unbounded_String);
   function createTableStatement (This : in out InventoryEntity) return Unbounded_String;
   function createTable (This : in out InventoryEntity) return Unbounded_String;
   procedure update (This : in out InventoryEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out InventoryEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;


