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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package; use org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package; use org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package; use org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AdvertisementInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementInterface_Package;
   package AdvertisementsInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementsInterface_Package;
   package AdvertisementSearchInterface_Package renames Standard.org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;

   type AdvertisementCampaigns is tagged;
   type AdvertisementCampaigns_Access is access all AdvertisementCampaigns'Class;
   type AdvertisementCampaigns_Access_Array is array (Natural range <>) of AdvertisementCampaigns_Access;
   type AdvertisementCampaigns_Access_Array_Access is access all AdvertisementCampaigns_Access_Array;

   type AdvertisementCampaigns is new AdvertisementCampaignsInterface with record
      advertisementsVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out AdvertisementCampaigns'Class; vector : BasicArrayList_Access);
   function Create (vector : BasicArrayList_Access) return AdvertisementCampaigns_Access;
   procedure add (This : in out AdvertisementCampaigns; advertisementInterface : AdvertisementInterface_Access);
   function get (This : in out AdvertisementCampaigns; index : Integer) return AdvertisementInterface_Access;
   procedure get (This : in out AdvertisementCampaigns; index : Integer);
   function size (This : in out AdvertisementCampaigns) return Integer;
   function isEnabled (This : in out AdvertisementCampaigns) return Boolean;
   function search (This : in out AdvertisementCampaigns; advertisementSearchInterface : AdvertisementSearchInterface_Access) return AdvertisementsInterface_Access;
   procedure search (This : in out AdvertisementCampaigns; advertisementSearchInterface : AdvertisementSearchInterface_Access);

end org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;


