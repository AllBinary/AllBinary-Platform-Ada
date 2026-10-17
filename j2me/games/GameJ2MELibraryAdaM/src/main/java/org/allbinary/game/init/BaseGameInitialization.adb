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


package body org.allbinary.game.init.BaseGameInitialization_Package is

   procedure Initialize_Fields (This : in out BaseGameInitialization'Class) is
   begin
      null;
      
      
      This.initialized := False;
      This.EARLY_RESOURCES := 0;
      This.GAME_RESOURCES := 1;
      This.EARLY_CHANGABLE_RESOURCES := 2;
      This.GAME_CHANGABLE_RESOURCES := 3;
      This.gameInitialized := False;
      This.allLoaded := False;
   end Initialize_Fields;


   procedure Initialize (This : in out BaseGameInitialization'Class; resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer) is
   begin
      Initialize_Fields (This);
        This.resourceInitializationArray := resourceInitializationArray;
        This.portion := portion;
   end Initialize;

   function Create (resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer) return BaseGameInitialization_Access is
      This : constant BaseGameInitialization_Access := new BaseGameInitialization;
   begin
      BaseGameInitialization_Package.Initialize (This.all, resourceInitializationArray, portion);
      return This;
   end Create;

   --  throws Exception
   procedure initKey (This : in out BaseGameInitialization; portion : Integer) is
   begin
        null;
   end initKey;

   --  throws Exception
   procedure initKeyMapping (This : in out BaseGameInitialization; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; portion : Integer) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (InputFeatureFactory_Package.getInstance.INPUT_MAPPING) then
            PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.init (abeClientInformation);
            ProgressCanvasFactory_Package.getInstance.addNormalPortion (50, To_Unbounded_String ("Game Keys"));
            ChangedGameFeatureListener_Package.getInstance.remove (InputFeatureFactory_Package.getInstance.INPUT_MAPPING);
        end if;
   end initKeyMapping;

   --  throws Exception
   procedure init (This : in out BaseGameInitialization; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; level : Integer) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
      localPortion : Integer;
      progressCanvas : ProgressCanvas_Access;
   begin
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if (not (This.isInitialized)) and then ((((level) = (resourceLoadingLevelFactory.LOAD_ALL.getLevel)) or else ((level) = (resourceLoadingLevelFactory.LOAD_EARLY.getLevel)))) then
            localPortion := 40;
            if (level) = (resourceLoadingLevelFactory.LOAD_EARLY.getLevel) then
                localPortion := 8;
            end if;
            This.setInitialized (True);
            This.initKey (This.getPortion);
            This.initKeyMapping (abeClientInformation, This.getPortion);
            GameKeyEventFactory_Package.getInstance.init;
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            progressCanvas.addNormalPortion (localPortion, To_Unbounded_String ("Game Key Events"));
            BasicTouchInputFactory_Package.getInstance.init (PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
            CancelTouchButtonInputFactory_Package.getInstance;
            progressCanvas.addNormalPortion (localPortion, To_Unbounded_String ("Touch Input"));
            CompleteMotionGestureInputToGameMotionGestureInput_Package.getInstance.init;
            progressCanvas.addNormalPortion (localPortion, To_Unbounded_String ("Motion Input"));
            GameFeatureImageCacheFactory_Package.init;
            progressCanvas.addNormalPortion (localPortion, To_Unbounded_String ("Image Cache"));
            This.resourceInitializationArray (This.EARLY_RESOURCES).init;
        end if;
   end init;

   --  throws Exception
   procedure resourceInitialization (This : in out BaseGameInitialization; level : Integer) is
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if (This.resourceAnimationChange) and then ((level) = (resourceLoadingLevelFactory.LOAD_EARLY.getLevel)) then
            This.clearResources;
            This.resourceInitializationArray (This.EARLY_CHANGABLE_RESOURCES).init;
        end if;
        if (This.resourceAnimationChange) and then ((level) = (resourceLoadingLevelFactory.LOAD_ALL.getLevel)) then
            if This.allLoaded then
                This.clearResources;
            end if;
            if (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.getList.size) = (0) then
                This.resourceInitializationArray (This.EARLY_CHANGABLE_RESOURCES).init;
            end if;
            This.resourceInitializationArray (This.GAME_CHANGABLE_RESOURCES).init;
            This.allLoaded := True;
        end if;
   end resourceInitialization;

   function resourceAnimationChange (This : in out BaseGameInitialization) return Boolean is
      changedGameFeatureListener : ChangedGameFeatureListener_Access;
      gameConfigurationCentral : GameConfigurationCentral_Access;
   begin
        changedGameFeatureListener := ChangedGameFeatureListener_Package.getInstance;
        gameConfigurationCentral := GameConfigurationCentral_Package.getInstance;
        if changedGameFeatureListener.isChangedGameConfiguration (gameConfigurationCentral.SCALE) then
            return True;
        end if;
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (MainFeatureFactory_Package.getInstance.STATIC) then
            return True;
        end if;
        return False;
   end resourceAnimationChange;

   procedure clearResources (This : in out BaseGameInitialization) is
      featuredAnimationInterfaceFactoryInterfaceFactory : FeaturedAnimationInterfaceFactoryInterfaceFactory_Access;
   begin
        This.allLoaded := False;
        GameFeatureImageCacheFactory_Package.releaseAll;
        featuredAnimationInterfaceFactoryInterfaceFactory := FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance;
        featuredAnimationInterfaceFactoryInterfaceFactory.clear;
        FeaturedResourceRelativeRelationshipFactory_Package.getInstance.clear;
   end clearResources;

   procedure setGameInitialized (This : in out BaseGameInitialization; gameInitialized : Boolean) is
   begin
        This.gameInitialized := gameInitialized;
   end setGameInitialized;

   function isGameInitialized (This : in out BaseGameInitialization) return Boolean is
   begin
        return This.gameInitialized;
   end isGameInitialized;

   function getPortion (This : in out BaseGameInitialization) return Integer is
   begin
        return This.portion;
   end getPortion;

   procedure setInitialized (This : in out BaseGameInitialization; initialized : Boolean) is
   begin
        This.initialized := initialized;
   end setInitialized;

   function isInitialized (This : in out BaseGameInitialization) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

begin
   null;
   NULL_BASE_GAME_INITIALIZATION := BaseGameInitialization_Package.Create (new ResourceInitialization_Access_Array'(0 .. (0) - 1 => null), 0);

end org.allbinary.game.init.BaseGameInitialization_Package;


