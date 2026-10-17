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


package body org.allbinary.game.init.GameInitializationUtil_Package is

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
   procedure initDemo (This : in out GameInitializationUtil; abeClientInformation_Param : access AbeClientInformationInterface'Class; canvas_Param : access MyCanvas'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory'Class) is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      canvas : MyCanvas_Access := MyCanvas_Access (canvas_Param);
      gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
      mainFeatureFactory : MainFeatureFactory_Access;
      gameInitializationInterface : GameInitializationInterface_Access;
      features : Features_Access;
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        mainFeatureFactory := MainFeatureFactory_Package.getInstance;
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (mainFeatureFactory.STATIC) then
            gameInitializationInterface := gameInitializationInterfaceFactoryInterface.getInstance;
            features := Features_Package.getInstance;
            if features.isFeature (mainFeatureFactory.LOAD_ALL) then
                This.initGame (abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface);
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
   procedure initGame (This : in out GameInitializationUtil; abeClientInformation_Param : access AbeClientInformationInterface'Class; canvas_Param : access MyCanvas'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory'Class) is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      canvas : MyCanvas_Access := MyCanvas_Access (canvas_Param);
      gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
      gameInitializationInterface : GameInitializationInterface_Access;
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (MainFeatureFactory_Package.getInstance.STATIC) then
            gameInitializationInterface := gameInitializationInterfaceFactoryInterface.getInstance;
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


