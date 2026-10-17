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


package body org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package is

   procedure Initialize_Fields (This : in out BasicGeographicMapCellPositionFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGeographicMapCellPositionFactory'Class; geographicMapInterface : BasicGeographicMap_Access) is
   begin
      Initialize_Fields (This);
        This.geographicMapInterface := geographicMapInterface;
        This.geographicMapCellPositionFactoryInterface := This.geographicMapInterface.getGeographicMapCellPositionFactoryInterface;
        This.tiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        This.columns := This.tiledLayer.getColumns;
        This.rows := This.tiledLayer.getRows;
        This.geographicMapCellPositionArray := new GeographicMapCellPosition_Access_Array_Access_Array'(0 .. (This.rows) - 1 => new GeographicMapCellPosition_Access_Array'(0 .. (This.columns) - 1 => null));
        This.init;
   end Initialize;

   function Create (geographicMapInterface : BasicGeographicMap_Access) return BasicGeographicMapCellPositionFactory_Access is
      This : constant BasicGeographicMapCellPositionFactory_Access := new BasicGeographicMapCellPositionFactory;
   begin
      Initialize (This.all, geographicMapInterface);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out BasicGeographicMapCellPositionFactory) is
      tiledLayer : AllBinaryTiledLayer_Access;
      columns : Integer;
      rows : Integer;
      width : Integer;
      height : Integer;
      row : Integer;
      column : Integer;
   begin
        tiledLayer := This.tiledLayer;
        columns := This.getColumns;
        rows := This.getRows;
        width := tiledLayer.getCellWidth;
        height := tiledLayer.getCellHeight;
        for column in 0 .. (columns) - 1 loop
            for row in 0 .. (rows) - 1 loop
                This.createInstance (column, row, width, height);
            end loop;
        end loop;
   end init;

   --  throws Exception
   procedure visit (This : in out BasicGeographicMapCellPositionFactory; geographicMapCelPositionFactoryInitVisitorInterface : GeographicMapCellPositionFactoryInitVisitorInterface_Access) is
      tiledLayer : AllBinaryTiledLayer_Access;
      columns : Integer;
      rows : Integer;
      cellPosition : GeographicMapCellPosition_Access;
      row : Integer;
      column : Integer;
      commonSeps : CommonSeps_Access;
   begin
        tiledLayer := This.tiledLayer;
        columns := This.getColumns;
        rows := This.getRows;
        begin
            cellPosition := null;
            for column in 0 .. (columns) - 1 loop
                for row in 0 .. (rows) - 1 loop
                    cellPosition := This.getAt (column, row);
                    geographicMapCelPositionFactoryInitVisitorInterface.visit (tiledLayer, cellPosition);
                end loop;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonSeps := CommonSeps_Package.getInstance;
            This.logUtil.put (StringMaker_Package.Create.append (commonSeps.BRACKET_OPEN).appendint (rows).append (commonSeps.BRACKET_CLOSE).append (commonSeps.BRACKET_OPEN).appendint (columns).append (commonSeps.BRACKET_CLOSE).toString, This'Unchecked_Access, To_Unbounded_String ("visit"), e);
            Java_Throw (e);
                end;
        end;
   end visit;

   --  throws Exception
   function getAt (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer) return GeographicMapCellPosition_Access is
   begin
        return This.geographicMapCellPositionArray (i_row) (i_column);
   end getAt;

   --  throws Exception
   function getInstance (This : in out BasicGeographicMapCellPositionFactory; anotherMapGeographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellPosition_Access is
   begin
        return This.getAt (anotherMapGeographicMapCellPosition.getColumn, anotherMapGeographicMapCellPosition.getRow);
   end getInstance;

   --  throws Exception
   function createInstance (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is
      cellPositionCanBeNull : Java_Object_Access;
   begin
        cellPositionCanBeNull := This.geographicMapCellPositionArray (i_row) (i_column);
        if (cellPositionCanBeNull) = (null) then
            cellPositionCanBeNull := This.geographicMapCellPositionFactoryInterface.getInstance (This.geographicMapInterface, i_column, i_row, This.columns, This.rows, width, height);
            This.geographicMapCellPositionArray (i_row) (i_column) := GeographicMapCellPosition_Access (cellPositionCanBeNull);
        end if;
        return GeographicMapCellPosition_Access (cellPositionCanBeNull);
   end createInstance;

   function getColumns (This : in out BasicGeographicMapCellPositionFactory) return Integer is
   begin
        return This.columns;
   end getColumns;

   function getRows (This : in out BasicGeographicMapCellPositionFactory) return Integer is
   begin
        return This.rows;
   end getRows;

   procedure getAt (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMapCellPositionFactory'Class (This).getAt (i_column, i_row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAt;

   procedure getInstance (This : in out BasicGeographicMapCellPositionFactory; anotherMapGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMapCellPositionFactory'Class (This).getInstance (anotherMapGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createInstance (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMapCellPositionFactory'Class (This).createInstance (i_column, i_row, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstance;

   procedure getColumns (This : in out BasicGeographicMapCellPositionFactory) is
      Java_Result : constant Integer := BasicGeographicMapCellPositionFactory'Class (This).getColumns;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumns;

   procedure getRows (This : in out BasicGeographicMapCellPositionFactory) is
      Java_Result : constant Integer := BasicGeographicMapCellPositionFactory'Class (This).getRows;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRows;

end org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;


