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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.business.advertisement.Advertisements_Package is

   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type Advertisements is tagged;
   type Advertisements_Access is access all Advertisements'Class;
   type Advertisements_Access_Array is array (Natural range <>) of Advertisements_Access;
   type Advertisements_Access_Array_Access is access all Advertisements_Access_Array;

   type Advertisements is new Java_Object with record
      bannerList : BasicArrayList_Access;
      pageList : BasicArrayList_Access;
      myRandomFactory : MyRandomFactory_Access;
   end record;

   procedure Initialize (This : in out Advertisements'Class);
   function Create return Advertisements_Access;
   procedure addPage (This : in out Advertisements; advertisementProcessorInterface : AdvertisementProcessorInterface_Access);
   procedure startRandomPage (This : in out Advertisements);
   procedure processRandomPage (This : in out Advertisements);
   procedure stopAllPage (This : in out Advertisements);
   procedure addBanner (This : in out Advertisements; advertisementProcessorInterface : AdvertisementProcessorInterface_Access);
   procedure startAll (This : in out Advertisements);
   procedure stopAllBanner (This : in out Advertisements);
   function getBanner (This : in out Advertisements; index : Integer) return AdvertisementProcessorInterface_Access;
   procedure getBanner (This : in out Advertisements; index : Integer);
   procedure stopAll (This : in out Advertisements);

end org.allbinary.business.advertisement.Advertisements_Package;


