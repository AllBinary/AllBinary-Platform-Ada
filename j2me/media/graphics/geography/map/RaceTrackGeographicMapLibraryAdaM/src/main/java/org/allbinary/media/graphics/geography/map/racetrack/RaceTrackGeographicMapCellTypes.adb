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


with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package is

   subtype RaceTrackGeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   subtype RaceTrackGeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   subtype RaceTrackGeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   subtype RaceTrackGeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   subtype RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   procedure Initialize_Fields (This : in out RaceTrackGeographicMapCellTypes'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   function getInstance return RaceTrackGeographicMapCellTypes_Access is
   begin
        return RaceTrackGeographicMapCellTypes_Access (RaceTrackGeographicMapCellTypes_Package.instance);
   end getInstance;

   procedure Initialize (This : in out RaceTrackGeographicMapCellTypes'Class) is
   begin
      Initialize_Fields (This);
        This.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Bottom Left Turn"), 1, 1, 0);
        This.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Bottom Right Turn"), 2, 1, 0);
        This.TOP_LEFT_TURN_ROAD_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Top Left Turn"), 3, 1, 0);
        This.TOP_RIGHT_TURN_ROAD_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Top Right Turne"), 4, 1, 0);
        This.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Horizontal Straight"), 5, 1, 0);
        This.VERTICAL_STRAIGHT_ROAD_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Vertical Straight"), 6, 1, 0);
        This.START_LINE_ROAD_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Start Line"), 7, 1, 0);
        This.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE := RaceTrackGeographicMapCellType_Package.Create (To_Unbounded_String ("Finish Line"), 8, 1, 0);
   end Initialize;

   function Create return RaceTrackGeographicMapCellTypes_Access is
      This : constant RaceTrackGeographicMapCellTypes_Access := new RaceTrackGeographicMapCellTypes;
   begin
      RaceTrackGeographicMapCellTypes_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := RaceTrackGeographicMapCellTypes_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package;


