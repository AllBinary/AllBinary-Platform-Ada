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



package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package is

   procedure Initialize_Fields (This : in out RaceTrackGameFeature'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackGameFeature'Class; name : Unbounded_String) is
   begin
        GameFeature_Package.Initialize (This, name);
   end Initialize;

   function Create (name : Unbounded_String) return RaceTrackGameFeature_Access is
      This : constant RaceTrackGameFeature_Access := new RaceTrackGameFeature;
   begin
      RaceTrackGameFeature_Package.Initialize (This.all, name);
      return This;
   end Create;

begin
   null;
   MINI_MAP := GameFeature_Access (RaceTrackGameFeature_Package.Create (To_Unbounded_String ("Mini Map")));
   AUTO_FINISH_AI := GameFeature_Access (RaceTrackGameFeature_Package.Create (To_Unbounded_String ("Auto Finish AI")));

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package;


