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


package body org.allbinary.game.layer.resources.OnDemandLoader_Package is

   procedure Initialize_Fields (This : in out OnDemandLoader'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out OnDemandLoader'Class; onDemandResourcesFactory : OnDemandResourcesFactory_Access; gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access; resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access) is
   begin
      Initialize_Fields (This);
        This.onDemandResourcesFactory := onDemandResourcesFactory;
        This.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory := gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
        This.resourceAnimationInterfaceFactoryInterfaceFactory := resourceAnimationInterfaceFactoryInterfaceFactory;
   end Initialize;

   function Create (onDemandResourcesFactory : OnDemandResourcesFactory_Access; gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access; resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access) return OnDemandLoader_Access is
      This : constant OnDemandLoader_Access := new OnDemandLoader;
   begin
      OnDemandLoader_Package.Initialize (This.all, onDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out OnDemandLoader; imageCache : ImageCache_Access; level : Integer; loadingString : Unbounded_String) is
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
      layerPlacementInterfaceBasicArrayListFactoryInterface : LayerPlacementInterfaceBasicArrayListFactoryInterface_Access;
   begin
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if Features_Package.getInstance.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ALL) then
            if This.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized then
                return;
            end if;
            This.initAll (imageCache, loadingString);
        elsif (level) /= (resourceLoadingLevelFactory.LOAD_ALL.getLevel) then
            layerPlacementInterfaceBasicArrayListFactoryInterface := This.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance (level);
            This.initLevel (layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString);
        end if;
   end init;

   --  throws Exception
   procedure initAll (This : in out OnDemandLoader; imageCache : ImageCache_Access; loadingString : Unbounded_String) is
      index : Integer;
      portion : Integer;
      onDemandResources : OnDemandResources_Access;
      onDemandIndex : Integer;
   begin
        index := 0;
        portion := 120;
        onDemandResources := null;
        onDemandIndex := This.onDemandResourcesFactory.size;
        while (Java_Pre_Decrement (onDemandIndex)) >= (0) loop
            onDemandResources := This.onDemandResourcesFactory.remove (onDemandIndex);
            if (onDemandResources) /= (OnDemandResources_Package.NULL_ON_DEMAND_RESOURCES) then
                index := onDemandResources.initAt (imageCache, This.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            end if;
        end loop;
   end initAll;

   --  throws Exception
   procedure initLevel (This : in out OnDemandLoader; layerPlacementInterfaceBasicArrayListFactoryInterface : LayerPlacementInterfaceBasicArrayListFactoryInterface_Access; imageCache : ImageCache_Access; level : Integer; loadingString : Unbounded_String) is
      commonStrings : CommonStrings_Access;
      portion : Integer;
      index : Integer;
      onDemandArray : Integer_Array_Access;
      onDemandResources : OnDemandResources_Access;
      onDemandIndex : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        portion := 120;
        index := 0;
        onDemandArray := layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources;
        PreLogUtil_Package.put (StringMaker_Package.Create.append (commonStrings.START).appendint (onDemandArray'Length).toString, This'Unchecked_Access, To_Unbounded_String ("initLevel"));
        onDemandResources := null;
        onDemandIndex := onDemandArray'Length;
        while (Java_Pre_Decrement (onDemandIndex)) >= (0) loop
            onDemandResources := This.onDemandResourcesFactory.remove (onDemandArray (onDemandIndex));
            if (onDemandResources) /= (OnDemandResources_Package.NULL_ON_DEMAND_RESOURCES) then
                index := onDemandResources.initAt (imageCache, This.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            end if;
        end loop;
   end initLevel;

end org.allbinary.game.layer.resources.OnDemandLoader_Package;


