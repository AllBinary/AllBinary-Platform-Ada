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


with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package; use org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResource_Package; use org.allbinary.game.layer.geological.resources.GeologicalResource_Package;

package body org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
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
      GeologicalGeographicMapCellPositionFactory_Package.Initialize (This.all, resourcePerMapCellType);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out GeologicalGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      tiledLayer : AllBinaryTiledLayer_Access;
      resources : Integer;
   begin
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        resources := (This.resourcePerMapCellType (tiledLayer.getCell (i_column, i_row))) + (MyRandomFactory_Package.getInstance.getAbsoluteNextInt (1000));
        return GeographicMapCellPosition_Access (GeologicalGeographicMapCellPosition_Package.Create (i_column, i_row, columns, rows, width, height, GeologicalResource_Package.Create (resources)));
   end getInstance;

   procedure getInstance (This : in out GeologicalGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeologicalGeographicMapCellPositionFactory'Class (This).getInstance (geographicMapInterface_Param => geographicMapInterface_Param, i_column => i_column, i_row => i_row, columns => columns, rows => rows, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package;


