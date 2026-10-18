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
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package; use org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package; use org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package AdvertisementsInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementsInterface_Package;
   package AdvertisementSearchInterface_Package renames Standard.org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;

   type AdvertisementCampaign is tagged;
   type AdvertisementCampaign_Access is access all AdvertisementCampaign'Class;
   type AdvertisementCampaign_Access_Array is array (Natural range <>) of AdvertisementCampaign_Access;
   type AdvertisementCampaign_Access_Array_Access is access all AdvertisementCampaign_Access_Array;

   type AdvertisementCampaign is new AdvertisementCampaignInterface with record
      hashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out AdvertisementCampaign'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return AdvertisementCampaign_Access;
   function getComponent (This : in out AdvertisementCampaign) return Java_Object_Access;
   function getName (This : in out AdvertisementCampaign) return Unbounded_String;
   procedure setComponentName (This : in out AdvertisementCampaign; name : Unbounded_String);
   procedure setName (This : in out AdvertisementCampaign; name : Unbounded_String);
   function search (This : in out AdvertisementCampaign; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) return AdvertisementsInterface_Access;
   procedure search (This : in out AdvertisementCampaign; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class);

end org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;


