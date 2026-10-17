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


package body org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package is

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
        return VisibleCellPositionsSingleton_Package.instance;
   end getInstance;

   procedure Initialize (This : in out VisibleCellPositionsSingleton'Class) is
   begin
      Initialize_Fields (This);
        LocalPlayerBuildingEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
        ScrollMapEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
   end Initialize;

   function Create return VisibleCellPositionsSingleton_Access is
      This : constant VisibleCellPositionsSingleton_Access := new VisibleCellPositionsSingleton;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out VisibleCellPositionsSingleton; simpleTiledLayer : SimpleTiledLayer_Access) is
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
        This.setSimpleTiledLayer (simpleTiledLayer);
   end init;

   procedure onEvent (This : in out VisibleCellPositionsSingleton; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   --  throws Exception
   procedure onBuildingEvent (This : in out VisibleCellPositionsSingleton; event : RTSLayerEvent_Access) is
   begin
        This.paintSimpleTiledLayer := This.simpleTiledLayer;
   end onBuildingEvent;

   --  throws Exception
   procedure onMoveEvent (This : in out VisibleCellPositionsSingleton; scrollMapEvent : ScrollMapEvent_Access) is
   begin
        This.move (scrollMapEvent.getDx, scrollMapEvent.getDy);
   end onMoveEvent;

   procedure addStationaryCellPositions (This : in out VisibleCellPositionsSingleton; list : BasicArrayList_Access) is
      cellPosition : CellPosition_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            cellPosition := CellPosition_Access (list.get (index));
            This.stationaryVisibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) := This.stationaryVisibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) + 1;
        end loop;
   end addStationaryCellPositions;

   procedure removeStationaryCellPositions (This : in out VisibleCellPositionsSingleton; list : BasicArrayList_Access) is
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

   procedure addCellPositions (This : in out VisibleCellPositionsSingleton; list : BasicArrayList_Access) is
      cellPosition : CellPosition_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            cellPosition := CellPosition_Access (list.get (index));
            This.visibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) := This.visibleCellPositions (cellPosition.getRow) (cellPosition.getColumn) + 1;
        end loop;
   end addCellPositions;

   function isVisible (This : in out VisibleCellPositionsSingleton; cellPosition : CellPosition_Access) return Boolean is
   begin
        if (This.visibleCellPositions (cellPosition.getRow) (cellPosition.getColumn)) > (0) then
            return True;
        else
            return False;
        end if;
   end isVisible;

   procedure move (This : in out VisibleCellPositionsSingleton; dx : Integer; dy : Integer) is
   begin
        This.getSimpleTiledLayer.moveDXY (dx, dy);
   end move;

   procedure paint (This : in out VisibleCellPositionsSingleton; graphics : Graphics_Access) is
   begin
        This.paintSimpleTiledLayer.paint (graphics, This.currentlyVisibleCellPositions);
   end paint;

   procedure setSimpleTiledLayer (This : in out VisibleCellPositionsSingleton; simpleTiledLayer : SimpleTiledLayer_Access) is
   begin
        This.simpleTiledLayer := simpleTiledLayer;
   end setSimpleTiledLayer;

   function getSimpleTiledLayer (This : in out VisibleCellPositionsSingleton) return SimpleTiledLayer_Access is
   begin
        return This.simpleTiledLayer;
   end getSimpleTiledLayer;

   procedure getInstance is
      Java_Result : constant VisibleCellPositionsSingleton_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure shouldProcess (This : in out VisibleCellPositionsSingleton) is
      Java_Result : constant Boolean := VisibleCellPositionsSingleton'Class (This).shouldProcess;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldProcess;

   procedure isVisible (This : in out VisibleCellPositionsSingleton; cellPosition : CellPosition_Access) is
      Java_Result : constant Boolean := VisibleCellPositionsSingleton'Class (This).isVisible (cellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isVisible;

   procedure getSimpleTiledLayer (This : in out VisibleCellPositionsSingleton) is
      Java_Result : constant SimpleTiledLayer_Access := VisibleCellPositionsSingleton'Class (This).getSimpleTiledLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSimpleTiledLayer;

begin
   null;
   instance := VisibleCellPositionsSingleton_Package.Create;

end org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;


