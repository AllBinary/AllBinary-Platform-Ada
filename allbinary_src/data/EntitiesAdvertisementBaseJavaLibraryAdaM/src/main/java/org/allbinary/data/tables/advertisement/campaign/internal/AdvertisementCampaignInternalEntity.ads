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
with org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.time.TimeData_Package; use org.allbinary.business.time.TimeData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package; use org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package;

package org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AdvertisementCampaign_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;
   package AdvertisementCampaignData_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
   package AdvertisementCampaignInterface_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;
   package AdvertisementCampaigns_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;
   package AdvertisementCampaignsInterface_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package TimeData_Package renames Standard.org.allbinary.business.time.TimeData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type AdvertisementCampaignInternalEntity is tagged;
   type AdvertisementCampaignInternalEntity_Access is access all AdvertisementCampaignInternalEntity'Class;
   type AdvertisementCampaignInternalEntity_Access_Array is array (Natural range <>) of AdvertisementCampaignInternalEntity_Access;
   type AdvertisementCampaignInternalEntity_Access_Array_Access is access all AdvertisementCampaignInternalEntity_Access_Array;

   type AdvertisementCampaignInternalEntity is new AbSqlBean and AdvertisementCampaignInternalEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdvertisementCampaignInternalEntity'Class);
   function Create return AdvertisementCampaignInternalEntity_Access;
   procedure delete (This : in out AdvertisementCampaignInternalEntity; value : Unbounded_String);
   function getCampaignsInStore (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String) return AdvertisementCampaignsInterface_Access;
   procedure getCampaignsInStore (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String);
   function get (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String; name : Unbounded_String) return AdvertisementCampaignInterface_Access;
   procedure get (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String; name : Unbounded_String);
   procedure update (This : in out AdvertisementCampaignInternalEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function createTableStatement (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String;
   function createTable (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String;
   function dropTable (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String;

end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package;


