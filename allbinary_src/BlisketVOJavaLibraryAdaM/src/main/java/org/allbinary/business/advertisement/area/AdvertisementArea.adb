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


with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaData_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package;

package body org.allbinary.business.advertisement.area.AdvertisementArea_Package is

   package AdvertisementCampaignData_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   procedure Initialize_Fields (This : in out AdvertisementArea'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementArea'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      constraintsDomString : Unbounded_String;
      document : Document_Access;
   begin
      Initialize_Fields (This);
        This.name := Java_Unbox (hashMap.get (AdvertisementAreaData_Package.getInstance.NAME));
        This.storeName := Java_Unbox (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        This.description := Java_Unbox (hashMap.get (AdvertisementAreaData_Package.getInstance.DESCRIPTION));
        constraintsDomString := Java_Unbox (hashMap.get (AdvertisementAreaData_Package.getInstance.CONSTRAINTS));
        document := DomDocumentHelper_Package.create (constraintsDomString);
        This.advertisementAreaConstraintsInterface := AdvertisementAreaConstraintsInterface_Access (AdvertisementAreaConstraints_Package.Create (document));
        This.campaign := Java_Unbox (hashMap.get (AdvertisementCampaignData_Package.getInstance.NAME));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return AdvertisementArea_Access is
      This : constant AdvertisementArea_Access := new AdvertisementArea;
   begin
      AdvertisementArea_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getName (This : in out AdvertisementArea) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getStoreName (This : in out AdvertisementArea) return Unbounded_String is
   begin
        return This.storeName;
   end getStoreName;

   function getDescription (This : in out AdvertisementArea) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   function getConstraints (This : in out AdvertisementArea) return AdvertisementAreaConstraintsInterface_Access is
   begin
        return This.advertisementAreaConstraintsInterface;
   end getConstraints;

   function getCampaign (This : in out AdvertisementArea) return Unbounded_String is
   begin
        return This.campaign;
   end getCampaign;

   procedure setName (This : in out AdvertisementArea; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   procedure setStoreName (This : in out AdvertisementArea; storeName : Unbounded_String) is
   begin
        This.storeName := storeName;
   end setStoreName;

   procedure setDescription (This : in out AdvertisementArea; description : Unbounded_String) is
   begin
        This.description := description;
   end setDescription;

   procedure setConstraints (This : in out AdvertisementArea; advertisementConstraintsInterface_Param : access AdvertisementAreaConstraintsInterface_Package.AdvertisementAreaConstraintsInterface'Class) is
      advertisementConstraintsInterface : constant AdvertisementAreaConstraintsInterface_Access := AdvertisementAreaConstraintsInterface_Access (advertisementConstraintsInterface_Param);
   begin
        This.advertisementAreaConstraintsInterface := This.advertisementAreaConstraintsInterface;
   end setConstraints;

   procedure setCampaign (This : in out AdvertisementArea; campaign : Unbounded_String) is
   begin
        This.campaign := campaign;
   end setCampaign;

end org.allbinary.business.advertisement.area.AdvertisementArea_Package;


