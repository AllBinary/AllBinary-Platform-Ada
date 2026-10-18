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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out DropCellPositionHistory'Class) is
   begin
      null;
      This.cellPositionFactory := CellPositionFactory_Package.getInstance;
      This.positionList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.layerList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out DropCellPositionHistory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DropCellPositionHistory_Access is
      This : constant DropCellPositionHistory_Access := new DropCellPositionHistory;
   begin
      DropCellPositionHistory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DropCellPositionHistory_Access is
   begin
        return DropCellPositionHistory_Package.SINGLETON;
   end getInstance;

   procedure add (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.positionList.add (Java_Object_Access (cellPosition));
        This.layerList.add (Java_Object_Access (layerInterface));
   end add;

   procedure addAll (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            DropCellPositionHistory'Class (This).add (CellPosition_Access (list.get (index)), layerInterface);
        end loop;
   end addAll;

   procedure remove (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
      index : Integer;
   begin
        index := This.positionList.indexOf (Java_Object_Access (cellPosition));
        if (index) >= (0) then
            This.positionList.removeAt (index);
            This.layerList.removeAt (index);
        end if;
   end remove;

   procedure removeAll (This : in out DropCellPositionHistory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
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
   end removeAll;

   procedure clear (This : in out DropCellPositionHistory) is
   begin
        This.positionList.clear;
        This.layerList.clear;
   end clear;

   function isCellPositionWithDrop (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return Boolean is
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
   begin
        return This.positionList.contains (Java_Object_Access (cellPosition));
   end isCellPositionWithDrop;

   function anyCellPositionWithDrop (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            if DropCellPositionHistory'Class (This).isCellPositionWithDrop (CellPosition_Access (list.get (index))) then
                return True;
            end if;
        end loop;
        return False;
   end anyCellPositionWithDrop;

   function getCellPositionWithDrop (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return CellPosition_Access is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      cellPosition : CellPosition_Access;
      index : Integer;
   begin
        cellPosition := null;
        for index in reverse 0 .. (list.size) - (1) loop
            cellPosition := CellPosition_Access (list.get (index));
            if DropCellPositionHistory'Class (This).isCellPositionWithDrop (cellPosition) then
                return cellPosition;
            end if;
        end loop;
        return This.cellPositionFactory.NONE;
   end getCellPositionWithDrop;

   function getLayerInterface (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return AllBinaryLayer_Access is
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

   procedure isCellPositionWithDrop (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      Java_Result : constant Boolean := DropCellPositionHistory'Class (This).isCellPositionWithDrop (cellPosition_Param => cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCellPositionWithDrop;

   procedure anyCellPositionWithDrop (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := DropCellPositionHistory'Class (This).anyCellPositionWithDrop (list_Param => list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end anyCellPositionWithDrop;

   procedure getCellPositionWithDrop (This : in out DropCellPositionHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant CellPosition_Access := DropCellPositionHistory'Class (This).getCellPositionWithDrop (list_Param => list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionWithDrop;

   procedure getLayerInterface (This : in out DropCellPositionHistory; cellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      Java_Result : constant AllBinaryLayer_Access := DropCellPositionHistory'Class (This).getLayerInterface (cellPosition_Param => cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerInterface;

begin
   null;
   SINGLETON := DropCellPositionHistory_Package.Create;

end org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;


