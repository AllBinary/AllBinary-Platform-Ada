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

with AllBinary_Java;
limited with org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package;
package org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References is
   type PathFinderGraphHackVisitorFactory_Access is access all org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package.PathFinderGraphHackVisitorFactory'Class;
   type PathFinderGraphHackVisitorFactory_Access_Array is array (Natural range <>) of PathFinderGraphHackVisitorFactory_Access;
   type PathFinderGraphHackVisitorFactory_Access_Array_Access is access all PathFinderGraphHackVisitorFactory_Access_Array;
   type PathFinderGraphHackVisitorFactory_Access_Array_Access_Array is array (Natural range <>) of PathFinderGraphHackVisitorFactory_Access_Array_Access;
   type PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access is access all PathFinderGraphHackVisitorFactory_Access_Array_Access_Array;
   type PathFinderGraphHackVisitorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFinderGraphHackVisitorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFinderGraphHackVisitorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFinderGraphHackVisitorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFinderGraphHackVisitorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFinderGraphHackVisitorFactory_Access_Array_Access is (if Value /= null and then Value.all in PathFinderGraphHackVisitorFactory_Access_Array_Object'Class then PathFinderGraphHackVisitorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFinderGraphHackVisitorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Object'Class then PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References;

with org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References;

package org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package PathFinderGraphVisitorFactoryBase_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;
   package PathFinderGraphVisitorBase_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
   package Reference_Types is
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype PathFinderGraphVisitorBase_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access;
   use type PathFinderGraphVisitorBase_Access;
   subtype PathFinderGraphVisitorBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array;
   use type PathFinderGraphVisitorBase_Access_Array;
   subtype PathFinderGraphVisitorBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access;
   use type PathFinderGraphVisitorBase_Access_Array_Access;
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array;
   use type PathFinderGraphVisitorBase_Access_Array_Access_Array;
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array_Access;
   use type PathFinderGraphVisitorBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathFinderGraphHackVisitorFactory_Access is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.PathFinderGraphHackVisitorFactory_Access;
   function "=" (Left, Right : PathFinderGraphHackVisitorFactory_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References."=";
   subtype PathFinderGraphHackVisitorFactory_Access_Array is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.PathFinderGraphHackVisitorFactory_Access_Array;
   function "=" (Left, Right : PathFinderGraphHackVisitorFactory_Access_Array) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References."=";
   subtype PathFinderGraphHackVisitorFactory_Access_Array_Access is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.PathFinderGraphHackVisitorFactory_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphHackVisitorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References."=";
   function Java_Box (Value : PathFinderGraphHackVisitorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.Java_Box;
   function Java_Unbox_PathFinderGraphHackVisitorFactory_Access_Array (Value : access Java_Object'Class) return PathFinderGraphHackVisitorFactory_Access_Array_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.Java_Unbox_PathFinderGraphHackVisitorFactory_Access_Array;
   subtype PathFinderGraphHackVisitorFactory_Access_Array_Access_Array is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.PathFinderGraphHackVisitorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PathFinderGraphHackVisitorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References."=";
   subtype PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References."=";
   function Java_Box (Value : PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.Java_Box;
   function Java_Unbox_PathFinderGraphHackVisitorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFinderGraphHackVisitorFactory_Access_Array_Access_Array_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package_References.Java_Unbox_PathFinderGraphHackVisitorFactory_Access_Array_Access_Array;

   type PathFinderGraphHackVisitorFactory is new PathFinderGraphVisitorFactoryBase with record
      edgeMinimum : Integer;
      minPathWeight : Integer;
      maxPathWeight : Integer;
   end record;

   procedure Initialize (This : in out PathFinderGraphHackVisitorFactory'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer);
   function Create (edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitorFactory_Access;
   function getInstance (This : in out PathFinderGraphHackVisitorFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return PathFinderGraphVisitorBase_Access;
   procedure getInstance (This : in out PathFinderGraphHackVisitorFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitorFactory_Package;


