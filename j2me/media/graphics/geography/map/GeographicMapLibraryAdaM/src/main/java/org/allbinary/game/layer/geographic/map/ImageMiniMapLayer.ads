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
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.image.PaintableToImageUtil_Package; use org.allbinary.image.PaintableToImageUtil_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package; use org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;

package org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package is

   package Anchor_Package renames org.allbinary.graphics.Anchor_Package;
   package PaintableToImageUtil_Package renames org.allbinary.image.PaintableToImageUtil_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package ViewPositionBase_Package renames org.allbinary.view.ViewPositionBase_Package;

   type ImageMiniMapLayer is tagged;
   type ImageMiniMapLayer_Access is access all ImageMiniMapLayer'Class;
   type ImageMiniMapLayer_Access_Array is array (Natural range <>) of ImageMiniMapLayer_Access;
   type ImageMiniMapLayer_Access_Array_Access is access all ImageMiniMapLayer_Access_Array;

   type ImageMiniMapLayer is new MiniMapLayer with record
      image : Image_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageMiniMapLayer'Class; geographicMapInterface : BasicGeographicMap_Access; viewPosition : ViewPositionBase_Access);
   function Create (geographicMapInterface : BasicGeographicMap_Access; viewPosition : ViewPositionBase_Access) return ImageMiniMapLayer_Access;
   procedure init (This : in out ImageMiniMapLayer);
   procedure paint (This : in out ImageMiniMapLayer; graphics : Graphics_Access);

end org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package;


