-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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

limited with org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
package org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References is
   type LayerInterfaceFactoryImageItem_Access is access all org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package.LayerInterfaceFactoryImageItem'Class;
   type LayerInterfaceFactoryImageItem_Access_Array is array (Natural range <>) of LayerInterfaceFactoryImageItem_Access;
   type LayerInterfaceFactoryImageItem_Access_Array_Access is access all LayerInterfaceFactoryImageItem_Access_Array;
   type LayerInterfaceFactoryImageItem_Access_Array_Access_Array is array (Natural range <>) of LayerInterfaceFactoryImageItem_Access_Array_Access;
   type LayerInterfaceFactoryImageItem_Access_Array_Access_Array_Access is access all LayerInterfaceFactoryImageItem_Access_Array_Access_Array;
end org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References;

with org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References;
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
with org.allbinary.graphics.form.item.ABCustomImageItem_Package; use org.allbinary.graphics.form.item.ABCustomImageItem_Package;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References;

package org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ABCustomImageItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomImageItem_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype LayerInterfaceFactoryInterface_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access;
   use type LayerInterfaceFactoryInterface_Access;
   subtype LayerInterfaceFactoryInterface_Access_Array is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array;
   use type LayerInterfaceFactoryInterface_Access_Array;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access;
   use type LayerInterfaceFactoryInterface_Access_Array_Access;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerInterfaceFactoryImageItem_Access is org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References.LayerInterfaceFactoryImageItem_Access;
   function "=" (Left, Right : LayerInterfaceFactoryImageItem_Access) return Boolean renames org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References."=";
   subtype LayerInterfaceFactoryImageItem_Access_Array is org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References.LayerInterfaceFactoryImageItem_Access_Array;
   function "=" (Left, Right : LayerInterfaceFactoryImageItem_Access_Array) return Boolean renames org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References."=";
   subtype LayerInterfaceFactoryImageItem_Access_Array_Access is org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References.LayerInterfaceFactoryImageItem_Access_Array_Access;
   function "=" (Left, Right : LayerInterfaceFactoryImageItem_Access_Array_Access) return Boolean renames org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References."=";
   subtype LayerInterfaceFactoryImageItem_Access_Array_Access_Array is org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References.LayerInterfaceFactoryImageItem_Access_Array_Access_Array;
   function "=" (Left, Right : LayerInterfaceFactoryImageItem_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References."=";
   subtype LayerInterfaceFactoryImageItem_Access_Array_Access_Array_Access is org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References.LayerInterfaceFactoryImageItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerInterfaceFactoryImageItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package_References."=";

   type LayerInterfaceFactoryImageItem is new ABCustomImageItem with record
      animationArray : Animation_Access_Array_Access;
      layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out LayerInterfaceFactoryImageItem'Class; label : Unbounded_String; img_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationArray : Animation_Access_Array_Access; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class);
   function Create (label : Unbounded_String; img_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationArray : Animation_Access_Array_Access; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) return LayerInterfaceFactoryImageItem_Access;
   function getLayerInterfaceFactoryInterface (This : in out LayerInterfaceFactoryImageItem) return LayerInterfaceFactoryInterface_Access;
   procedure paintXY (This : in out LayerInterfaceFactoryImageItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;


