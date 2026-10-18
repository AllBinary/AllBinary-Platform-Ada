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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageItem_Package; use javax.microedition.lcdui.ImageItem_Package;
with org.allbinary.game.layer.RTSGameStrings_Package; use org.allbinary.game.layer.RTSGameStrings_Package;
with org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package; use org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
with org.allbinary.game.layer.item.RTSLayerTextAnimation_Package; use org.allbinary.game.layer.item.RTSLayerTextAnimation_Package;
with org.allbinary.game.layer.resources.BasicGameResources_Package; use org.allbinary.game.layer.resources.BasicGameResources_Package;
with org.allbinary.game.layer.waypoint.FlagGameResources_Package; use org.allbinary.game.layer.waypoint.FlagGameResources_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.CustomItemUtil_Package; use org.allbinary.graphics.form.item.CustomItemUtil_Package;
with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package; use org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.unit.UnitItemArrayFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ImageItem_Package renames Standard.javax.microedition.lcdui.ImageItem_Package;
   package RTSGameStrings_Package renames Standard.org.allbinary.game.layer.RTSGameStrings_Package;
   package LayerInterfaceFactoryImageItem_Package renames Standard.org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
   package RTSLayerTextAnimation_Package renames Standard.org.allbinary.game.layer.item.RTSLayerTextAnimation_Package;
   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package FlagGameResources_Package renames Standard.org.allbinary.game.layer.waypoint.FlagGameResources_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CustomItemUtil_Package renames Standard.org.allbinary.graphics.form.item.CustomItemUtil_Package;
   package ItemArraySingletonFactoryInterface_Package renames Standard.org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

   type UnitItemArrayFactory is tagged;
   type UnitItemArrayFactory_Access is access all UnitItemArrayFactory'Class;
   type UnitItemArrayFactory_Access_Array is array (Natural range <>) of UnitItemArrayFactory_Access;
   type UnitItemArrayFactory_Access_Array_Access is access all UnitItemArrayFactory_Access_Array;

   type UnitItemArrayFactory is new ItemArraySingletonFactoryInterface with record
      commonSeps : CommonSeps_Access;
      basicColor : BasicColor_Access;
      resources : BasicGameResources_Access_Array_Access;
   end record;
   ITEMS : ABCustomItem_Access_Array_Access;

   procedure Initialize (This : in out UnitItemArrayFactory'Class; resources : BasicGameResources_Access_Array_Access);
   function Create (resources : BasicGameResources_Access_Array_Access) return UnitItemArrayFactory_Access;
   function createFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) return ABCustomItem_Access;
   procedure createFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class);
   function createNamedFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; name : Unbounded_String; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) return ABCustomItem_Access;
   procedure createNamedFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; name : Unbounded_String; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class);
   function getItems (This : in out UnitItemArrayFactory) return ABCustomItem_Access_Array_Access;
   function getResources (This : in out UnitItemArrayFactory) return BasicGameResources_Access_Array_Access;
   function indexOf (This : in out UnitItemArrayFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class) return Integer;
   procedure indexOf (This : in out UnitItemArrayFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class);

end org.allbinary.game.layer.unit.UnitItemArrayFactory_Package;


