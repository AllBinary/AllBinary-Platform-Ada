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


package body org.allbinary.business.advertisement.area.AdvertisementArea_Package is

   procedure Initialize_Fields (This : in out AdvertisementArea'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementArea'Class; hashMap_Param : access HashMap'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      constraintsDomString : Unbounded_String;
      document : Document_Access;
   begin
      Initialize_Fields (This);
        This.name := Unbounded_String (hashMap.get (AdvertisementAreaData_Package.getInstance.NAME));
        This.storeName := Unbounded_String (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        This.description := Unbounded_String (hashMap.get (AdvertisementAreaData_Package.getInstance.DESCRIPTION));
        constraintsDomString := Unbounded_String (hashMap.get (AdvertisementAreaData_Package.getInstance.CONSTRAINTS));
        document := DomDocumentHelper_Package.create (constraintsDomString);
        This.advertisementAreaConstraintsInterface := AdvertisementAreaConstraints_Package.Create (document);
        This.campaign := Unbounded_String (hashMap.get (AdvertisementCampaignData_Package.getInstance.NAME));
   end Initialize;

   function Create (hashMap_Param : access HashMap'Class) return AdvertisementArea_Access is
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

   procedure setConstraints (This : in out AdvertisementArea; advertisementConstraintsInterface_Param : access AdvertisementAreaConstraintsInterface'Class) is
      advertisementConstraintsInterface : AdvertisementAreaConstraintsInterface_Access := AdvertisementAreaConstraintsInterface_Access (advertisementConstraintsInterface_Param);
   begin
        This.advertisementAreaConstraintsInterface := This.advertisementAreaConstraintsInterface;
   end setConstraints;

   procedure setCampaign (This : in out AdvertisementArea; campaign : Unbounded_String) is
   begin
        This.campaign := campaign;
   end setCampaign;

end org.allbinary.business.advertisement.area.AdvertisementArea_Package;


