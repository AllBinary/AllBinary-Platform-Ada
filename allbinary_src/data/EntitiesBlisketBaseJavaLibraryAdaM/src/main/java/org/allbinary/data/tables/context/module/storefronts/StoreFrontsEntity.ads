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
with org.allbinary.business.context.modules.storefront.StoreFront_Package; use org.allbinary.business.context.modules.storefront.StoreFront_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package;

package org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFront_Package renames org.allbinary.business.context.modules.storefront.StoreFront_Package;
   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type StoreFrontsEntity is tagged;
   type StoreFrontsEntity_Access is access all StoreFrontsEntity'Class;
   type StoreFrontsEntity_Access_Array is array (Natural range <>) of StoreFrontsEntity_Access;
   type StoreFrontsEntity_Access_Array_Access is access all StoreFrontsEntity_Access_Array;

   type StoreFrontsEntity is new AbSqlBean and StoreFrontsEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out StoreFrontsEntity'Class);
   function Create return StoreFrontsEntity_Access;
   procedure insert (This : in out StoreFrontsEntity; values : BasicArrayList_Access);
   procedure delete (This : in out StoreFrontsEntity; value : Unbounded_String);
   function getStoreFrontInterface (This : in out StoreFrontsEntity; name : Unbounded_String) return StoreFront_Access;
   procedure getStoreFrontInterface (This : in out StoreFrontsEntity; name : Unbounded_String);
   function getStoreFrontNames (This : in out StoreFrontsEntity) return BasicArrayList_Access;
   procedure getStoreFrontNames (This : in out StoreFrontsEntity);
   procedure update (This : in out StoreFrontsEntity; updatedValues : HashMap_Access);
   function createTableStatement (This : in out StoreFrontsEntity) return Unbounded_String;
   procedure createTableStatement (This : in out StoreFrontsEntity);
   function createTable (This : in out StoreFrontsEntity) return Unbounded_String;
   procedure createTable (This : in out StoreFrontsEntity);
   function dropTable (This : in out StoreFrontsEntity) return Unbounded_String;
   procedure dropTable (This : in out StoreFrontsEntity);

end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;


