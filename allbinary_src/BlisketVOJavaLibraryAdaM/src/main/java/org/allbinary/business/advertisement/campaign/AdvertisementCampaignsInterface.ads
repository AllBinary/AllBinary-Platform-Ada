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
with org.allbinary.business.advertisement.AdvertisementInterface_Package; use org.allbinary.business.advertisement.AdvertisementInterface_Package;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package is

   package AdvertisementInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementInterface_Package;

   type AdvertisementCampaignsInterface is interface;
   type AdvertisementCampaignsInterface_Access is access all AdvertisementCampaignsInterface'Class;
   type AdvertisementCampaignsInterface_Access_Array is array (Natural range <>) of AdvertisementCampaignsInterface_Access;
   type AdvertisementCampaignsInterface_Access_Array_Access is access all AdvertisementCampaignsInterface_Access_Array;
   procedure add (This : in out AdvertisementCampaignsInterface; advertisementInterface_Param : access AdvertisementInterface_Package.AdvertisementInterface'Class) is abstract;
   function get (This : in out AdvertisementCampaignsInterface; index : Integer) return AdvertisementInterface_Access is abstract;
   function size (This : in out AdvertisementCampaignsInterface) return Integer is abstract;
   function isEnabled (This : in out AdvertisementCampaignsInterface) return Boolean is abstract;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;


