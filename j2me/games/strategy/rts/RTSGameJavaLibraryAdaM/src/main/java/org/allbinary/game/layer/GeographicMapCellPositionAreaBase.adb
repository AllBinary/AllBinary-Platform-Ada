-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPositionAreaBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GeographicMapCellPositionAreaBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GeographicMapCellPositionAreaBase_Access is
      This : constant GeographicMapCellPositionAreaBase_Access := new GeographicMapCellPositionAreaBase;
   begin
      GeographicMapCellPositionAreaBase_Package.Initialize (This.all);
      return This;
   end Create;


   function getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionAreaBase) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getNextSurroundingGeographicMapCellPosition;

   function getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getOccupyingGeographicMapCellPositionList;

   function getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getSurroundingGeographicMapCellPositionList;

   --  throws Exception
   procedure update (This : in out GeographicMapCellPositionAreaBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end update;

begin
   null;
   NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE := GeographicMapCellPositionAreaBase_Package.Create;

end org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;


