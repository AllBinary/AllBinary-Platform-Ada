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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageItem_Package; use javax.microedition.lcdui.ImageItem_Package;
with org.allbinary.game.layer.RTSGameStrings_Package; use org.allbinary.game.layer.RTSGameStrings_Package;
with org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package; use org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
with org.allbinary.game.layer.item.RTSLayerTextAnimation_Package; use org.allbinary.game.layer.item.RTSLayerTextAnimation_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.CustomItemUtil_Package; use org.allbinary.graphics.form.item.CustomItemUtil_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;

package body org.allbinary.game.layer.unit.UnitItemArrayFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ImageItem_Package renames Standard.javax.microedition.lcdui.ImageItem_Package;
   package RTSGameStrings_Package renames Standard.org.allbinary.game.layer.RTSGameStrings_Package;
   package LayerInterfaceFactoryImageItem_Package renames Standard.org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
   package RTSLayerTextAnimation_Package renames Standard.org.allbinary.game.layer.item.RTSLayerTextAnimation_Package;
   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CustomItemUtil_Package renames Standard.org.allbinary.graphics.form.item.CustomItemUtil_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   procedure Initialize_Fields (This : in out UnitItemArrayFactory'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UnitItemArrayFactory'Class; resources : BasicGameResources_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.resources := resources;
   end Initialize;

   function Create (resources : BasicGameResources_Access_Array_Access) return UnitItemArrayFactory_Access is
      This : constant UnitItemArrayFactory_Access := new UnitItemArrayFactory;
   begin
      UnitItemArrayFactory_Package.Initialize (This.all, resources);
      return This;
   end Create;

   --  throws Exception
   function createFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) return ABCustomItem_Access is
      flagResources : constant FlagGameResources_Access := FlagGameResources_Access (flagResources_Param);
      layerInterfaceFactoryInterface : constant LayerInterfaceFactoryInterface_Access := LayerInterfaceFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
      name : Unbounded_String;
      index : Integer;
   begin
        name := flagResources.NAME;
        index := Java_Index_Of (name, Java_Image (This.commonSeps.SPACE));
        if (index) >= (0) then
            name := Unbounded_Slice (name, (index) + 1, Length (name));
        end if;
        return UnitItemArrayFactory'Class (This).createNamedFlagItem (flagResources, name, layerInterfaceFactoryInterface);
   end createFlagItem;

   --  throws Exception
   function createNamedFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; name : Unbounded_String; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) return ABCustomItem_Access is
      flagResources : constant FlagGameResources_Access := FlagGameResources_Access (flagResources_Param);
      layerInterfaceFactoryInterface : constant LayerInterfaceFactoryInterface_Access := LayerInterfaceFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
      IMAGE_CACHE : ImageCache_Access;
      image : Image_Access;
      item : ABCustomItem_Access;
   begin
        IMAGE_CACHE := GameFeatureImageCacheFactory_Package.getInstance;
        image := IMAGE_CACHE.getWithKey (flagResources.RESOURCE_ICON);
        item := ABCustomItem_Access (LayerInterfaceFactoryImageItem_Package.Create (name, image, ImageItem_Package.LAYOUT_DEFAULT, flagResources.NAME, This.basicColor, new Animation_Access_Array'(0 => RTSLayerTextAnimation_Package.Create (RTSGameStrings_Package.getInstance.DRAGGABLE, image)), layerInterfaceFactoryInterface));
        return item;
   end createNamedFlagItem;

   --  throws Exception
   function getItems (This : in out UnitItemArrayFactory) return ABCustomItem_Access_Array_Access is
   begin
        return UnitItemArrayFactory_Package.ITEMS;
   end getItems;

   function getResources (This : in out UnitItemArrayFactory) return BasicGameResources_Access_Array_Access is
   begin
        return This.resources;
   end getResources;

   function indexOf (This : in out UnitItemArrayFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class) return Integer is
      basicGameResources : constant BasicGameResources_Access := BasicGameResources_Access (basicGameResources_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (This.resources'Length) - (1) loop
            if (This.resources (index)) = (basicGameResources) then
                return index;
            end if;
        end loop;
        return -(1);
   end indexOf;

   procedure createFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) is
      Java_Result : constant ABCustomItem_Access := UnitItemArrayFactory'Class (This).createFlagItem (flagResources_Param => flagResources_Param, layerInterfaceFactoryInterface_Param => layerInterfaceFactoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFlagItem;

   procedure createNamedFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; name : Unbounded_String; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) is
      Java_Result : constant ABCustomItem_Access := UnitItemArrayFactory'Class (This).createNamedFlagItem (flagResources_Param => flagResources_Param, name => name, layerInterfaceFactoryInterface_Param => layerInterfaceFactoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNamedFlagItem;

   procedure indexOf (This : in out UnitItemArrayFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class) is
      Java_Result : constant Integer := UnitItemArrayFactory'Class (This).indexOf (basicGameResources_Param => basicGameResources_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end indexOf;

begin
   null;
   ITEMS := CustomItemUtil_Package.getInstance.CUSTOM_ITEM_ARRAY;

end org.allbinary.game.layer.unit.UnitItemArrayFactory_Package;


