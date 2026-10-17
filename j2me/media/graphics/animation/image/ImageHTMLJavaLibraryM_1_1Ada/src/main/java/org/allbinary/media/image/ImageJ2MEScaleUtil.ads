--
-- AllBinary Open License Version 1
-- Copyright (c) 2023 AllBinary
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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.microemu.device.playn.PlaynImmutableImage_Package; use org.microemu.device.playn.PlaynImmutableImage_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.CanvasImage_Package; use playn.core.CanvasImage_Package;
with playn.core.CanvasSurface_Package; use playn.core.CanvasSurface_Package;

package org.allbinary.media.image.ImageJ2MEScaleUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PlaynImmutableImage_Package renames Standard.org.microemu.device.playn.PlaynImmutableImage_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package CanvasImage_Package renames Standard.playn.core.CanvasImage_Package;
   package CanvasSurface_Package renames Standard.playn.core.CanvasSurface_Package;

   type ImageJ2MEScaleUtil is tagged;
   type ImageJ2MEScaleUtil_Access is access all ImageJ2MEScaleUtil'Class;
   type ImageJ2MEScaleUtil_Access_Array is array (Natural range <>) of ImageJ2MEScaleUtil_Access;
   type ImageJ2MEScaleUtil_Access_Array_Access is access all ImageJ2MEScaleUtil_Access_Array;

   type ImageJ2MEScaleUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ImageJ2MEScaleUtil_Access;

   procedure Initialize (This : in out ImageJ2MEScaleUtil'Class);
   function Create return ImageJ2MEScaleUtil_Access;
   function getInstance return ImageJ2MEScaleUtil_Access;
   function scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) return Image_Access_Array_Access;
   procedure scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer);
   function scale (This : in out ImageJ2MEScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer) return Image_Access;
   procedure scale (This : in out ImageJ2MEScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer);

end org.allbinary.media.image.ImageJ2MEScaleUtil_Package;


