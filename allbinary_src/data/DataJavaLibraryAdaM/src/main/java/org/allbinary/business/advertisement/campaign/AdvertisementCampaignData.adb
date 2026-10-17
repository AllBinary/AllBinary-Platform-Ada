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


package body org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package is

   procedure Initialize_Fields (This : in out AdvertisementCampaignData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("ADVERTISEMENTCAMPAIGN_NAME");
      This.DESCRIPTION := To_Unbounded_String ("ADVERTISEMENTCAMPAIGN_DESCRIPTION");
      This.CONFIG := To_Unbounded_String ("ADVERTISEMENTCAMPAIGN_CONFIG");
   end Initialize_Fields;


   function getInstance return AdvertisementCampaignData_Access is
   begin
        return AdvertisementCampaignData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AdvertisementCampaignData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementCampaignData_Access is
      This : constant AdvertisementCampaignData_Access := new AdvertisementCampaignData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant AdvertisementCampaignData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AdvertisementCampaignData_Package.Create;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;


