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


package body org.allbinary.business.advertisement.area.AdvertisementAreaData_Package is

   procedure Initialize_Fields (This : in out AdvertisementAreaData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("ADVERTISEMENT_NAME");
      This.DESCRIPTION := To_Unbounded_String ("ADVERTISEMENT_DESCRIPTION");
      This.CONSTRAINTS := To_Unbounded_String ("ADVERTISEMENT_CONSTRAINTS");
   end Initialize_Fields;


   function getInstance return AdvertisementAreaData_Access is
   begin
        return AdvertisementAreaData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AdvertisementAreaData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementAreaData_Access is
      This : constant AdvertisementAreaData_Access := new AdvertisementAreaData;
   begin
      AdvertisementAreaData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := AdvertisementAreaData_Package.Create;

end org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;


