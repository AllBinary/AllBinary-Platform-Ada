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
with org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package; use org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;

package org.allbinary.business.advertisement.search.website.BasicAdvertisementWebsite_Package is


   type BasicAdvertisementWebsite is tagged;
   type BasicAdvertisementWebsite_Access is access all BasicAdvertisementWebsite'Class;
   type BasicAdvertisementWebsite_Access_Array is array (Natural range <>) of BasicAdvertisementWebsite_Access;
   type BasicAdvertisementWebsite_Access_Array_Access is access all BasicAdvertisementWebsite_Access_Array;

   type BasicAdvertisementWebsite is new AdvertisementWebsiteInterface with record
      websiteId : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicAdvertisementWebsite'Class; websiteId : Unbounded_String);
   function Create (websiteId : Unbounded_String) return BasicAdvertisementWebsite_Access;
   function toString (This : in out BasicAdvertisementWebsite) return Unbounded_String;
   procedure toString (This : in out BasicAdvertisementWebsite);

end org.allbinary.business.advertisement.search.website.BasicAdvertisementWebsite_Package;


