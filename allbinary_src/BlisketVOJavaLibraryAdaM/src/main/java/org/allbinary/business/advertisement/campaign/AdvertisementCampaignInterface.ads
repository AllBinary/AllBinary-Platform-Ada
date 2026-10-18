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
with org.allbinary.business.advertisement.AdvertisementsInterface_Package; use org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package; use org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package is

   package AdvertisementsInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementsInterface_Package;
   package AdvertisementSearchInterface_Package renames Standard.org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;

   type AdvertisementCampaignInterface is interface;
   type AdvertisementCampaignInterface_Access is access all AdvertisementCampaignInterface'Class;
   type AdvertisementCampaignInterface_Access_Array is array (Natural range <>) of AdvertisementCampaignInterface_Access;
   type AdvertisementCampaignInterface_Access_Array_Access is access all AdvertisementCampaignInterface_Access_Array;
   type AdvertisementCampaignInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaignInterface_Access_Array_Access;
   type AdvertisementCampaignInterface_Access_Array_Access_Array_Access is access all AdvertisementCampaignInterface_Access_Array_Access_Array;
   function getName (This : in out AdvertisementCampaignInterface) return Unbounded_String is abstract;
   function getComponent (This : in out AdvertisementCampaignInterface) return Java_Object_Access is abstract;
   procedure setName (This : in out AdvertisementCampaignInterface; name : Unbounded_String) is abstract;
   procedure setComponentName (This : in out AdvertisementCampaignInterface; name : Unbounded_String) is abstract;
   function search (This : in out AdvertisementCampaignInterface; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) return AdvertisementsInterface_Access is abstract;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;


