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
with org.allbinary.graphics.form.item.ABCustomImageItem_Package; use org.allbinary.graphics.form.item.ABCustomImageItem_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package is

   package ABCustomImageItem_Package renames org.allbinary.graphics.form.item.ABCustomImageItem_Package;
   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package LayerInterfaceFactoryInterface_Package renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

   type LayerInterfaceFactoryImageItem is tagged;
   type LayerInterfaceFactoryImageItem_Access is access all LayerInterfaceFactoryImageItem'Class;
   type LayerInterfaceFactoryImageItem_Access_Array is array (Natural range <>) of LayerInterfaceFactoryImageItem_Access;
   type LayerInterfaceFactoryImageItem_Access_Array_Access is access all LayerInterfaceFactoryImageItem_Access_Array;

   type LayerInterfaceFactoryImageItem is new ABCustomImageItem with record
      animationArray : Animation_Access_Array_Access;
      layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out LayerInterfaceFactoryImageItem'Class; label : Unbounded_String; img : Image_Access; layout : Integer; altText : Unbounded_String; basicColor : BasicColor_Access; animationArray : Animation_Access_Array_Access; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access);
   function Create (label : Unbounded_String; img : Image_Access; layout : Integer; altText : Unbounded_String; basicColor : BasicColor_Access; animationArray : Animation_Access_Array_Access; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access) return LayerInterfaceFactoryImageItem_Access;
   function getLayerInterfaceFactoryInterface (This : in out LayerInterfaceFactoryImageItem) return LayerInterfaceFactoryInterface_Access;
   procedure getLayerInterfaceFactoryInterface (This : in out LayerInterfaceFactoryImageItem);
   procedure paintXY (This : in out LayerInterfaceFactoryImageItem; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;


