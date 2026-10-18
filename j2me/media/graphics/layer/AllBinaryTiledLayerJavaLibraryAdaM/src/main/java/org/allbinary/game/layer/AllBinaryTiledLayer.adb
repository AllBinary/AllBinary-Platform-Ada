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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.layer.AllBinaryTiledLayer_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out AllBinaryTiledLayer'Class) is
   begin
      null;
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryTiledLayer'Class; dataId : Integer; width : Integer; height : Integer; cellWidth : Integer; cellHeight : Integer) is
   begin
        Layer_Package.Initialize (This, 0, 0);
        Initialize_Fields (This);
        This.dataId := dataId;
        AllBinaryTiledLayer'Class (This).setLayerWidth (width);
        AllBinaryTiledLayer'Class (This).setLayerHeight (height);
        Layer (This).setPosition (0, 0, 0);
        This.cellWidth := cellWidth;
        This.cellHeight := cellHeight;
        This.halfWidth := (Java_Shift_Right_Arithmetic (AllBinaryTiledLayer'Class (This).getWidth, 1));
        This.halfHeight := (Java_Shift_Right_Arithmetic (AllBinaryTiledLayer'Class (This).getHeight, 1));
        This.halfCellWidth := (Java_Shift_Right_Arithmetic (cellWidth, 1));
        This.halfCellHeight := (Java_Shift_Right_Arithmetic (cellHeight, 1));
   end Initialize;

   function Create (dataId : Integer; width : Integer; height : Integer; cellWidth : Integer; cellHeight : Integer) return AllBinaryTiledLayer_Access is
      This : constant AllBinaryTiledLayer_Access := new AllBinaryTiledLayer;
   begin
      AllBinaryTiledLayer_Package.Initialize (This.all, dataId, width, height, cellWidth, cellHeight);
      return This;
   end Create;

   procedure setCells (This : in out AllBinaryTiledLayer; mapTwoDArray : Integer_Array_Access_Array_Access) is
      stringBuffer : StringMaker_Access;
      rows : Integer;
      columns : Integer;
      row : Integer;
      col : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Start: r: "));
        stringBuffer.appendint (mapTwoDArray'Length);
        stringBuffer.append (To_Unbounded_String (" c: "));
        stringBuffer.appendint (mapTwoDArray (0)'Length);
        stringBuffer.append (To_Unbounded_String (" rows: "));
        stringBuffer.appendint (AllBinaryTiledLayer'Class (This).getRows);
        stringBuffer.append (To_Unbounded_String (" columns: "));
        stringBuffer.appendint (AllBinaryTiledLayer'Class (This).getColumns);
        This.logUtil.putF (stringBuffer.toString, AllBinaryTiledLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("setCells"));
        rows := AllBinaryTiledLayer'Class (This).getRows;
        columns := AllBinaryTiledLayer'Class (This).getColumns;
        for col in 0 .. (columns) - 1 loop
            for row in 0 .. (rows) - 1 loop
                AllBinaryTiledLayer'Class (This).setCell (col, row, mapTwoDArray (row) (col));
            end loop;
        end loop;
   end setCells;

   procedure updateCells (This : in out AllBinaryTiledLayer; mapTwoDArray : Integer_Array_Access_Array_Access; fromTileId : Integer; toTileId : Integer) is
      rows : Integer;
      columns : Integer;
      row : Integer;
      col : Integer;
   begin
        rows := AllBinaryTiledLayer'Class (This).getRows;
        columns := AllBinaryTiledLayer'Class (This).getColumns;
        for col in 0 .. (columns) - 1 loop
            for row in 0 .. (rows) - 1 loop
                if (fromTileId) = (mapTwoDArray (row) (col)) then
                    mapTwoDArray (row) (col) := toTileId;
                    AllBinaryTiledLayer'Class (This).setCell (col, row, mapTwoDArray (row) (col));
                end if;
            end loop;
        end loop;
   end updateCells;

   function getName (This : in out AllBinaryTiledLayer) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end getName;

   procedure paint (This : in out AllBinaryTiledLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure paintThreed (This : in out AllBinaryTiledLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   function getX2 (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return (This.x) + (AllBinaryTiledLayer'Class (This).getWidth);
   end getX2;

   function getY2 (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return (This.y) + (AllBinaryTiledLayer'Class (This).getHeight);
   end getY2;

   function getZ2 (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return Integer (((This.z) + (AllBinaryTiledLayer'Class (This).getDepth)));
   end getZ2;

   function getCellWidth (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return This.cellWidth;
   end getCellWidth;

   function getCellHeight (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return This.cellHeight;
   end getCellHeight;

   function getCell (This : in out AllBinaryTiledLayer; col : Integer; row : Integer) return Integer is
   begin
        return -(1);
   end getCell;

   function getColumns (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return -(1);
   end getColumns;

   function getRows (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return -(1);
   end getRows;

   procedure setCell (This : in out AllBinaryTiledLayer; col : Integer; row : Integer; tileIndex : Integer) is
   begin
        null;
   end setCell;

   function getHalfWidth (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return This.halfWidth;
   end getHalfWidth;

   function getHalfHeight (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return This.halfHeight;
   end getHalfHeight;

   function getDataId (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return This.dataId;
   end getDataId;

   function getHalfCellWidth (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return This.halfCellWidth;
   end getHalfCellWidth;

   function getHalfCellHeight (This : in out AllBinaryTiledLayer) return Integer is
   begin
        return This.halfCellHeight;
   end getHalfCellHeight;

   function isOnTileLayer (This : in out AllBinaryTiledLayer; column : Integer; row : Integer) return Boolean is
   begin
        if ((((AllBinaryTiledLayer'Class (This).getColumns) > (column)) and then ((AllBinaryTiledLayer'Class (This).getRows) > (row))) and then ((row) >= (0))) and then ((column) >= (0)) then
            return True;
        else
            return False;
        end if;
   end isOnTileLayer;

   function getAnimatedTile (This : in out AllBinaryTiledLayer; animationTileIndex : Integer) return Integer is
   begin
        return animationTileIndex;
   end getAnimatedTile;

   procedure getCell (This : in out AllBinaryTiledLayer; col : Integer; row : Integer) is
      Java_Result : constant Integer := AllBinaryTiledLayer'Class (This).getCell (col => col, row => row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCell;

   procedure isOnTileLayer (This : in out AllBinaryTiledLayer; column : Integer; row : Integer) is
      Java_Result : constant Boolean := AllBinaryTiledLayer'Class (This).isOnTileLayer (column => column, row => row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOnTileLayer;

   procedure getAnimatedTile (This : in out AllBinaryTiledLayer; animationTileIndex : Integer) is
      Java_Result : constant Integer := AllBinaryTiledLayer'Class (This).getAnimatedTile (animationTileIndex => animationTileIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimatedTile;

end org.allbinary.game.layer.AllBinaryTiledLayer_Package;


