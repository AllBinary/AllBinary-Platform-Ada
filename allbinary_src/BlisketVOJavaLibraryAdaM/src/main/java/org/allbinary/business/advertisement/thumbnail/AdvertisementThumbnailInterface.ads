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
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package; use org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;

package org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package is

   package AdvertisementImageInterface_Package renames org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;

   type AdvertisementThumbnailInterface is interface and AdvertisementImageInterface;
   type AdvertisementThumbnailInterface_Access is access all AdvertisementThumbnailInterface'Class;
   type AdvertisementThumbnailInterface_Access_Array is array (Natural range <>) of AdvertisementThumbnailInterface_Access;
   type AdvertisementThumbnailInterface_Access_Array_Access is access all AdvertisementThumbnailInterface_Access_Array;

end org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;


