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


with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package;

package body org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package is

   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   procedure Initialize_Fields (This : in out CachingGeographicMapCellPositionFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CachingGeographicMapCellPositionFactory'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        BasicGeographicMapCellPositionFactory_Package.Initialize (This, geographicMapInterface);
   end Initialize;

   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return CachingGeographicMapCellPositionFactory_Access is
      This : constant CachingGeographicMapCellPositionFactory_Access := new CachingGeographicMapCellPositionFactory;
   begin
      CachingGeographicMapCellPositionFactory_Package.Initialize (This.all, geographicMapInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function createInstance (This : in out CachingGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is
      hashtable : ABHashtable_Access;
      cellPositionKey : Unbounded_String;
      cellPositionCanBeNull : Java_Object_Access;
   begin
        hashtable := GeographicMapCellPositionFactory_Package.getHashtable;
        cellPositionKey := CellPosition_Package.toStringColRow (i_column, i_row);
        cellPositionCanBeNull := hashtable.get (cellPositionKey);
        if (cellPositionCanBeNull) = (null) then
            cellPositionCanBeNull := This.geographicMapCellPositionFactoryInterface.getInstance (This.geographicMapInterface, i_column, i_row, CachingGeographicMapCellPositionFactory'Class (This).getColumns, CachingGeographicMapCellPositionFactory'Class (This).getRows, width, height);
            This.geographicMapCellPositionArray (i_row) (i_column) := GeographicMapCellPosition_Access (cellPositionCanBeNull);
            hashtable.put (cellPositionKey, cellPositionCanBeNull);
        end if;
        return GeographicMapCellPosition_Access (cellPositionCanBeNull);
   end createInstance;

   procedure createInstance (This : in out CachingGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := CachingGeographicMapCellPositionFactory'Class (This).createInstance (i_column => i_column, i_row => i_row, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstance;

end org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package;


