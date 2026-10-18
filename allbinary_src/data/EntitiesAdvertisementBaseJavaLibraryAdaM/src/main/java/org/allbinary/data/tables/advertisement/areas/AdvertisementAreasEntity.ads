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
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package; use org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;

package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AdvertisementAreaInterface_Package renames Standard.org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type AdvertisementAreasEntity is tagged;
   type AdvertisementAreasEntity_Access is access all AdvertisementAreasEntity'Class;
   type AdvertisementAreasEntity_Access_Array is array (Natural range <>) of AdvertisementAreasEntity_Access;
   type AdvertisementAreasEntity_Access_Array_Access is access all AdvertisementAreasEntity_Access_Array;
   type AdvertisementAreasEntity_Access_Array_Access_Array is array (Natural range <>) of AdvertisementAreasEntity_Access_Array_Access;
   type AdvertisementAreasEntity_Access_Array_Access_Array_Access is access all AdvertisementAreasEntity_Access_Array_Access_Array;

   type AdvertisementAreasEntity is new AbSqlBean and AdvertisementAreasEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdvertisementAreasEntity'Class);
   function Create return AdvertisementAreasEntity_Access;
   procedure delete (This : in out AdvertisementAreasEntity; value : Unbounded_String);
   function get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String);
   function get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String; advertisementAreaName : Unbounded_String) return AdvertisementAreaInterface_Access;
   procedure get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String; advertisementAreaName : Unbounded_String);
   function createTableStatement (This : in out AdvertisementAreasEntity) return Unbounded_String;
   function createTable (This : in out AdvertisementAreasEntity) return Unbounded_String;
   procedure update (This : in out AdvertisementAreasEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out AdvertisementAreasEntity) return Unbounded_String;

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package;


