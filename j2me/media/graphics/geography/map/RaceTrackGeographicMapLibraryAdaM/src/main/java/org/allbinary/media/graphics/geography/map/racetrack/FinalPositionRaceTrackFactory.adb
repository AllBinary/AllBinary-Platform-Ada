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



package body org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package is

   procedure Initialize_Fields (This : in out FinalPositionRaceTrackFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out FinalPositionRaceTrackFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FinalPositionRaceTrackFactory_Access is
      This : constant FinalPositionRaceTrackFactory_Access := new FinalPositionRaceTrackFactory;
   begin
      FinalPositionRaceTrackFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return Integer is
   begin
        return Java_Post_Increment (FinalPositionRaceTrackFactory_Package.index);
   end getInstance;

   procedure reset is
   begin
        FinalPositionRaceTrackFactory_Package.index := FinalPositionRaceTrackFactory_Package.FIRST_POSITION;
   end reset;

begin
   null;
   FIRST_POSITION := 1;
   index := FinalPositionRaceTrackFactory_Package.FIRST_POSITION;

end org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package;


