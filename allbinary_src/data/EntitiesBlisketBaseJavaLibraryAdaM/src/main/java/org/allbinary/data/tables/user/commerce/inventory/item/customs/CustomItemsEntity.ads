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
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package; use org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntity_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package DynamicObjectData_Package renames org.allbinary.business.DynamicObjectData_Package;
   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package InventoryDbInitInfo_Package renames org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package BasicItemData_Package renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package CustomItemData_Package renames org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type CustomItemsEntity is tagged;
   type CustomItemsEntity_Access is access all CustomItemsEntity'Class;
   type CustomItemsEntity_Access_Array is array (Natural range <>) of CustomItemsEntity_Access;
   type CustomItemsEntity_Access_Array_Access is access all CustomItemsEntity_Access_Array;

   type CustomItemsEntity is new AbSqlBean and CustomItemsEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out CustomItemsEntity'Class);
   function Create return CustomItemsEntity_Access;
   procedure insert (This : in out CustomItemsEntity; values : BasicArrayList_Access);
   procedure delete (This : in out CustomItemsEntity; value : Unbounded_String);
   function createTableStatement (This : in out CustomItemsEntity) return Unbounded_String;
   procedure createTableStatement (This : in out CustomItemsEntity);
   function createTable (This : in out CustomItemsEntity) return Unbounded_String;
   procedure createTable (This : in out CustomItemsEntity);
   procedure update (This : in out CustomItemsEntity; updatedValues : HashMap_Access);
   function dropTable (This : in out CustomItemsEntity) return Unbounded_String;
   procedure dropTable (This : in out CustomItemsEntity);

end org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntity_Package;


