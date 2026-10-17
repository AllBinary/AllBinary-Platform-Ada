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


package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package is

   procedure Initialize_Fields (This : in out RaceTrackGeographicMapCellType'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackGeographicMapCellType'Class; name : Unbounded_String; type_Id : Integer; travelCost : Integer; reset : Integer) is
   begin
        GeographicMapCellType_Package.Initialize (This, type_Id, reset);
        Initialize_Fields (This);
        This.name := name;
        This.travelCost := travelCost;
   end Initialize;

   function Create (name : Unbounded_String; type_Id : Integer; travelCost : Integer; reset : Integer) return RaceTrackGeographicMapCellType_Access is
      This : constant RaceTrackGeographicMapCellType_Access := new RaceTrackGeographicMapCellType;
   begin
      Initialize (This.all, name, type_Id, travelCost, reset);
      return This;
   end Create;

   function getTravelCost (This : in out RaceTrackGeographicMapCellType) return Integer is
   begin
        return This.travelCost;
   end getTravelCost;

   procedure getTravelCost (This : in out RaceTrackGeographicMapCellType) is
      Java_Result : constant Integer := RaceTrackGeographicMapCellType'Class (This).getTravelCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTravelCost;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;


