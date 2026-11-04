-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


with javax.microedition.lcdui.game.SimpleTiledLayer_Package; use javax.microedition.lcdui.game.SimpleTiledLayer_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package; use org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package; use org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.layer.event.ScrollMapEvent_Package; use org.allbinary.layer.event.ScrollMapEvent_Package;
with org.allbinary.layer.event.ScrollMapEventHandler_Package; use org.allbinary.layer.event.ScrollMapEventHandler_Package;
with org.allbinary.layer.event.ScrollMapEventListenerInterface_Package; use org.allbinary.layer.event.ScrollMapEventListenerInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;

package body org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package is

   package LocalPlayerBuildingEventHandler_Package renames Standard.org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package ScrollMapEventHandler_Package renames Standard.org.allbinary.layer.event.ScrollMapEventHandler_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   subtype SimpleTiledLayer_Access is javax.microedition.lcdui.game.SimpleTiledLayer_Package_References.SimpleTiledLayer_Access;
   function "=" (Left, Right : SimpleTiledLayer_Access) return Boolean renames javax.microedition.lcdui.game.SimpleTiledLayer_Package_References."=";
   subtype SimpleTiledLayer_Access_Array is javax.microedition.lcdui.game.SimpleTiledLayer_Package_References.SimpleTiledLayer_Access_Array;
   function "=" (Left, Right : SimpleTiledLayer_Access_Array) return Boolean renames javax.microedition.lcdui.game.SimpleTiledLayer_Package_References."=";
   subtype SimpleTiledLayer_Access_Array_Access is javax.microedition.lcdui.game.SimpleTiledLayer_Package_References.SimpleTiledLayer_Access_Array_Access;
   function "=" (Left, Right : SimpleTiledLayer_Access_Array_Access) return Boolean renames javax.microedition.lcdui.game.SimpleTiledLayer_Package_References."=";
   subtype SimpleTiledLayer_Access_Array_Access_Array is javax.microedition.lcdui.game.SimpleTiledLayer_Package_References.SimpleTiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleTiledLayer_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.game.SimpleTiledLayer_Package_References."=";
   subtype SimpleTiledLayer_Access_Array_Access_Array_Access is javax.microedition.lcdui.game.SimpleTiledLayer_Package_References.SimpleTiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleTiledLayer_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.game.SimpleTiledLayer_Package_References."=";
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype RTSLayerEvent_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access;
   function "=" (Left, Right : RTSLayerEvent_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array;
   function "=" (Left, Right : RTSLayerEvent_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   function "=" (Left, Right : CellPosition_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   function "=" (Left, Right : CellPosition_Access_Array) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   function "=" (Left, Right : CellPosition_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : CellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype ScrollMapEvent_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access;
   function "=" (Left, Right : ScrollMapEvent_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array;
   function "=" (Left, Right : ScrollMapEvent_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   procedure Initialize_Fields (This : in out VisibleCellPositionsSingleton'Class) is
   begin
      null;
      This.stationaryVisibleCellPositions := NullUtil_Package.getInstance.NULL_SHORT_ARRAY_ARRAY;
      This.visibleCellPositions := NullUtil_Package.getInstance.NULL_SHORT_ARRAY_ARRAY;
      This.currentlyVisibleCellPositions := NullUtil_Package.getInstance.NULL_SHORT_ARRAY_ARRAY;
      This.ALL_VISIBLE_TILEDLAYER := SimpleTiledLayer_Package.Create (0, 0, 0, 0);
      This.simpleTiledLayer := This.ALL_VISIBLE_TILEDLAYER;
      This.paintSimpleTiledLayer := This.ALL_VISIBLE_TILEDLAYER;
      This.currentIndex := 0;
   end Initialize_Fields;


   function getInstance return VisibleCellPositionsSingleton_Access is
   begin
        return VisibleCellPositionsSingleton_Access (VisibleCellPositionsSingleton_Package.instance);
   end getInstance;

   procedure Initialize (This : in out VisibleCellPositionsSingleton'Class) is
   begin
      Initialize_Fields (This);
        LocalPlayerBuildingEventHandler_Package.getInstance.addListenerInterface (VisibleCellPositionsSingleton_Access'(This'Unchecked_Access));
        ScrollMapEventHandler_Package.getInstance.addListenerInterface (VisibleCellPositionsSingleton_Access'(This'Unchecked_Access));
   end Initialize;

   function Create return VisibleCellPositionsSingleton_Access is
      This : constant VisibleCellPositionsSingleton_Access := new VisibleCellPositionsSingleton;
   begin
      VisibleCellPositionsSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out VisibleCellPositionsSingleton; simpleTiledLayer_Param : access SimpleTiledLayer_Package.SimpleTiledLayer'Class) is
      simpleTiledLayer : constant SimpleTiledLayer_Access := SimpleTiledLayer_Access (simpleTiledLayer_Param);
      rows : Integer;
      columns : Integer;
   begin
        This.paintSimpleTiledLayer := This.ALL_VISIBLE_TILEDLAYER;
        This.currentIndex := 0;
        rows := simpleTiledLayer.getRows;
        columns := simpleTiledLayer.getColumns;
        This.stationaryVisibleCellPositions := new Short_Integer_Array_Access_Array'(0 .. (rows) - 1 => new Short_Integer_Array'(0 .. (columns) - 1 => 0));
        This.visibleCellPositions := new Short_Integer_Array_Access_Array'(0 .. (rows) - 1 => new Short_Integer_Array'(0 .. (columns) - 1 => 0));
        This.currentlyVisibleCellPositions := new Short_Integer_Array_Access_Array'(0 .. (rows) - 1 => new Short_Integer_Array'(0 .. (columns) - 1 => 0));
        VisibleCellPositionsSingleton'Class (This).setSimpleTiledLayer (simpleTiledLayer);
   end init;

   procedure onEvent (This : in out VisibleCellPositionsSingleton; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, VisibleCellPositionsSingleton_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onBuildingEvent (This : in out VisibleCellPositionsSingleton; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class) is
      event : constant RTSLayerEvent_Access := RTSLayerEvent_Access (event_Param);
   begin
        This.paintSimpleTiledLayer := This.simpleTiledLayer;
   end onBuildingEvent;

   --  throws Exception
   procedure onMoveEvent (This : in out VisibleCellPositionsSingleton; scrollMapEvent_Param : access ScrollMapEvent_Package.ScrollMapEvent'Class) is
      scrollMapEvent : constant ScrollMapEvent_Access := ScrollMapEvent_Access (scrollMapEvent_Param);
   begin
        VisibleCellPositionsSingleton'Class (This).move (scrollMapEvent.getDx, scrollMapEvent.getDy);
   end onMoveEvent;

   procedure addStationaryCellPositions (This : in out VisibleCellPositionsSingleton; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      cellPosition : CellPosition_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            cellPosition := CellPosition_Access (list.get (index));
            This.stationaryVisibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) := This.stationaryVisibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) + 1;
        end loop;
   end addStationaryCellPositions;

   procedure removeStationaryCellPositions (This : in out VisibleCellPositionsSingleton; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      cellPosition : CellPosition_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            cellPosition := CellPosition_Access (list.get (index));
            This.stationaryVisibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) := This.stationaryVisibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) - 1;
        end loop;
   end removeStationaryCellPositions;

   procedure update (This : in out VisibleCellPositionsSingleton) is
      temp : Short_Integer_Array_Access_Array_Access;
      index2 : Integer;
      index : Integer;
   begin
        if (This.currentIndex) = (0) then
            temp := This.currentlyVisibleCellPositions;
            This.currentlyVisibleCellPositions := This.visibleCellPositions;
            This.visibleCellPositions := temp;
            for index in reverse 0 .. (This.visibleCellPositions'Length) - (1) loop
                for index2 in reverse 0 .. (This.visibleCellPositions (0)'Length) - (1) loop
                    This.visibleCellPositions (index) (index2) := This.stationaryVisibleCellPositions (index) (index2);
                end loop;
            end loop;
        end if;
        This.currentIndex := This.currentIndex + 1;
        if (This.currentIndex) > (10) then
            This.currentIndex := 0;
        end if;
   end update;

   function shouldProcess (This : in out VisibleCellPositionsSingleton) return Boolean is
   begin
        if (This.currentIndex) = (0) then
            return True;
        else
            return False;
        end if;
   end shouldProcess;

   procedure addCellPositions (This : in out VisibleCellPositionsSingleton; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      cellPosition : CellPosition_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            cellPosition := CellPosition_Access (list.get (index));
            This.visibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) := This.visibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) + 1;
        end loop;
   end addCellPositions;

   function isVisible (This : in out VisibleCellPositionsSingleton; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return Boolean is
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
   begin
        if (This.visibleCellPositions (cellPosition.getRow) (cellPosition.getColumn)) > (0) then
            return True;
        else
            return False;
        end if;
   end isVisible;

   procedure move (This : in out VisibleCellPositionsSingleton; dx : Integer; dy : Integer) is
   begin
        VisibleCellPositionsSingleton'Class (This).getSimpleTiledLayer.moveDXY (dx, dy);
   end move;

   procedure paint (This : in out VisibleCellPositionsSingleton; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.paintSimpleTiledLayer.paint (graphics, This.currentlyVisibleCellPositions);
   end paint;

   procedure setSimpleTiledLayer (This : in out VisibleCellPositionsSingleton; simpleTiledLayer_Param : access SimpleTiledLayer_Package.SimpleTiledLayer'Class) is
      simpleTiledLayer : constant SimpleTiledLayer_Access := SimpleTiledLayer_Access (simpleTiledLayer_Param);
   begin
        This.simpleTiledLayer := simpleTiledLayer;
   end setSimpleTiledLayer;

   function getSimpleTiledLayer (This : in out VisibleCellPositionsSingleton) return SimpleTiledLayer_Access is
   begin
        return This.simpleTiledLayer;
   end getSimpleTiledLayer;

   procedure isVisible (This : in out VisibleCellPositionsSingleton; cellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      Java_Result : constant Boolean := VisibleCellPositionsSingleton'Class (This).isVisible (cellPosition_Param => cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isVisible;

begin
   null;
   instance := VisibleCellPositionsSingleton_Package.Create;

end org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;


