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


package body org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package is

   procedure Initialize_Fields (This : in out PathFinderGraphHackVisitorFactory'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PathFinderGraphHackVisitorFactory'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) is
   begin
      PathFinderGraphVisitorFactoryBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.edgeMinimum := edgeMinimum;
        This.minPathWeight := minPathWeight;
        This.maxPathWeight := maxPathWeight;
   end Initialize;

   function Create (edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitorFactory_Access is
      This : constant PathFinderGraphHackVisitorFactory_Access := new PathFinderGraphHackVisitorFactory;
   begin
      PathFinderGraphHackVisitorFactory_Package.Initialize (This.all, edgeMinimum, minPathWeight, maxPathWeight);
      return This;
   end Create;

   function getInstance (This : in out PathFinderGraphHackVisitorFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return PathFinderGraphVisitorBase_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        return PathFinderGraphHackVisitor_Package.Create (geographicMapInterface, This.edgeMinimum, This.minPathWeight, This.maxPathWeight);
   end getInstance;

   procedure getInstance (This : in out PathFinderGraphHackVisitorFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      Java_Result : constant PathFinderGraphVisitorBase_Access := PathFinderGraphHackVisitorFactory'Class (This).getInstance (geographicMapInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package;


