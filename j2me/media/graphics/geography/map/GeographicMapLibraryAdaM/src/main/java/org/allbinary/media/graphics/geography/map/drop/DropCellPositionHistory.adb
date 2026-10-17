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


package body org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package is

   procedure Initialize_Fields (This : in out DropCellPositionHistory'Class) is
   begin
      null;
      This.cellPositionFactory := CellPositionFactory_Package.getInstance;
      This.positionList := BasicArrayListD_Package.Create;
      This.layerList := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out DropCellPositionHistory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DropCellPositionHistory_Access is
      This : constant DropCellPositionHistory_Access := new DropCellPositionHistory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return DropCellPositionHistory_Access is
   begin
        return DropCellPositionHistory_Package.SINGLETON;
   end getInstance;

   procedure add (This : in out DropCellPositionHistory; cellPosition : CellPosition_Access; layerInterface : AllBinaryLayer_Access) is
   begin
        This.positionList.add (cellPosition);
        This.layerList.add (layerInterface);
   end add;

   procedure addAll (This : in out DropCellPositionHistory; list : BasicArrayList_Access; layerInterface : AllBinaryLayer_Access) is
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            This.add (CellPosition_Access (list.get (index)), layerInterface);
        end loop;
   end addAll;

   procedure remove (This : in out DropCellPositionHistory; cellPosition : CellPosition_Access) is
      index : Integer;
   begin
        index := This.positionList.indexOf (cellPosition);
        if (index) >= (0) then
            This.positionList.removeAt (index);
            This.layerList.removeAt (index);
        end if;
   end remove;

   procedure removeAll (This : in out DropCellPositionHistory; layerInterface : AllBinaryLayer_Access) is
      index : Integer;
   begin
        index := 0;
        while (index) /= (-(1)) loop
            index := This.layerList.indexOf (layerInterface);
            if (index) >= (0) then
                This.positionList.removeAt (index);
                This.layerList.removeAt (index);
            end if;
        end loop;
   end removeAll;

   procedure clear (This : in out DropCellPositionHistory) is
   begin
        This.positionList.clear;
        This.layerList.clear;
   end clear;

   function isCellPositionWithDrop (This : in out DropCellPositionHistory; cellPosition : CellPosition_Access) return Boolean is
   begin
        return This.positionList.contains (cellPosition);
   end isCellPositionWithDrop;

   function anyCellPositionWithDrop (This : in out DropCellPositionHistory; list : BasicArrayList_Access) return Boolean is
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            if This.isCellPositionWithDrop (CellPosition_Access (list.get (index))) then
                return True;
            end if;
        end loop;
        return False;
   end anyCellPositionWithDrop;

   function getCellPositionWithDrop (This : in out DropCellPositionHistory; list : BasicArrayList_Access) return CellPosition_Access is
      cellPosition : CellPosition_Access;
      index : Integer;
   begin
        cellPosition := null;
        for index in reverse 0 .. (list.size) - (1) loop
            cellPosition := CellPosition_Access (list.get (index));
            if This.isCellPositionWithDrop (cellPosition) then
                return cellPosition;
            end if;
        end loop;
        return This.cellPositionFactory.NONE;
   end getCellPositionWithDrop;

   function getLayerInterface (This : in out DropCellPositionHistory; cellPosition : CellPosition_Access) return AllBinaryLayer_Access is
      index : Integer;
   begin
        index := This.positionList.indexOf (cellPosition);
        if (index) >= (0) then
            return AllBinaryLayer_Access (This.layerList.get (index));
        else
            return AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
        end if;
   end getLayerInterface;

   procedure getInstance is
      Java_Result : constant DropCellPositionHistory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isCellPositionWithDrop (This : in out DropCellPositionHistory; cellPosition : CellPosition_Access) is
      Java_Result : constant Boolean := DropCellPositionHistory'Class (This).isCellPositionWithDrop (cellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCellPositionWithDrop;

   procedure anyCellPositionWithDrop (This : in out DropCellPositionHistory; list : BasicArrayList_Access) is
      Java_Result : constant Boolean := DropCellPositionHistory'Class (This).anyCellPositionWithDrop (list);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end anyCellPositionWithDrop;

   procedure getCellPositionWithDrop (This : in out DropCellPositionHistory; list : BasicArrayList_Access) is
      Java_Result : constant CellPosition_Access := DropCellPositionHistory'Class (This).getCellPositionWithDrop (list);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionWithDrop;

   procedure getLayerInterface (This : in out DropCellPositionHistory; cellPosition : CellPosition_Access) is
      Java_Result : constant AllBinaryLayer_Access := DropCellPositionHistory'Class (This).getLayerInterface (cellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerInterface;

begin
   null;
   SINGLETON := DropCellPositionHistory_Package.Create;

end org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;


