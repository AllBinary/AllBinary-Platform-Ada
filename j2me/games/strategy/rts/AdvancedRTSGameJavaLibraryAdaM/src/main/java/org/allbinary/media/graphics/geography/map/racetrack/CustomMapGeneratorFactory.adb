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


with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package is

   procedure Initialize_Fields (This : in out CustomMapGeneratorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CustomMapGeneratorFactory'Class) is
   begin
      CustomMapGeneratorBaseFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CustomMapGeneratorFactory_Access is
      This : constant CustomMapGeneratorFactory_Access := new CustomMapGeneratorFactory;
   begin
      CustomMapGeneratorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function create (This : in out CustomMapGeneratorFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) return CustomMapGeneratorBase_Access is
      raceTrackGeographicMap : constant RaceTrackGeographicMap_Access := RaceTrackGeographicMap_Access (raceTrackGeographicMap_Param);
   begin
        return CustomMapGeneratorBase_Access (CustomMapGenerator_Package.Create (raceTrackGeographicMap));
   end create;

   procedure create (This : in out CustomMapGeneratorFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) is
      Java_Result : constant CustomMapGeneratorBase_Access := CustomMapGeneratorFactory'Class (This).create (raceTrackGeographicMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package;


