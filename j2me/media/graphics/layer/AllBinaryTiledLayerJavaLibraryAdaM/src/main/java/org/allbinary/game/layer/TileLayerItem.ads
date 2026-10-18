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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Screen_Package; use javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItemInterface_Package; use org.allbinary.graphics.form.item.ABCustomItemInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;

package org.allbinary.game.layer.TileLayerItem_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Screen_Package renames Standard.javax.microedition.lcdui.Screen_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package ABCustomItemInterface_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItemInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type TileLayerItem is tagged;
   type TileLayerItem_Access is access all TileLayerItem'Class;
   type TileLayerItem_Access_Array is array (Natural range <>) of TileLayerItem_Access;
   type TileLayerItem_Access_Array_Access is access all TileLayerItem_Access_Array;
   type TileLayerItem_Access_Array_Access_Array is array (Natural range <>) of TileLayerItem_Access_Array_Access;
   type TileLayerItem_Access_Array_Access_Array_Access is access all TileLayerItem_Access_Array_Access_Array;

   type TileLayerItem is new ABCustomItem and ABCustomItemInterface with record
      tiledLayer : AllBinaryTiledLayer_Access;
   end record;

   procedure Initialize (This : in out TileLayerItem'Class; label : Unbounded_String; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (label : Unbounded_String; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return TileLayerItem_Access;
   procedure setOwner (This : in out TileLayerItem; owner_Param : access Screen_Package.Screen'Class);
   function getMinimumWidth (This : in out TileLayerItem) return Integer;
   function getMinimumHeight (This : in out TileLayerItem) return Integer;
   function getMinContentHeight (This : in out TileLayerItem) return Integer;
   function getMinContentWidth (This : in out TileLayerItem) return Integer;
   function getPrefContentHeight (This : in out TileLayerItem; width : Integer) return Integer;
   procedure getPrefContentHeight (This : in out TileLayerItem; width : Integer);
   function getPrefContentWidth (This : in out TileLayerItem; height : Integer) return Integer;
   procedure getPrefContentWidth (This : in out TileLayerItem; height : Integer);
   procedure paintXY (This : in out TileLayerItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintUnselected (This : in out TileLayerItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.game.layer.TileLayerItem_Package;


