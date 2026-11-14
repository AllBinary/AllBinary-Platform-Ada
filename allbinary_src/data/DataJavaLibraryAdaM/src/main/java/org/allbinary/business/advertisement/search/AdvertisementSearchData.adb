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



package body org.allbinary.business.advertisement.search.AdvertisementSearchData_Package is

   procedure Initialize_Fields (This : in out AdvertisementSearchData'Class) is
   begin
      null;
      This.TITLE := To_Unbounded_String ("AFFILIATE_TITLE");
      This.PRICE := To_Unbounded_String ("AFFILIATE_PRICE");
      This.RELEVANCY := To_Unbounded_String ("AFFILIATE_RELEVANCY");
      This.POPULARITY := To_Unbounded_String ("AFFILIATE_POPULARITY");
   end Initialize_Fields;


   function getInstance return AdvertisementSearchData_Access is
   begin
        return AdvertisementSearchData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AdvertisementSearchData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementSearchData_Access is
      This : constant AdvertisementSearchData_Access := new AdvertisementSearchData;
   begin
      AdvertisementSearchData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := AdvertisementSearchData_Package.Create;

end org.allbinary.business.advertisement.search.AdvertisementSearchData_Package;


