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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type CustomItemsEntity is tagged;
   type CustomItemsEntity_Access is access all CustomItemsEntity'Class;
   type CustomItemsEntity_Access_Array is array (Natural range <>) of CustomItemsEntity_Access;
   type CustomItemsEntity_Access_Array_Access is access all CustomItemsEntity_Access_Array;
   type CustomItemsEntity_Access_Array_Access_Array is array (Natural range <>) of CustomItemsEntity_Access_Array_Access;
   type CustomItemsEntity_Access_Array_Access_Array_Access is access all CustomItemsEntity_Access_Array_Access_Array;

   type CustomItemsEntity is new AbSqlBean and CustomItemsEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out CustomItemsEntity'Class);
   function Create return CustomItemsEntity_Access;
   procedure insert (This : in out CustomItemsEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure delete (This : in out CustomItemsEntity; value : Unbounded_String);
   function createTableStatement (This : in out CustomItemsEntity) return Unbounded_String;
   function createTable (This : in out CustomItemsEntity) return Unbounded_String;
   procedure update (This : in out CustomItemsEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out CustomItemsEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntity_Package;


