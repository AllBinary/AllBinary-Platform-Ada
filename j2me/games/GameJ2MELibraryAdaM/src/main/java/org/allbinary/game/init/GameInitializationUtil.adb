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


with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
with org.allbinary.game.configuration.event.GameInitializedEventHandler_Package; use org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.game.init.GameInitializationInterface_Package; use org.allbinary.game.init.GameInitializationInterface_Package;

package body org.allbinary.game.init.GameInitializationUtil_Package is

   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
   package GameInitializedEventHandler_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   procedure Initialize_Fields (This : in out GameInitializationUtil'Class) is
   begin
      null;
      This.EVENT := GameInitializedEvent_Package.Create (GameInitializationUtil_Access'(This'Unchecked_Access));
   end Initialize_Fields;

   procedure Initialize (This : in out GameInitializationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameInitializationUtil_Access is
      This : constant GameInitializationUtil_Access := new GameInitializationUtil;
   begin
      GameInitializationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure initDemo (This : in out GameInitializationUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; canvas_Param : access MyCanvas_Package.MyCanvas'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      canvas : constant MyCanvas_Access := MyCanvas_Access (canvas_Param);
      gameInitializationInterfaceFactoryInterface : constant BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
      mainFeatureFactory : MainFeatureFactory_Access;
      gameInitializationInterface : GameInitializationInterface_Access;
      features : Features_Access;
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        mainFeatureFactory := MainFeatureFactory_Package.getInstance;
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (mainFeatureFactory.STATIC) then
            gameInitializationInterface := GameInitializationInterface_Access (gameInitializationInterfaceFactoryInterface.getInstance);
            features := Features_Package.getInstance;
            if features.isFeature (mainFeatureFactory.LOAD_ALL) then
                GameInitializationUtil'Class (This).initGame (abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface);
            elsif features.isFeature (mainFeatureFactory.LOAD_ONDEMAND) then
                resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
                gameInitializationInterface.init (abeClientInformation, canvas.getCustomCommandListener, resourceLoadingLevelFactory.LOAD_EARLY.getLevel);
                This.EVENT.setResourceLoadingLevel (resourceLoadingLevelFactory.LOAD_EARLY);
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Loading Feature Available")));
            end if;
            GameInitializedEventHandler_Package.getInstance.fireEvent (This.EVENT);
        end if;
   end initDemo;

   --  throws Exception
   procedure initGame (This : in out GameInitializationUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; canvas_Param : access MyCanvas_Package.MyCanvas'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      canvas : constant MyCanvas_Access := MyCanvas_Access (canvas_Param);
      gameInitializationInterfaceFactoryInterface : constant BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
      gameInitializationInterface : GameInitializationInterface_Access;
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (MainFeatureFactory_Package.getInstance.STATIC) then
            gameInitializationInterface := GameInitializationInterface_Access (gameInitializationInterfaceFactoryInterface.getInstance);
            resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
            gameInitializationInterface.init (abeClientInformation, canvas.getCustomCommandListener, resourceLoadingLevelFactory.LOAD_ALL.getLevel);
            This.EVENT.setResourceLoadingLevel (resourceLoadingLevelFactory.LOAD_ALL);
            GameInitializedEventHandler_Package.getInstance.fireEvent (This.EVENT);
            ChangedGameFeatureListener_Package.getInstance.remove (MainFeatureFactory_Package.getInstance.STATIC);
        end if;
   end initGame;

   function getInstance return GameInitializationUtil_Access is
   begin
        return GameInitializationUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := GameInitializationUtil_Package.Create;

end org.allbinary.game.init.GameInitializationUtil_Package;


