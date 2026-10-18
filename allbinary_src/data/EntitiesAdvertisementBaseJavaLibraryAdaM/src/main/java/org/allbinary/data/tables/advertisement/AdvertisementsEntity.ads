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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.advertisement.AdvertisementData_Package; use org.allbinary.business.advertisement.AdvertisementData_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package; use org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package; use org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package;

package org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package AdvertisementData_Package renames Standard.org.allbinary.business.advertisement.AdvertisementData_Package;
   package AdvertisementInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementInterface_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type AdvertisementsEntity is tagged;
   type AdvertisementsEntity_Access is access all AdvertisementsEntity'Class;
   type AdvertisementsEntity_Access_Array is array (Natural range <>) of AdvertisementsEntity_Access;
   type AdvertisementsEntity_Access_Array_Access is access all AdvertisementsEntity_Access_Array;

   type AdvertisementsEntity is new AbSqlBean and AdvertisementsEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
      U_INDEX : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdvertisementsEntity'Class);
   function Create return AdvertisementsEntity_Access;
   procedure delete (This : in out AdvertisementsEntity; value : Unbounded_String);
   function get (This : in out AdvertisementsEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure get (This : in out AdvertisementsEntity; storeName : Unbounded_String);
   function get (This : in out AdvertisementsEntity; storeName : Unbounded_String; advertismentName : Unbounded_String) return AdvertisementInterface_Access;
   procedure get (This : in out AdvertisementsEntity; storeName : Unbounded_String; advertismentName : Unbounded_String);
   function createTableStatement (This : in out AdvertisementsEntity) return Unbounded_String;
   function createTable (This : in out AdvertisementsEntity) return Unbounded_String;
   procedure update (This : in out AdvertisementsEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out AdvertisementsEntity) return Unbounded_String;

end org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package;


