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


with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;

package body org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package is

   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   procedure Initialize_Fields (This : in out AdvertisementCampaign'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementCampaign'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.hashMap := hashMap;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return AdvertisementCampaign_Access is
      This : constant AdvertisementCampaign_Access := new AdvertisementCampaign;
   begin
      AdvertisementCampaign_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getComponent (This : in out AdvertisementCampaign) return Java_Object_Access is
   begin
        return null;
   end getComponent;

   function getName (This : in out AdvertisementCampaign) return Unbounded_String is
   begin
        return Java_Unbox (This.hashMap.get (AdvertisementCampaignData_Package.getInstance.NAME));
   end getName;

   procedure setComponentName (This : in out AdvertisementCampaign; name : Unbounded_String) is
   begin
        This.hashMap.put (DynamicObjectData_Package.NAME, Java_Box (name));
   end setComponentName;

   procedure setName (This : in out AdvertisementCampaign; name : Unbounded_String) is
   begin
        This.hashMap.put (AdvertisementCampaignData_Package.getInstance.NAME, Java_Box (name));
   end setName;

   function search (This : in out AdvertisementCampaign; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) return AdvertisementsInterface_Access is
      advertisementSearchInterface : constant AdvertisementSearchInterface_Access := AdvertisementSearchInterface_Access (advertisementSearchInterface_Param);
   begin
        return null;
   end search;

   procedure search (This : in out AdvertisementCampaign; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) is
      Java_Result : constant AdvertisementsInterface_Access := AdvertisementCampaign'Class (This).search (advertisementSearchInterface_Param => advertisementSearchInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;


