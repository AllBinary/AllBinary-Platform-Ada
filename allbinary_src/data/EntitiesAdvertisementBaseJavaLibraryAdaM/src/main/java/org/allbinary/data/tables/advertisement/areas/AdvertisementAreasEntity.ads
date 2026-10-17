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
with org.allbinary.business.advertisement.area.AdvertisementArea_Package; use org.allbinary.business.advertisement.area.AdvertisementArea_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaData_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package; use org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;

package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package AdvertisementArea_Package renames org.allbinary.business.advertisement.area.AdvertisementArea_Package;
   package AdvertisementAreaData_Package renames org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;
   package AdvertisementAreaInterface_Package renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
   package AdvertisementCampaignData_Package renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type AdvertisementAreasEntity is tagged;
   type AdvertisementAreasEntity_Access is access all AdvertisementAreasEntity'Class;
   type AdvertisementAreasEntity_Access_Array is array (Natural range <>) of AdvertisementAreasEntity_Access;
   type AdvertisementAreasEntity_Access_Array_Access is access all AdvertisementAreasEntity_Access_Array;

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
   procedure createTableStatement (This : in out AdvertisementAreasEntity);
   function createTable (This : in out AdvertisementAreasEntity) return Unbounded_String;
   procedure createTable (This : in out AdvertisementAreasEntity);
   procedure update (This : in out AdvertisementAreasEntity; updatedValues : HashMap_Access);
   function dropTable (This : in out AdvertisementAreasEntity) return Unbounded_String;
   procedure dropTable (This : in out AdvertisementAreasEntity);

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package;


