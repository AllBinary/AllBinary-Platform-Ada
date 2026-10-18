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


with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.business.advertisement.Advertisements_Package is

   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out Advertisements'Class) is
   begin
      null;
      This.bannerList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.pageList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.myRandomFactory := MyRandomFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out Advertisements'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Advertisements_Access is
      This : constant Advertisements_Access := new Advertisements;
   begin
      Advertisements_Package.Initialize (This.all);
      return This;
   end Create;


   procedure addPage (This : in out Advertisements; advertisementProcessorInterface_Param : access AdvertisementProcessorInterface_Package.AdvertisementProcessorInterface'Class) is
      advertisementProcessorInterface : constant AdvertisementProcessorInterface_Access := AdvertisementProcessorInterface_Access (advertisementProcessorInterface_Param);
   begin
        if not (This.pageList.contains (Java_Object_Access (advertisementProcessorInterface))) then
            This.pageList.add (Java_Object_Access (advertisementProcessorInterface));
        end if;
   end addPage;

   procedure startRandomPage (This : in out Advertisements) is
      size : Integer;
      random : Integer;
      advertisementProcessorInterface : AdvertisementProcessorInterface_Access;
   begin
        size := This.pageList.size;
        if (size) > (0) then
            random := This.myRandomFactory.getAbsoluteNextInt (size);
            advertisementProcessorInterface := AdvertisementProcessorInterface_Access (This.pageList.objectArray (random));
            advertisementProcessorInterface.start;
        end if;
   end startRandomPage;

   procedure processRandomPage (This : in out Advertisements) is
      size : Integer;
      random : Integer;
      advertisementProcessorInterface : AdvertisementProcessorInterface_Access;
   begin
        if LockedUtil_Package.getInstance.isLocked then
            size := This.pageList.size;
            if (size) > (0) then
                random := This.myRandomFactory.getAbsoluteNextInt (size);
                advertisementProcessorInterface := AdvertisementProcessorInterface_Access (This.pageList.objectArray (random));
                advertisementProcessorInterface.process;
            end if;
        end if;
   end processRandomPage;

   procedure stopAllPage (This : in out Advertisements) is
      advertisementProcessorInterface : AdvertisementProcessorInterface_Access;
      index : Integer;
   begin
        index := This.pageList.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            advertisementProcessorInterface := AdvertisementProcessorInterface_Access (This.pageList.objectArray (index));
            advertisementProcessorInterface.stop;
        end loop;
   end stopAllPage;

   procedure addBanner (This : in out Advertisements; advertisementProcessorInterface_Param : access AdvertisementProcessorInterface_Package.AdvertisementProcessorInterface'Class) is
      advertisementProcessorInterface : constant AdvertisementProcessorInterface_Access := AdvertisementProcessorInterface_Access (advertisementProcessorInterface_Param);
   begin
        if not (This.bannerList.contains (Java_Object_Access (advertisementProcessorInterface))) then
            This.bannerList.add (Java_Object_Access (advertisementProcessorInterface));
        end if;
   end addBanner;

   procedure startAll (This : in out Advertisements) is
      advertisementProcessorInterface : AdvertisementProcessorInterface_Access;
      index : Integer;
   begin
        index := This.bannerList.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            advertisementProcessorInterface := AdvertisementProcessorInterface_Access (This.bannerList.objectArray (index));
            advertisementProcessorInterface.start;
        end loop;
   end startAll;

   procedure stopAllBanner (This : in out Advertisements) is
      advertisementProcessorInterface : AdvertisementProcessorInterface_Access;
      index : Integer;
   begin
        index := This.bannerList.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            advertisementProcessorInterface := AdvertisementProcessorInterface_Access (This.bannerList.objectArray (index));
            advertisementProcessorInterface.stop;
        end loop;
   end stopAllBanner;

   function getBanner (This : in out Advertisements; index : Integer) return AdvertisementProcessorInterface_Access is
      advertisementProcessorInterface : AdvertisementProcessorInterface_Access;
   begin
        advertisementProcessorInterface := AdvertisementProcessorInterface_Access (This.bannerList.objectArray (index));
        return advertisementProcessorInterface;
   end getBanner;

   procedure stopAll (This : in out Advertisements) is
   begin
        Advertisements'Class (This).stopAllBanner;
        Advertisements'Class (This).stopAllPage;
   end stopAll;

   procedure getBanner (This : in out Advertisements; index : Integer) is
      Java_Result : constant AdvertisementProcessorInterface_Access := Advertisements'Class (This).getBanner (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBanner;

end org.allbinary.business.advertisement.Advertisements_Package;


