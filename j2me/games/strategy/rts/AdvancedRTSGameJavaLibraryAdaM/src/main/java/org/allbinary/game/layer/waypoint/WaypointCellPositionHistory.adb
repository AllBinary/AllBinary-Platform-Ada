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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out WaypointCellPositionHistory'Class) is
   begin
      null;
      This.positionList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.layerList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointCellPositionHistory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointCellPositionHistory_Access is
      This : constant WaypointCellPositionHistory_Access := new WaypointCellPositionHistory;
   begin
      WaypointCellPositionHistory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WaypointCellPositionHistory_Access is
   begin
        return WaypointCellPositionHistory_Package.SINGLETON;
   end getInstance;

   procedure add (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.positionList.add (Java_Object_Access (cellPosition));
        This.layerList.add (Java_Object_Access (layerInterface));
   end add;

   procedure addList (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            WaypointCellPositionHistory'Class (This).add (CellPosition_Access (list.get (index)), layerInterface);
        end loop;
   end addList;

   procedure remove (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
      index : Integer;
   begin
        index := This.positionList.indexOf (Java_Object_Access (cellPosition));
        if (index) >= (0) then
            This.positionList.removeAt (index);
            This.layerList.removeAt (index);
        end if;
   end remove;

   procedure removeLayer (This : in out WaypointCellPositionHistory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      index : Integer;
   begin
        index := 0;
        while (index) /= (-(1)) loop
            index := This.layerList.indexOf (Java_Object_Access (layerInterface));
            if (index) >= (0) then
                This.positionList.removeAt (index);
                This.layerList.removeAt (index);
            end if;
        end loop;
   end removeLayer;

   procedure clear (This : in out WaypointCellPositionHistory) is
   begin
        This.positionList.clear;
        This.layerList.clear;
   end clear;

   function isCellPositionWithDrop (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return Boolean is
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
   begin
        return This.positionList.contains (Java_Object_Access (cellPosition));
   end isCellPositionWithDrop;

   function anyCellPositionWithDrop (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            if WaypointCellPositionHistory'Class (This).isCellPositionWithDrop (CellPosition_Access (list.get (index))) then
                return True;
            end if;
        end loop;
        return False;
   end anyCellPositionWithDrop;

   function getLayerInterface (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return AllBinaryLayer_Access is
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
      index : Integer;
   begin
        index := This.positionList.indexOf (Java_Object_Access (cellPosition));
        if (index) >= (0) then
            return AllBinaryLayer_Access (This.layerList.get (index));
        else
            return AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
        end if;
   end getLayerInterface;

   procedure isCellPositionWithDrop (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      Java_Result : constant Boolean := WaypointCellPositionHistory'Class (This).isCellPositionWithDrop (cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCellPositionWithDrop;

   procedure anyCellPositionWithDrop (This : in out WaypointCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := WaypointCellPositionHistory'Class (This).anyCellPositionWithDrop (list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end anyCellPositionWithDrop;

   procedure getLayerInterface (This : in out WaypointCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      Java_Result : constant AllBinaryLayer_Access := WaypointCellPositionHistory'Class (This).getLayerInterface (cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerInterface;

begin
   null;
   SINGLETON := WaypointCellPositionHistory_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package;


