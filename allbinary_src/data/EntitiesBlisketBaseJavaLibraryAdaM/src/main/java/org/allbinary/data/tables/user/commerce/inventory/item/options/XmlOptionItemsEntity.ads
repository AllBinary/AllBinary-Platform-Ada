-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2011 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
-- ` 
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
with org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package; use org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package InventoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package XmlOptionItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type XmlOptionItemsEntity is tagged;
   type XmlOptionItemsEntity_Access is access all XmlOptionItemsEntity'Class;
   type XmlOptionItemsEntity_Access_Array is array (Natural range <>) of XmlOptionItemsEntity_Access;
   type XmlOptionItemsEntity_Access_Array_Access is access all XmlOptionItemsEntity_Access_Array;

   type XmlOptionItemsEntity is new AbSqlBean and XmlOptionItemsEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out XmlOptionItemsEntity'Class);
   function Create return XmlOptionItemsEntity_Access;
   procedure insert (This : in out XmlOptionItemsEntity; values : BasicArrayList_Access);
   procedure delete (This : in out XmlOptionItemsEntity; value : Unbounded_String);
   function createTableStatement (This : in out XmlOptionItemsEntity) return Unbounded_String;
   procedure createTableStatement (This : in out XmlOptionItemsEntity);
   function createTable (This : in out XmlOptionItemsEntity) return Unbounded_String;
   procedure createTable (This : in out XmlOptionItemsEntity);
   procedure update (This : in out XmlOptionItemsEntity; updatedValues : HashMap_Access);
   function dropTable (This : in out XmlOptionItemsEntity) return Unbounded_String;
   procedure dropTable (This : in out XmlOptionItemsEntity);

end org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package;


