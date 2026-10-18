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



package body org.allbinary.business.advertisement.AdvertisementData_Package is

   procedure Initialize_Fields (This : in out AdvertisementData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("ADVERTISEMENT_NAME");
      This.DESCRIPTION := To_Unbounded_String ("ADVERTISEMENT_DESCRIPTION");
   end Initialize_Fields;


   function getInstance return AdvertisementData_Access is
   begin
        return AdvertisementData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AdvertisementData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementData_Access is
      This : constant AdvertisementData_Access := new AdvertisementData;
   begin
      AdvertisementData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := AdvertisementData_Package.Create;

end org.allbinary.business.advertisement.AdvertisementData_Package;


