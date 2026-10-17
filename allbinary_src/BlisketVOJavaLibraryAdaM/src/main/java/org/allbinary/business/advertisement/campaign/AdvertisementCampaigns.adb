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


package body org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package is

   procedure Initialize_Fields (This : in out AdvertisementCampaigns'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementCampaigns'Class; vector : BasicArrayList_Access) is
   begin
      Initialize_Fields (This);
        This.advertisementsVector := This.advertisementsVector;
   end Initialize;

   function Create (vector : BasicArrayList_Access) return AdvertisementCampaigns_Access is
      This : constant AdvertisementCampaigns_Access := new AdvertisementCampaigns;
   begin
      AdvertisementCampaigns_Package.Initialize (This.all, vector);
      return This;
   end Create;

   procedure add (This : in out AdvertisementCampaigns; advertisementInterface : AdvertisementInterface_Access) is
   begin
        This.advertisementsVector.add (advertisementInterface);
   end add;

   function get (This : in out AdvertisementCampaigns; index : Integer) return AdvertisementInterface_Access is
   begin
        return AdvertisementInterface_Access (This.advertisementsVector.get (index));
   end get;

   function size (This : in out AdvertisementCampaigns) return Integer is
   begin
        return This.advertisementsVector.size;
   end size;

   function isEnabled (This : in out AdvertisementCampaigns) return Boolean is
   begin
        return True;
   end isEnabled;

   function search (This : in out AdvertisementCampaigns; advertisementSearchInterface : AdvertisementSearchInterface_Access) return AdvertisementsInterface_Access is
   begin
        return null;
   end search;

   procedure get (This : in out AdvertisementCampaigns; index : Integer) is
      Java_Result : constant AdvertisementInterface_Access := AdvertisementCampaigns'Class (This).get (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure search (This : in out AdvertisementCampaigns; advertisementSearchInterface : AdvertisementSearchInterface_Access) is
      Java_Result : constant AdvertisementsInterface_Access := AdvertisementCampaigns'Class (This).search (advertisementSearchInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;


