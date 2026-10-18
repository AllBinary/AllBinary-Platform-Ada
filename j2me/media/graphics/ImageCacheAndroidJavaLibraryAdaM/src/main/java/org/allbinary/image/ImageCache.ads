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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.ImageCache_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;

   type ImageCache is tagged;
   type ImageCache_Access is access all ImageCache'Class;
   type ImageCache_Access_Array is array (Natural range <>) of ImageCache_Access;
   type ImageCache_Access_Array_Access is access all ImageCache_Access_Array;
   type ImageCache_Access_Array_Access_Array is array (Natural range <>) of ImageCache_Access_Array_Access;
   type ImageCache_Access_Array_Access_Array_Access is access all ImageCache_Access_Array_Access_Array;

   type ImageCache is new ImageCacheBase with record
      commonStrings : CommonStrings_Access;
      systemWrapper : ABSystemWrapper_Access;
      tsUtil : TsUtil_Access;
   end record;
   NULL_IMAGE_CACHE : ImageCache_Access;

   procedure Initialize (This : in out ImageCache'Class);
   function Create return ImageCache_Access;
   procedure addListener (This : in out ImageCache; renderer_Param : access Java_Object'Class);
   function getIndex (This : in out ImageCache; key_Param : access Java_Object'Class) return Integer;
   procedure getIndex (This : in out ImageCache; key_Param : access Java_Object'Class);
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer);
   function getWithKey (This : in out ImageCache; key_Param : access Java_Object'Class) return Image_Access;
   procedure getWithKey (This : in out ImageCache; key_Param : access Java_Object'Class);
   procedure runTask (This : in out ImageCache);
   function isLazy (This : in out ImageCache) return Boolean;
   procedure addListener (This : in out ImageCache; Value : Unbounded_String);
   function getIndex (This : in out ImageCache; Value : Unbounded_String) return Integer;
   procedure getIndex (This : in out ImageCache; Value : Unbounded_String);
   function getWithKey (This : in out ImageCache; Value : Unbounded_String) return Image_Access;
   procedure getWithKey (This : in out ImageCache; Value : Unbounded_String);

end org.allbinary.image.ImageCache_Package;


