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
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.ImageCache_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GDResources_Package renames Standard.org.allbinary.game.gd.resource.GDResources_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Memory_Package renames Standard.org.allbinary.system.Memory_Package;

   type ImageCache is tagged;
   type ImageCache_Access is access all ImageCache'Class;
   type ImageCache_Access_Array is array (Natural range <>) of ImageCache_Access;
   type ImageCache_Access_Array_Access is access all ImageCache_Access_Array;

   type ImageCache is new ImageCacheBase with record
      commonStrings : CommonStrings_Access;
      tsUtil : TsUtil_Access;
   end record;
   NULL_IMAGE_CACHE : ImageCache_Access;

   procedure Initialize (This : in out ImageCache'Class);
   function Create return ImageCache_Access;
   procedure addListener (This : in out ImageCache; renderer : Java_Object_Access);
   function getIndex (This : in out ImageCache; key : Java_Object_Access) return Integer;
   procedure getIndex (This : in out ImageCache; key : Java_Object_Access);
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer);
   function getWithKey (This : in out ImageCache; key : Java_Object_Access) return Image_Access;
   procedure getWithKey (This : in out ImageCache; key : Java_Object_Access);
   procedure loadImageForAnimation (This : in out ImageCache);
   procedure progressEnded (This : in out ImageCache);
   procedure runTask (This : in out ImageCache);
   function isLazy (This : in out ImageCache) return Boolean;
   procedure isLazy (This : in out ImageCache);

end org.allbinary.image.ImageCache_Package;


