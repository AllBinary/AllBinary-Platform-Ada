-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
--  with javax.microedition.lcdui.Screen_Package; use javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItemInterface_Package; use org.allbinary.graphics.form.item.ABCustomItemInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.game.layer.TileLayerItem_Package is

   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package ABCustomItemInterface_Package renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;

   type TileLayerItem is tagged;
   type TileLayerItem_Access is access all TileLayerItem'Class;
   type TileLayerItem_Access_Array is array (Natural range <>) of TileLayerItem_Access;
   type TileLayerItem_Access_Array_Access is access all TileLayerItem_Access_Array;

   type TileLayerItem is new ABCustomItem and ABCustomItemInterface with record
      tiledLayer : AllBinaryTiledLayer_Access;
   end record;

   procedure Initialize (This : in out TileLayerItem'Class; label : Unbounded_String; tiledLayer : AllBinaryTiledLayer_Access; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (label : Unbounded_String; tiledLayer : AllBinaryTiledLayer_Access; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return TileLayerItem_Access;
   procedure setOwner (This : in out TileLayerItem; owner : Screen_Access);
   function getMinimumWidth (This : in out TileLayerItem) return Integer;
   procedure getMinimumWidth (This : in out TileLayerItem);
   function getMinimumHeight (This : in out TileLayerItem) return Integer;
   procedure getMinimumHeight (This : in out TileLayerItem);
   function getMinContentHeight (This : in out TileLayerItem) return Integer;
   procedure getMinContentHeight (This : in out TileLayerItem);
   function getMinContentWidth (This : in out TileLayerItem) return Integer;
   procedure getMinContentWidth (This : in out TileLayerItem);
   function getPrefContentHeight (This : in out TileLayerItem; width : Integer) return Integer;
   procedure getPrefContentHeight (This : in out TileLayerItem; width : Integer);
   function getPrefContentWidth (This : in out TileLayerItem; height : Integer) return Integer;
   procedure getPrefContentWidth (This : in out TileLayerItem; height : Integer);
   procedure paintXY (This : in out TileLayerItem; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure paintUnselected (This : in out TileLayerItem; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.game.layer.TileLayerItem_Package;


