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
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;

package org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package is


   type PlatformBitmapBaseFactory is tagged;
   type PlatformBitmapBaseFactory_Access is access all PlatformBitmapBaseFactory'Class;
   type PlatformBitmapBaseFactory_Access_Array is array (Natural range <>) of PlatformBitmapBaseFactory_Access;
   type PlatformBitmapBaseFactory_Access_Array_Access is access all PlatformBitmapBaseFactory_Access_Array;

   type PlatformBitmapBaseFactory is new Java_Object with null record;
   NULL_PLATFORM_BITMAP_BASE_FACTORY : PlatformBitmapBaseFactory_Access;

   procedure Initialize (This : in out PlatformBitmapBaseFactory'Class);
   function Create return PlatformBitmapBaseFactory_Access;
   function createBitmap (This : in out PlatformBitmapBaseFactory; image_Param : access Image_Package.Image'Class) return PlatformBitmapBase_Access;
   procedure createBitmap (This : in out PlatformBitmapBaseFactory; image_Param : access Image_Package.Image'Class);

end org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;


