-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package is

   procedure Initialize_Fields (This : in out MultiGeographicMapBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MultiGeographicMapBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MultiGeographicMapBehavior_Access is
      This : constant MultiGeographicMapBehavior_Access := new MultiGeographicMapBehavior;
   begin
      MultiGeographicMapBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getCellTypeAt (This : in out MultiGeographicMapBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellType_Access_Array_Access is
      size : Integer;
      cellType : GeographicMapCellType_Access;
      index : Integer;
   begin
        size := geographicMapInterfaceArray'Length;
        cellType := GeographicMapCellType_Package.NULL_GEOGRAPHIC_MAP_CELL_TYPE;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            cellType := geographicMapInterfaceArray (index).getCellTypeAt (geographicMapCellPosition);
            geographicMapCellTypeArray (index) := cellType;
        end loop;
        return geographicMapCellTypeArray;
   end getCellTypeAt;

   procedure getCellTypeAt (This : in out MultiGeographicMapBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant GeographicMapCellType_Access_Array_Access := MultiGeographicMapBehavior'Class (This).getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeAt;

end org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;


