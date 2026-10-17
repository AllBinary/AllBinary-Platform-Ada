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


package body org.allbinary.game.layer.AllBinaryGameLayerManager_Package is

   procedure Initialize_Fields (This : in out AllBinaryGameLayerManager'Class) is
   begin
      null;
      
      
      
      This.playerGameInputCompositeInterface := NullPlayerGameInputComposite_Package.NULL_PLAYER_GAME_INPUT_COMPOSITE;
   end Initialize_Fields;


   function getNullInstance return AllBinaryGameLayerManager_Access is
   begin
        if (AllBinaryGameLayerManager_Package.NULL_ALLBINARY_LAYER_MANAGER) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AllBinaryGameLayerManager_Package.NULL_ALLBINARY_LAYER_MANAGER := AllBinaryGameLayerManager_Package.Create (BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE, GameInfo_Package.NONE);
        end if;
        return AllBinaryGameLayerManager_Access (AllBinaryGameLayerManager_Package.NULL_ALLBINARY_LAYER_MANAGER);
   end getNullInstance;

   procedure Initialize (This : in out AllBinaryGameLayerManager'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      itemColorFactory : ItemColorFactory_Access;
   begin
      AllBinaryLayerManager_Package.Initialize (This);
      Initialize_Fields (This);
        This.backgroundBasicColor := backgroundBasicColor;
        This.foregroundBasicColor := foregroundBasicColor;
        itemColorFactory := ItemColorFactory_Package.getInstance;
        itemColorFactory.INVERT_PAINT := This.backgroundBasicColor.intValue;
        itemColorFactory.PAINT := This.foregroundBasicColor.intValue;
        This.gameInfo := gameInfo;
   end Initialize;

   function Create (backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) return AllBinaryGameLayerManager_Access is
      This : constant AllBinaryGameLayerManager_Access := new AllBinaryGameLayerManager;
   begin
      AllBinaryGameLayerManager_Package.Initialize (This.all, backgroundBasicColor_Param, foregroundBasicColor_Param, gameInfo_Param);
      return This;
   end Create;

   function getLayerManager (This : in out AllBinaryGameLayerManager) return AllBinaryLayerManager_Access is
   begin
        return AllBinaryGameLayerManager_Access'(This'Unchecked_Access);
   end getLayerManager;

   procedure init (This : in out AllBinaryGameLayerManager) is
   begin
        null;
   end init;

   function getBackgroundBasicColor (This : in out AllBinaryGameLayerManager) return BasicColor_Access is
   begin
        return This.backgroundBasicColor;
   end getBackgroundBasicColor;

   procedure setBackgroundBasicColor (This : in out AllBinaryGameLayerManager; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
   begin
        This.backgroundBasicColor := backgroundBasicColor;
        ItemColorFactory_Package.getInstance.INVERT_PAINT := This.backgroundBasicColor.intValue;
   end setBackgroundBasicColor;

   function getForegroundBasicColor (This : in out AllBinaryGameLayerManager) return BasicColor_Access is
   begin
        return This.foregroundBasicColor;
   end getForegroundBasicColor;

   procedure setForegroundBasicColor (This : in out AllBinaryGameLayerManager; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        This.foregroundBasicColor := foregroundBasicColor;
        ItemColorFactory_Package.getInstance.PAINT := This.foregroundBasicColor.intValue;
   end setForegroundBasicColor;

   function getGameInfo (This : in out AllBinaryGameLayerManager) return GameInfo_Access is
   begin
        return This.gameInfo;
   end getGameInfo;

   procedure setGameInfo (This : in out AllBinaryGameLayerManager; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
   begin
        This.gameInfo := gameInfo;
   end setGameInfo;

   procedure setLayerProcessorList (This : in out AllBinaryGameLayerManager; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      layerProcessorInterfaceArray : LayerProcessor_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        layerProcessorInterfaceArray := new LayerProcessor_Access_Array'(0 .. (list.size) - 1 => null);
        size := layerProcessorInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            layerProcessorInterfaceArray (index) := LayerProcessor_Access (list.objectArray (index));
        end loop;
        This.setLayerProcessorArray (layerProcessorInterfaceArray);
   end setLayerProcessorList;

   procedure setPlayerGameInputCompositeInterface (This : in out AllBinaryGameLayerManager; playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class) is
      playerGameInputCompositeInterface : constant PlayerGameInputCompositeInterface_Access := PlayerGameInputCompositeInterface_Access (playerGameInputCompositeInterface_Param);
   begin
        This.playerGameInputCompositeInterface := playerGameInputCompositeInterface;
   end setPlayerGameInputCompositeInterface;

   function getPlayerGameInputCompositeInterface (This : in out AllBinaryGameLayerManager) return PlayerGameInputCompositeInterface_Access is
   begin
        return This.playerGameInputCompositeInterface;
   end getPlayerGameInputCompositeInterface;

begin
   null;
   NULL_ALLBINARY_LAYER_MANAGER := NullUtil_Package.getInstance.NULL_OBJECT;
   ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (22);

end org.allbinary.game.layer.AllBinaryGameLayerManager_Package;


