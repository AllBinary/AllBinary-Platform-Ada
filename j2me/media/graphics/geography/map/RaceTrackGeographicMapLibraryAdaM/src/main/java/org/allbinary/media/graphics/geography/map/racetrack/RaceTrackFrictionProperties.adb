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


package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package is

   procedure Initialize_Fields (This : in out RaceTrackFrictionProperties'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackFrictionProperties'Class; roadFriction : Integer; groundFriction : Integer) is
   begin
      Initialize_Fields (This);
        This.ROAD_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (roadFriction);
        This.GROUND_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (groundFriction);
   end Initialize;

   function Create (roadFriction : Integer; groundFriction : Integer) return RaceTrackFrictionProperties_Access is
      This : constant RaceTrackFrictionProperties_Access := new RaceTrackFrictionProperties;
   begin
      Initialize (This.all, roadFriction, groundFriction);
      return This;
   end Create;

   function getRoadFrictionNominator (This : in out RaceTrackFrictionProperties) return Integer is
   begin
        return This.ROAD_FRICTION_NOMINATOR;
   end getRoadFrictionNominator;

   function getGroundFrictionNominator (This : in out RaceTrackFrictionProperties) return Integer is
   begin
        return This.GROUND_FRICTION_NOMINATOR;
   end getGroundFrictionNominator;

   procedure getRoadFrictionNominator (This : in out RaceTrackFrictionProperties) is
      Java_Result : constant Integer := RaceTrackFrictionProperties'Class (This).getRoadFrictionNominator;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRoadFrictionNominator;

   procedure getGroundFrictionNominator (This : in out RaceTrackFrictionProperties) is
      Java_Result : constant Integer := RaceTrackFrictionProperties'Class (This).getGroundFrictionNominator;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroundFrictionNominator;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package;


