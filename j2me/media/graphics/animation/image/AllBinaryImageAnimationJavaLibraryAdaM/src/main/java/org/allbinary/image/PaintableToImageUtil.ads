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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;

package org.allbinary.image.PaintableToImageUtil_Package is

   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;

   type PaintableToImageUtil is tagged;
   type PaintableToImageUtil_Access is access all PaintableToImageUtil'Class;
   type PaintableToImageUtil_Access_Array is array (Natural range <>) of PaintableToImageUtil_Access;
   type PaintableToImageUtil_Access_Array_Access is access all PaintableToImageUtil_Access_Array;

   type PaintableToImageUtil is new Java_Object with null record;
   instance : PaintableToImageUtil_Access;

   procedure Initialize (This : in out PaintableToImageUtil'Class);
   function Create return PaintableToImageUtil_Access;
   function getImage (paintableInterface_Param : access PaintableInterface_Package.PaintableInterface'Class; width : Integer; height : Integer) return Image_Access;
   procedure getImage (paintableInterface_Param : access PaintableInterface_Package.PaintableInterface'Class; width : Integer; height : Integer);

end org.allbinary.image.PaintableToImageUtil_Package;


