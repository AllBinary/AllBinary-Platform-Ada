-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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


package body org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package is

   procedure Initialize_Fields (This : in out GeologicalGeographicMapCellPositionFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GeologicalGeographicMapCellPositionFactory'Class; resourcePerMapCellType : Integer_Array_Access) is
   begin
      Initialize_Fields (This);
        This.resourcePerMapCellType := resourcePerMapCellType;
   end Initialize;

   function Create (resourcePerMapCellType : Integer_Array_Access) return GeologicalGeographicMapCellPositionFactory_Access is
      This : constant GeologicalGeographicMapCellPositionFactory_Access := new GeologicalGeographicMapCellPositionFactory;
   begin
      Initialize (This.all, resourcePerMapCellType);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out GeologicalGeographicMapCellPositionFactory; geographicMapInterface : BasicGeographicMap_Access; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is
      tiledLayer : AllBinaryTiledLayer_Access;
      resources : Integer;
   begin
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        resources := (This.resourcePerMapCellType (tiledLayer.getCell (i_column, i_row))) + (MyRandomFactory_Package.getInstance.getAbsoluteNextInt (1000));
        return GeologicalGeographicMapCellPosition_Package.Create (i_column, i_row, columns, rows, width, height, GeologicalResource_Package.Create (resources));
   end getInstance;

   procedure getInstance (This : in out GeologicalGeographicMapCellPositionFactory; geographicMapInterface : BasicGeographicMap_Access; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeologicalGeographicMapCellPositionFactory'Class (This).getInstance (geographicMapInterface, i_column, i_row, columns, rows, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package;


