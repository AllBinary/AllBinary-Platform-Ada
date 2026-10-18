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
with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package; use org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package;

package org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package is


   type AdvertisementCampaignInternalEntityFactory is tagged;
   type AdvertisementCampaignInternalEntityFactory_Access is access all AdvertisementCampaignInternalEntityFactory'Class;
   type AdvertisementCampaignInternalEntityFactory_Access_Array is array (Natural range <>) of AdvertisementCampaignInternalEntityFactory_Access;
   type AdvertisementCampaignInternalEntityFactory_Access_Array_Access is access all AdvertisementCampaignInternalEntityFactory_Access_Array;
   type AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaignInternalEntityFactory_Access_Array_Access;
   type AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array_Access is access all AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array;

   type AdvertisementCampaignInternalEntityFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out AdvertisementCampaignInternalEntityFactory'Class);
   function Create return AdvertisementCampaignInternalEntityFactory_Access;
   function getInstance return AdvertisementCampaignInternalEntityInterface_Access;

end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package;


