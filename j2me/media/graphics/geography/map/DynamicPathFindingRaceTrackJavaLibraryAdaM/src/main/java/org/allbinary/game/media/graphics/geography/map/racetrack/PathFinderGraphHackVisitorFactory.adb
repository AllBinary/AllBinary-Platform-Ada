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


with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References;
with org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package; use org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;
with org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;
with org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;

package body org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package is

   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
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
        return PathFinderGraphVisitorBase_Access (PathFinderGraphHackVisitor_Package.Create (geographicMapInterface, This.edgeMinimum, This.minPathWeight, This.maxPathWeight));
   end getInstance;

   procedure getInstance (This : in out PathFinderGraphHackVisitorFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      Java_Result : constant PathFinderGraphVisitorBase_Access := PathFinderGraphHackVisitorFactory'Class (This).getInstance (geographicMapInterface_Param => geographicMapInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package;


