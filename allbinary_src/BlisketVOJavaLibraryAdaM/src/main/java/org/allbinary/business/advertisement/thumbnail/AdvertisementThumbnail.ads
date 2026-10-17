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
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package; use org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;

package org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package is

   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

   type AdvertisementThumbnail is tagged;
   type AdvertisementThumbnail_Access is access all AdvertisementThumbnail'Class;
   type AdvertisementThumbnail_Access_Array is array (Natural range <>) of AdvertisementThumbnail_Access;
   type AdvertisementThumbnail_Access_Array_Access is access all AdvertisementThumbnail_Access_Array;

   type AdvertisementThumbnail is new AdvertisementThumbnailInterface with record
      imageFileName : Unbounded_String;
      imageUrl : Unbounded_String;
      constraint : TwoDimensionalConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out AdvertisementThumbnail'Class);
   function Create return AdvertisementThumbnail_Access;
   function getFileName (This : in out AdvertisementThumbnail) return Unbounded_String;
   function getUrl (This : in out AdvertisementThumbnail) return Unbounded_String;
   function getTwoDimensionalConstraint (This : in out AdvertisementThumbnail) return TwoDimensionalConstraintInterface_Access;

end org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package;


