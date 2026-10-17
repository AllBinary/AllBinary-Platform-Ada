-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.layer.PathAnimation_Package is

   procedure Initialize_Fields (This : in out PathAnimation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      This.allBinaryGameLayerManagerP := AllBinaryGameLayerManager_Package.getNullInstance;
      This.startColor := BasicColorFactory_Package.getInstance.RED;
      This.middleColor := BasicColorFactory_Package.getInstance.BLUE;
      This.endColor := BasicColorFactory_Package.getInstance.GREEN;
   end Initialize_Fields;


   procedure Initialize (This : in out PathAnimation'Class; pathFindingLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; linePathAnimation_Param : access LinePathAnimation_Package.LinePathAnimation'Class) is
      pathFindingLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayer_Param);
      linePathAnimation : constant LinePathAnimation_Access := LinePathAnimation_Access (linePathAnimation_Param);
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.pathFindingLayer := pathFindingLayer;
        This.linePathAnimation := linePathAnimation;
   end Initialize;

   function Create (pathFindingLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; linePathAnimation_Param : access LinePathAnimation_Package.LinePathAnimation'Class) return PathAnimation_Access is
      This : constant PathAnimation_Access := new PathAnimation;
   begin
      PathAnimation_Package.Initialize (This.all, pathFindingLayer_Param, linePathAnimation_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out PathAnimation; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        This.allBinaryGameLayerManagerP := allBinaryGameLayerManager;
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure nextFrame (This : in out PathAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out PathAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      geographicMapCellHistory : GeographicMapCellHistory_Access;
      list : BasicArrayList_Access;
      size : Integer;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      nextPoint : GPoint_Access;
      point : GPoint_Access;
      start : Integer;
      index : Integer;
   begin
        begin
            waypointBehaviorBase := This.pathFindingLayer.getWaypointBehavior;
            if (waypointBehaviorBase) /= (null) then
                geographicMapCellHistory := waypointBehaviorBase.getCurrentGeographicMapCellHistory;
                list := geographicMapCellHistory.getTracked;
                size := list.size;
                if (size) > (0) then
                    geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
                    geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
                    tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
                    geographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                    nextPoint := null;
                    point := null;
                    start := (size) - (2);
                    for index in 0 .. ((size) - (1)) - 1 loop
                        if (index) = (start) then
                            This.setBasicColorP (This.startColor);
                            This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
                        elsif geographicMapCellHistory.isVisited (geographicMapCellPosition) then
                            This.setBasicColorP (This.endColor);
                            This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
                        else
                            This.setBasicColorP (This.middleColor);
                            This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
                        end if;
                        geographicMapCellPosition := GeographicMapCellPosition_Access (list.get (index));
                        point := geographicMapCellPosition.getMidPoint;
                        geographicMapCellPosition := GeographicMapCellPosition_Access (list.get ((index) + (1)));
                        nextPoint := geographicMapCellPosition.getMidPoint;
                        This.linePathAnimation.paint (graphics, point, nextPoint, tiledLayer);
                    end loop;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (To_Unbounded_String ("Cleared Target"), PathAnimation_Access'(This'Unchecked_Access), CanvasStrings_Package.getInstance.PAINT);
                end;
        end;
   end paintXY;

end org.allbinary.game.layer.PathAnimation_Package;


