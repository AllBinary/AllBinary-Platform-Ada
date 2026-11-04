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

limited with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
package org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References is
   type AdvertisementCampaignData_Access is access all org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package.AdvertisementCampaignData'Class;
   type AdvertisementCampaignData_Access_Array is array (Natural range <>) of AdvertisementCampaignData_Access;
   type AdvertisementCampaignData_Access_Array_Access is access all AdvertisementCampaignData_Access_Array;
   type AdvertisementCampaignData_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaignData_Access_Array_Access;
   type AdvertisementCampaignData_Access_Array_Access_Array_Access is access all AdvertisementCampaignData_Access_Array_Access_Array;
end org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References;

with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementCampaignData_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References.AdvertisementCampaignData_Access;
   function "=" (Left, Right : AdvertisementCampaignData_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References."=";
   subtype AdvertisementCampaignData_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References.AdvertisementCampaignData_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignData_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References."=";
   subtype AdvertisementCampaignData_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References.AdvertisementCampaignData_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignData_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References."=";
   subtype AdvertisementCampaignData_Access_Array_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References.AdvertisementCampaignData_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References."=";
   subtype AdvertisementCampaignData_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References.AdvertisementCampaignData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package_References."=";

   type AdvertisementCampaignData is new Java_Object with record
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      CONFIG : Unbounded_String;
   end record;
   instance : AdvertisementCampaignData_Access;

   procedure Initialize (This : in out AdvertisementCampaignData'Class);
   function Create return AdvertisementCampaignData_Access;
   function getInstance return AdvertisementCampaignData_Access;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;


