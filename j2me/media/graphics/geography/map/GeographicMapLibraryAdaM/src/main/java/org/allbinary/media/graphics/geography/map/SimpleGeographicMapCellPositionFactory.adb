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


package body org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package is

   procedure Initialize_Fields (This : in out SimpleGeographicMapCellPositionFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SimpleGeographicMapCellPositionFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SimpleGeographicMapCellPositionFactory_Access is
      This : constant SimpleGeographicMapCellPositionFactory_Access := new SimpleGeographicMapCellPositionFactory;
   begin
      SimpleGeographicMapCellPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out SimpleGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        return GeographicMapCellPosition_Package.Create (i_column, i_row, columns, rows, width, height);
   end getInstance;

   procedure getInstance (This : in out SimpleGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := SimpleGeographicMapCellPositionFactory'Class (This).getInstance (geographicMapInterface_Param, i_column, i_row, columns, rows, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_GEOGRAPHIC_MAP_CELL_POSITION := GeographicMapCellPosition_Package.Create (-(1), -(1), -(1), -(1), -(1), -(1));

end org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;


