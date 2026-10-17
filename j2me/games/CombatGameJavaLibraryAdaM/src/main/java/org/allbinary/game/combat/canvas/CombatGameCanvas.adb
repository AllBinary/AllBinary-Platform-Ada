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


package body org.allbinary.game.combat.canvas.CombatGameCanvas_Package is

   procedure Initialize_Fields (This : in out CombatGameCanvas'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CombatGameCanvas'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; buffered : Boolean) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      gameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (gameLayerManager_Param);
      highScoresFactoryInterface : constant HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      gameInitializationInterfaceFactoryInterface : constant BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
   begin
        AllBinaryGameCanvas_Package.Initialize (This, cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered);
   end Initialize;

   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; buffered : Boolean) return CombatGameCanvas_Access is
      This : constant CombatGameCanvas_Access := new CombatGameCanvas;
   begin
      CombatGameCanvas_Package.Initialize (This.all, cmdListener_Param, gameLayerManager_Param, highScoresFactoryInterface_Param, gameInitializationInterfaceFactoryInterface_Param, buffered);
      return This;
   end Create;

   procedure CombatGameCanvas_init (This : in out CombatGameCanvas) is
   begin
        DestroyEventCircularStaticPool_Package.getInstance.init (CombatGameCanvas_Access'(This'Unchecked_Access));
        ProgressCanvasFactory_Package.getInstance.addNormalPortion (50, To_Unbounded_String ("Destroy Events"));
   end CombatGameCanvas_init;

   --  throws Exception
   procedure initApp (This : in out CombatGameCanvas; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        This.CombatGameCanvas_init;
        AllBinaryGameCanvas (This).initApp (abeClientInformation);
   end initApp;

   procedure initConfigurablePortion (This : in out CombatGameCanvas; portion : Integer) is
      features : Features_Access;
      gameFeatureFactory : GameFeatureFactory_Access;
   begin
        DestroyedLayerProcessor_Package.init;
        ProgressCanvasFactory_Package.getInstance.addNormalPortion (portion, To_Unbounded_String ("Basic Processors"));
        features := Features_Package.getInstance;
        gameFeatureFactory := GameFeatureFactory_Package.getInstance;
        if (features.isFeature (gameFeatureFactory.DROPPED_ITEMS)) and then (features.isFeature (gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)) then
            CombatGameCanvas_Package.basicLayerProcessor := new BasicLayerProcessor_Access_Array'(0 .. (2) - 1 => null);
            CombatGameCanvas_Package.basicLayerProcessor (0) := DestroyedLayerProcessor_Package.getInstance;
            CombatGameCanvas_Package.basicLayerProcessor (1) := DropLayerProcessor_Package.getInstance;
        else
            CombatGameCanvas_Package.basicLayerProcessor := new BasicLayerProcessor_Access_Array'(0 .. (1) - 1 => null);
            CombatGameCanvas_Package.basicLayerProcessor (0) := DestroyedLayerProcessor_Package.getInstance;
        end if;
   end initConfigurablePortion;

   --  throws Exception
   procedure processPlayingGame (This : in out CombatGameCanvas) is
      index : Integer;
   begin
        AllBinaryGameCanvas (This).processPlayingGame;
        index := CombatGameCanvas_Package.basicLayerProcessor'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            CombatGameCanvas_Package.basicLayerProcessor (index).process (This.gameLayerManager);
        end loop;
   end processPlayingGame;

   --  throws Exception
   procedure cleanupGame (This : in out CombatGameCanvas) is
      index : Integer;
   begin
        AllBinaryGameCanvas (This).cleanupGame;
        index := CombatGameCanvas_Package.basicLayerProcessor'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            CombatGameCanvas_Package.basicLayerProcessor (index).getList.clear;
        end loop;
        GroupLayerManagerListener_Package.getInstance.clear;
        GroupLayerManagerListener_Package.getInstance.log;
        DestroyedEventHandler_Package.getInstance.removeAllListeners;
        This.cleanupManager;
   end cleanupGame;

   --  throws Exception
   procedure cleanupManager (This : in out CombatGameCanvas) is
   begin
        This.gameLayerManager.cleanup;
   end cleanupManager;

begin
   null;
   basicLayerProcessor := new BasicLayerProcessor_Access_Array'(0 .. (0) - 1 => null);

end org.allbinary.game.combat.canvas.CombatGameCanvas_Package;


