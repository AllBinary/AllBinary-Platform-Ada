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


package body org.allbinary.game.layer.unit.UnitItemArrayFactory_Package is

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
   function createFlagItem (This : in out UnitItemArrayFactory; flagResources : FlagGameResources_Access; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access) return ABCustomItem_Access is
      name : Unbounded_String;
      index : Integer;
   begin
        name := flagResources.NAME;
        index := (Index (name, To_String (This.commonSeps.SPACE)) - 1);
        if (index) >= (0) then
            name := Unbounded_Slice (name, (index) + 1, Length (name));
        end if;
        return This.createNamedFlagItem (flagResources, name, layerInterfaceFactoryInterface);
   end createFlagItem;

   --  throws Exception
   function createNamedFlagItem (This : in out UnitItemArrayFactory; flagResources : FlagGameResources_Access; name : Unbounded_String; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access) return ABCustomItem_Access is
      IMAGE_CACHE : ImageCache_Access;
      image : Image_Access;
      item : ABCustomItem_Access;
   begin
        IMAGE_CACHE := GameFeatureImageCacheFactory_Package.getInstance;
        image := IMAGE_CACHE.getWithKey (flagResources.RESOURCE_ICON);
        item := LayerInterfaceFactoryImageItem_Package.Create (name, image, ImageItem_Package.LAYOUT_DEFAULT, flagResources.NAME, This.basicColor, new Animation_Access_Array'(0 => RTSLayerTextAnimation_Package.Create (RTSGameStrings_Package.getInstance.DRAGGABLE, image)), layerInterfaceFactoryInterface);
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

   function indexOf (This : in out UnitItemArrayFactory; basicGameResources : BasicGameResources_Access) return Integer is
      index : Integer;
   begin
        for index in reverse 0 .. (This.resources'Length) - (1) loop
            if (This.resources (index)) = (basicGameResources) then
                return index;
            end if;
        end loop;
        return -(1);
   end indexOf;

   procedure createFlagItem (This : in out UnitItemArrayFactory; flagResources : FlagGameResources_Access; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access) is
      Java_Result : constant ABCustomItem_Access := UnitItemArrayFactory'Class (This).createFlagItem (flagResources, layerInterfaceFactoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFlagItem;

   procedure createNamedFlagItem (This : in out UnitItemArrayFactory; flagResources : FlagGameResources_Access; name : Unbounded_String; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access) is
      Java_Result : constant ABCustomItem_Access := UnitItemArrayFactory'Class (This).createNamedFlagItem (flagResources, name, layerInterfaceFactoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNamedFlagItem;

   procedure indexOf (This : in out UnitItemArrayFactory; basicGameResources : BasicGameResources_Access) is
      Java_Result : constant Integer := UnitItemArrayFactory'Class (This).indexOf (basicGameResources);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end indexOf;

begin
   null;
   ITEMS := CustomItemUtil_Package.getInstance.CUSTOM_ITEM_ARRAY;

end org.allbinary.game.layer.unit.UnitItemArrayFactory_Package;


