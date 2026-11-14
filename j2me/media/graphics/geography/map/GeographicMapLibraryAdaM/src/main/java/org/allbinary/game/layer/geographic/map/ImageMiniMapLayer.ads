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

with AllBinary_Java;
limited with org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package;
package org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References is
   type ImageMiniMapLayer_Access is access all org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package.ImageMiniMapLayer'Class;
   type ImageMiniMapLayer_Access_Array is array (Natural range <>) of ImageMiniMapLayer_Access;
   type ImageMiniMapLayer_Access_Array_Access is access all ImageMiniMapLayer_Access_Array;
   type ImageMiniMapLayer_Access_Array_Access_Array is array (Natural range <>) of ImageMiniMapLayer_Access_Array_Access;
   type ImageMiniMapLayer_Access_Array_Access_Array_Access is access all ImageMiniMapLayer_Access_Array_Access_Array;
   type ImageMiniMapLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageMiniMapLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageMiniMapLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageMiniMapLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageMiniMapLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageMiniMapLayer_Access_Array_Access is (if Value /= null and then Value.all in ImageMiniMapLayer_Access_Array_Object'Class then ImageMiniMapLayer_Access_Array_Object'Class (Value.all).Value else null);
   type ImageMiniMapLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageMiniMapLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageMiniMapLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageMiniMapLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageMiniMapLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageMiniMapLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageMiniMapLayer_Access_Array_Access_Array_Object'Class then ImageMiniMapLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References;

with org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package; use org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;

package org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageMiniMapLayer_Access is org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.ImageMiniMapLayer_Access;
   function "=" (Left, Right : ImageMiniMapLayer_Access) return Boolean renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References."=";
   subtype ImageMiniMapLayer_Access_Array is org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.ImageMiniMapLayer_Access_Array;
   function "=" (Left, Right : ImageMiniMapLayer_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References."=";
   subtype ImageMiniMapLayer_Access_Array_Access is org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.ImageMiniMapLayer_Access_Array_Access;
   function "=" (Left, Right : ImageMiniMapLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References."=";
   function Java_Box (Value : ImageMiniMapLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.Java_Box;
   function Java_Unbox_ImageMiniMapLayer_Access_Array (Value : access Java_Object'Class) return ImageMiniMapLayer_Access_Array_Access renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.Java_Unbox_ImageMiniMapLayer_Access_Array;
   subtype ImageMiniMapLayer_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.ImageMiniMapLayer_Access_Array_Access_Array;
   function "=" (Left, Right : ImageMiniMapLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References."=";
   subtype ImageMiniMapLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.ImageMiniMapLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageMiniMapLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References."=";
   function Java_Box (Value : ImageMiniMapLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.Java_Box;
   function Java_Unbox_ImageMiniMapLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageMiniMapLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package_References.Java_Unbox_ImageMiniMapLayer_Access_Array_Access_Array;

   type ImageMiniMapLayer is new MiniMapLayer with record
      image : Image_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageMiniMapLayer'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return ImageMiniMapLayer_Access;
   procedure init (This : in out ImageMiniMapLayer);
   procedure paint (This : in out ImageMiniMapLayer; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.geographic.map.ImageMiniMapLayer_Package;


