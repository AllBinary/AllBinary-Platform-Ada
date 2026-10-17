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
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package; use org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package InventoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package BasicOptionItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type BasicOptionItemsEntity is tagged;
   type BasicOptionItemsEntity_Access is access all BasicOptionItemsEntity'Class;
   type BasicOptionItemsEntity_Access_Array is array (Natural range <>) of BasicOptionItemsEntity_Access;
   type BasicOptionItemsEntity_Access_Array_Access is access all BasicOptionItemsEntity_Access_Array;

   type BasicOptionItemsEntity is new AbSqlBean and BasicOptionItemsEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicOptionItemsEntity'Class);
   function Create return BasicOptionItemsEntity_Access;
   procedure insert (This : in out BasicOptionItemsEntity; values : BasicArrayList_Access);
   procedure delete (This : in out BasicOptionItemsEntity; value : Unbounded_String);
   function createTableStatement (This : in out BasicOptionItemsEntity) return Unbounded_String;
   function createTable (This : in out BasicOptionItemsEntity) return Unbounded_String;
   procedure update (This : in out BasicOptionItemsEntity; updatedValues : HashMap_Access);
   function dropTable (This : in out BasicOptionItemsEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package;


