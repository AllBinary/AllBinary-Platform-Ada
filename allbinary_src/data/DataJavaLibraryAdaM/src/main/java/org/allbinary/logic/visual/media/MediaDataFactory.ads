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
with org.allbinary.logic.visual.media.MediaData_Package; use org.allbinary.logic.visual.media.MediaData_Package;

package org.allbinary.logic.visual.media.MediaDataFactory_Package is


   type MediaDataFactory is tagged;
   type MediaDataFactory_Access is access all MediaDataFactory'Class;
   type MediaDataFactory_Access_Array is array (Natural range <>) of MediaDataFactory_Access;
   type MediaDataFactory_Access_Array_Access is access all MediaDataFactory_Access_Array;

   type MediaDataFactory is new Java_Object with record
      AVI : MediaData_Access;
      BMP : MediaData_Access;
      CEL : MediaData_Access;
      FITS : MediaData_Access;
      FLI : MediaData_Access;
      GBR : MediaData_Access;
      GIF : MediaData_Access;
      GIH : MediaData_Access;
      JPG : MediaData_Access;
      PIX : MediaData_Access;
      PNG : MediaData_Access;
      PNM : MediaData_Access;
      PSD : MediaData_Access;
      PSP : MediaData_Access;
      PS : MediaData_Access;
      SGI : MediaData_Access;
      SWF : MediaData_Access;
      TGA : MediaData_Access;
      TIFF : MediaData_Access;
      WMF : MediaData_Access;
   end record;
   instance : MediaDataFactory_Access;

   procedure Initialize (This : in out MediaDataFactory'Class);
   function Create return MediaDataFactory_Access;
   function getInstance return MediaDataFactory_Access;

end org.allbinary.logic.visual.media.MediaDataFactory_Package;


