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


package body org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package is

   procedure Initialize_Fields (This : in out AdvertisementProcessorInterface'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AdvertisementProcessorInterface'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AdvertisementProcessorInterface_Access is
      This : constant AdvertisementProcessorInterface_Access := new AdvertisementProcessorInterface;
   begin
      AdvertisementProcessorInterface_Package.Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out AdvertisementProcessorInterface) is
   begin
        null;
   end process;

   procedure start (This : in out AdvertisementProcessorInterface) is
   begin
        null;
   end start;

   procedure stop (This : in out AdvertisementProcessorInterface) is
   begin
        null;
   end stop;

end org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package;


