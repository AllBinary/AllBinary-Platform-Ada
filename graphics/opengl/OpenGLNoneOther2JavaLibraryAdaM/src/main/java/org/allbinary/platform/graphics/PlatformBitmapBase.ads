-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;

package org.allbinary.platform.graphics.PlatformBitmapBase_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;

   type PlatformBitmapBase is tagged;
   type PlatformBitmapBase_Access is access all PlatformBitmapBase'Class;
   type PlatformBitmapBase_Access_Array is array (Natural range <>) of PlatformBitmapBase_Access;
   type PlatformBitmapBase_Access_Array_Access is access all PlatformBitmapBase_Access_Array;

   type PlatformBitmapBase is new Java_Object with record
      alpha : Integer;
      basicColor : BasicColor_Access;
   end record;
   NULL_PLATFORM_BITMAP_BASE : PlatformBitmapBase_Access;

   procedure Initialize (This : in out PlatformBitmapBase'Class);
   function Create return PlatformBitmapBase_Access;
   function getWidth (This : in out PlatformBitmapBase) return Integer;
   procedure getWidth (This : in out PlatformBitmapBase);
   function getHeight (This : in out PlatformBitmapBase) return Integer;
   procedure getHeight (This : in out PlatformBitmapBase);
   function getImage (This : in out PlatformBitmapBase) return Image_Access;
   procedure getImage (This : in out PlatformBitmapBase);

end org.allbinary.platform.graphics.PlatformBitmapBase_Package;


