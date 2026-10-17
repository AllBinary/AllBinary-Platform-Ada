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
      Initialize (This.all);
      return This;
   end Create;


   function getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionAreaBase) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getNextSurroundingGeographicMapCellPosition;

   function getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getOccupyingGeographicMapCellPositionList;

   function getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getSurroundingGeographicMapCellPositionList;

   --  throws Exception
   procedure update (This : in out GeographicMapCellPositionAreaBase; geographicMapInterface : BasicGeographicMap_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end update;

   procedure getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionAreaBase) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapCellPositionAreaBase'Class (This).getNextSurroundingGeographicMapCellPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextSurroundingGeographicMapCellPosition;

   procedure getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) is
      Java_Result : constant BasicArrayList_Access := GeographicMapCellPositionAreaBase'Class (This).getOccupyingGeographicMapCellPositionList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOccupyingGeographicMapCellPositionList;

   procedure getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) is
      Java_Result : constant BasicArrayList_Access := GeographicMapCellPositionAreaBase'Class (This).getSurroundingGeographicMapCellPositionList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSurroundingGeographicMapCellPositionList;

begin
   null;
   NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE := GeographicMapCellPositionAreaBase_Package.Create;

end org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;


