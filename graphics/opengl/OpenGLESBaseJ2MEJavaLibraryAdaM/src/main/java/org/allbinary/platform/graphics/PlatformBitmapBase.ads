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

package org.allbinary.platform.graphics.PlatformBitmapBase_Package is


   type PlatformBitmapBase is tagged;
   type PlatformBitmapBase_Access is access all PlatformBitmapBase'Class;
   type PlatformBitmapBase_Access_Array is array (Natural range <>) of PlatformBitmapBase_Access;
   type PlatformBitmapBase_Access_Array_Access is access all PlatformBitmapBase_Access_Array;

   type PlatformBitmapBase is new Java_Object with null record;

   procedure Initialize (This : in out PlatformBitmapBase'Class);
   function Create return PlatformBitmapBase_Access;
   function getImage (This : in out PlatformBitmapBase) return Image_Access;
   procedure getImage (This : in out PlatformBitmapBase);

end org.allbinary.platform.graphics.PlatformBitmapBase_Package;


