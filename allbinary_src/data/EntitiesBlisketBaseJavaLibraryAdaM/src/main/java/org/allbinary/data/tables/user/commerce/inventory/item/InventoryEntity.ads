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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItem_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package InventoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package BasicItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;

   type InventoryEntity is tagged;
   type InventoryEntity_Access is access all InventoryEntity'Class;
   type InventoryEntity_Access_Array is array (Natural range <>) of InventoryEntity_Access;
   type InventoryEntity_Access_Array_Access is access all InventoryEntity_Access_Array;

   type InventoryEntity is new AbSqlBean and InventoryEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out InventoryEntity'Class);
   function Create return InventoryEntity_Access;
   procedure insert (This : in out InventoryEntity; values : BasicArrayList_Access);
   procedure delete (This : in out InventoryEntity; value : Unbounded_String);
   function getItems (This : in out InventoryEntity; storeFrontInterface : StoreFrontInterface_Access) return BasicArrayList_Access;
   procedure getItems (This : in out InventoryEntity; storeFrontInterface : StoreFrontInterface_Access);
   function getItem (This : in out InventoryEntity; id : Unbounded_String) return ItemInterface_Access;
   procedure getItem (This : in out InventoryEntity; id : Unbounded_String);
   function getWeight (This : in out InventoryEntity; id : Unbounded_String) return Unbounded_String;
   procedure getWeight (This : in out InventoryEntity; id : Unbounded_String);
   function createTableStatement (This : in out InventoryEntity) return Unbounded_String;
   procedure createTableStatement (This : in out InventoryEntity);
   function createTable (This : in out InventoryEntity) return Unbounded_String;
   procedure createTable (This : in out InventoryEntity);
   procedure update (This : in out InventoryEntity; updatedValues : HashMap_Access);
   function dropTable (This : in out InventoryEntity) return Unbounded_String;
   procedure dropTable (This : in out InventoryEntity);

end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;


