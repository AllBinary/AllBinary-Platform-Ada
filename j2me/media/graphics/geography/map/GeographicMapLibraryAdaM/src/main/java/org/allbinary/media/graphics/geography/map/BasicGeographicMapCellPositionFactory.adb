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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graph.V_Package;

package body org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInitVisitorInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References."=";
   procedure Initialize_Fields (This : in out BasicGeographicMapCellPositionFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGeographicMapCellPositionFactory'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
      Initialize_Fields (This);
        This.geographicMapInterface := geographicMapInterface;
        This.geographicMapCellPositionFactoryInterface := GeographicMapCellPositionFactoryInterface_Access (This.geographicMapInterface.getGeographicMapCellPositionFactoryInterface);
        This.tiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        This.columns := This.tiledLayer.getColumns;
        This.rows := This.tiledLayer.getRows;
        This.geographicMapCellPositionArray := new GeographicMapCellPosition_Access_Array_Access_Array'(0 .. (This.rows) - 1 => new GeographicMapCellPosition_Access_Array'(0 .. (This.columns) - 1 => null));
        BasicGeographicMapCellPositionFactory'Class (This).init;
   end Initialize;

   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return BasicGeographicMapCellPositionFactory_Access is
      This : constant BasicGeographicMapCellPositionFactory_Access := new BasicGeographicMapCellPositionFactory;
   begin
      BasicGeographicMapCellPositionFactory_Package.Initialize (This.all, geographicMapInterface_Param);
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
        columns := BasicGeographicMapCellPositionFactory'Class (This).getColumns;
        rows := BasicGeographicMapCellPositionFactory'Class (This).getRows;
        width := tiledLayer.getCellWidth;
        height := tiledLayer.getCellHeight;
        for column in 0 .. (columns) - 1 loop
            for row in 0 .. (rows) - 1 loop
                BasicGeographicMapCellPositionFactory'Class (This).createInstance (column, row, width, height);
            end loop;
        end loop;
   end init;

   --  throws Exception
   procedure visit (This : in out BasicGeographicMapCellPositionFactory; geographicMapCelPositionFactoryInitVisitorInterface_Param : access GeographicMapCellPositionFactoryInitVisitorInterface_Package.GeographicMapCellPositionFactoryInitVisitorInterface'Class) is
      geographicMapCelPositionFactoryInitVisitorInterface : constant GeographicMapCellPositionFactoryInitVisitorInterface_Access := GeographicMapCellPositionFactoryInitVisitorInterface_Access (geographicMapCelPositionFactoryInitVisitorInterface_Param);
      tiledLayer : AllBinaryTiledLayer_Access;
      columns : Integer;
      rows : Integer;
      cellPosition : GeographicMapCellPosition_Access;
      row : Integer;
      column : Integer;
      commonSeps : CommonSeps_Access;
   begin
        tiledLayer := This.tiledLayer;
        columns := BasicGeographicMapCellPositionFactory'Class (This).getColumns;
        rows := BasicGeographicMapCellPositionFactory'Class (This).getRows;
        begin
            cellPosition := null;
            for column in 0 .. (columns) - 1 loop
                for row in 0 .. (rows) - 1 loop
                    cellPosition := BasicGeographicMapCellPositionFactory'Class (This).getAt (column, row);
                    geographicMapCelPositionFactoryInitVisitorInterface.visit (tiledLayer, cellPosition);
                end loop;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonSeps := CommonSeps_Package.getInstance;
            This.logUtil.put (StringMaker_Package.Create.append (commonSeps.BRACKET_OPEN).appendint (rows).append (commonSeps.BRACKET_CLOSE).append (commonSeps.BRACKET_OPEN).appendint (columns).append (commonSeps.BRACKET_CLOSE).toString, BasicGeographicMapCellPositionFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"), e);
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
   function getInstance (This : in out BasicGeographicMapCellPositionFactory; anotherMapGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
      anotherMapGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (anotherMapGeographicMapCellPosition_Param);
   begin
        return BasicGeographicMapCellPositionFactory'Class (This).getAt (anotherMapGeographicMapCellPosition.getColumn, anotherMapGeographicMapCellPosition.getRow);
   end getInstance;

   --  throws Exception
   function createInstance (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is
      cellPositionCanBeNull : Java_Object_Access;
   begin
        cellPositionCanBeNull := This.geographicMapCellPositionArray (i_row) (i_column);
        if (cellPositionCanBeNull) = (null) then
            cellPositionCanBeNull := Java_Object_Access (This.geographicMapCellPositionFactoryInterface.getInstance (This.geographicMapInterface, i_column, i_row, This.columns, This.rows, width, height));
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
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMapCellPositionFactory'Class (This).getAt (i_column => i_column, i_row => i_row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAt;

   procedure getInstance (This : in out BasicGeographicMapCellPositionFactory; anotherMapGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMapCellPositionFactory'Class (This).getInstance (anotherMapGeographicMapCellPosition_Param => anotherMapGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createInstance (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMapCellPositionFactory'Class (This).createInstance (i_column => i_column, i_row => i_row, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstance;

end org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;


