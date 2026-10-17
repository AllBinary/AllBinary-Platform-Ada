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
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure terrainEvent (This : in out PlayerTopViewCharacterBehavior; layer : AllBinaryLayer_Access; direction : Direction_Access; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        TrackingEventHandler_Package.getInstance.fireEvent (TrackingEventCircularStaticPool_Package.getInstance.getNextInstance (layer));
   end terrainEvent;

   procedure terrainMove (This : in out PlayerTopViewCharacterBehavior; layer : AllBinaryLayer_Access; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer) is
      basicGeographicMapUtil : BasicGeographicMapUtil_Access;
   begin
        basicGeographicMapUtil := BasicGeographicMapUtil_Package.getInstance;
        basicGeographicMapUtil.setPosition (geographicMapInterfaceArray, x, y);
   end terrainMove;

   procedure moveIfOnScreen (This : in out PlayerTopViewCharacterBehavior; layer : AllBinaryLayer_Access; ax : Integer; ay : Integer) is
   begin
        null;
   end moveIfOnScreen;

   function isTiledLayerMoveable (This : in out PlayerTopViewCharacterBehavior; terrainTiledLayer : AllBinaryTiledLayer_Access; x : Integer; y : Integer) return Boolean is
   begin
        return (((((terrainTiledLayer.getXP) + (DisplayInfoSingleton_Package.getInstance.getLastWidth)) < (terrainTiledLayer.getWidth)) or else ((x) < (0)))) and then ((((terrainTiledLayer.getXP) > (0)) or else ((x) > (0))));
   end isTiledLayerMoveable;

   procedure isTiledLayerMoveable (This : in out PlayerTopViewCharacterBehavior; terrainTiledLayer : AllBinaryTiledLayer_Access; x : Integer; y : Integer) is
      Java_Result : constant Boolean := PlayerTopViewCharacterBehavior'Class (This).isTiledLayerMoveable (terrainTiledLayer, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTiledLayerMoveable;

end org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package;


