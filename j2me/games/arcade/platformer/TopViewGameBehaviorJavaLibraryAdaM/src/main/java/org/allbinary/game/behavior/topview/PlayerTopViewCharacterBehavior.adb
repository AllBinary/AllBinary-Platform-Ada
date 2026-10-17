-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package is

   procedure Initialize_Fields (This : in out PlayerTopViewCharacterBehavior'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out PlayerTopViewCharacterBehavior'Class) is
   begin
      TopViewCharacterBehavior_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return PlayerTopViewCharacterBehavior_Access is
      This : constant PlayerTopViewCharacterBehavior_Access := new PlayerTopViewCharacterBehavior;
   begin
      PlayerTopViewCharacterBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure terrainEvent (This : in out PlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; direction_Param : access Direction_Package.Direction'Class; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      direction : constant Direction_Access := Direction_Access (direction_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        TrackingEventHandler_Package.getInstance.fireEvent (TrackingEventCircularStaticPool_Package.getInstance.getNextInstance (layer));
   end terrainEvent;

   procedure terrainMove (This : in out PlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer) is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      basicGeographicMapUtil : BasicGeographicMapUtil_Access;
   begin
        basicGeographicMapUtil := BasicGeographicMapUtil_Package.getInstance;
        basicGeographicMapUtil.setPosition (geographicMapInterfaceArray, x, y);
   end terrainMove;

   procedure moveIfOnScreen (This : in out PlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; ax : Integer; ay : Integer) is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        null;
   end moveIfOnScreen;

   function isTiledLayerMoveable (This : in out PlayerTopViewCharacterBehavior; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; y : Integer) return Boolean is
      terrainTiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (terrainTiledLayer_Param);
   begin
        return (((((terrainTiledLayer.getXP) + (DisplayInfoSingleton_Package.getInstance.getLastWidth)) < (terrainTiledLayer.getWidth)) or else ((x) < (0)))) and then ((((terrainTiledLayer.getXP) > (0)) or else ((x) > (0))));
   end isTiledLayerMoveable;

   procedure isTiledLayerMoveable (This : in out PlayerTopViewCharacterBehavior; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant Boolean := PlayerTopViewCharacterBehavior'Class (This).isTiledLayerMoveable (terrainTiledLayer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTiledLayerMoveable;

end org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package;


