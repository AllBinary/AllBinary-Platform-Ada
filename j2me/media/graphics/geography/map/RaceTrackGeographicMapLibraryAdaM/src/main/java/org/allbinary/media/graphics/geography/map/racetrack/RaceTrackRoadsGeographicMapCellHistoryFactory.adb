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


package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package is

   procedure Initialize_Fields (This : in out RaceTrackRoadsGeographicMapCellHistoryFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackRoadsGeographicMapCellHistoryFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RaceTrackRoadsGeographicMapCellHistoryFactory_Access is
      This : constant RaceTrackRoadsGeographicMapCellHistoryFactory_Access := new RaceTrackRoadsGeographicMapCellHistoryFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return GeographicMapCellHistory_Access is
   begin
        return RaceTrackRoadsGeographicMapCellHistoryFactory_Package.geographicMapCellHistory;
   end getInstance;

   procedure getInstance is
      Java_Result : constant GeographicMapCellHistory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   geographicMapCellHistory := GeographicMapCellHistory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;


