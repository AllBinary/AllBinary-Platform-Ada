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


package body org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package is

   procedure Initialize_Fields (This : in out NonPlayerTopViewCharacterBehavior'Class) is
   begin
      null;
      This.geographicMapBehavior := MultiGeographicMapBehavior_Package.Create;
      This.CLIFF := BasicTerrainInfo_Package.Create (AngleFactory_Package.getInstance.DOWN);
   end Initialize_Fields;

   procedure Initialize (This : in out NonPlayerTopViewCharacterBehavior'Class) is
   begin
      TopViewCharacterBehavior_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NonPlayerTopViewCharacterBehavior_Access is
      This : constant NonPlayerTopViewCharacterBehavior_Access := new NonPlayerTopViewCharacterBehavior;
   begin
      NonPlayerTopViewCharacterBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure terrainEvent (This : in out NonPlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer'Class; direction_Param : access Direction'Class; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      direction : Direction_Access := Direction_Access (direction_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      maxColumns : Integer;
      nextTerrainGeographicMapCellPosition : GeographicMapCellPosition_Access;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      hasSolidBlock : Boolean;
      terrainEvent : TerrainEvent_Access;
   begin
        maxColumns := geographicMapInterfaceArray (0).getAllBinaryTiledLayer.getColumns;
        if ((geographicMapCellPosition.getColumn) > (0)) and then ((geographicMapCellPosition.getColumn) < (maxColumns)) then
            nextTerrainGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
            geographicMapCellPositionFactory := geographicMapInterfaceArray (0).getGeographicMapCellPositionFactory;
            if (direction) = (DirectionFactory_Package.getInstance.LEFT) then
                nextTerrainGeographicMapCellPosition := geographicMapCellPositionFactory.getAt ((geographicMapCellPosition.getColumn) - (1), geographicMapCellPosition.getRow);
            elsif (direction) = (DirectionFactory_Package.getInstance.RIGHT) then
                nextTerrainGeographicMapCellPosition := geographicMapCellPositionFactory.getAt ((geographicMapCellPosition.getColumn) + (1), geographicMapCellPosition.getRow);
            end if;
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, nextTerrainGeographicMapCellPosition);
            hasSolidBlock := This.hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
            if not (hasSolidBlock) then
                terrainEvent := TerrainEventCircularStaticPool_Package.getInstance.getNext (This.CLIFF);
                TerrainEventHandler_Package.getInstance (layer).fireEvent (terrainEvent);
            end if;
        end if;
   end terrainEvent;

   procedure terrainMove (This : in out NonPlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer) is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        layer.moveDXY (x, y);
   end terrainMove;

end org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package;


