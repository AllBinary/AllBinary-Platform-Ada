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
limited with org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;
package org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References is
   type PathFinderGraphHackVisitor_Access is access all org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package.PathFinderGraphHackVisitor'Class;
   type PathFinderGraphHackVisitor_Access_Array is array (Natural range <>) of PathFinderGraphHackVisitor_Access;
   type PathFinderGraphHackVisitor_Access_Array_Access is access all PathFinderGraphHackVisitor_Access_Array;
   type PathFinderGraphHackVisitor_Access_Array_Access_Array is array (Natural range <>) of PathFinderGraphHackVisitor_Access_Array_Access;
   type PathFinderGraphHackVisitor_Access_Array_Access_Array_Access is access all PathFinderGraphHackVisitor_Access_Array_Access_Array;
   type PathFinderGraphHackVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFinderGraphHackVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFinderGraphHackVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFinderGraphHackVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFinderGraphHackVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFinderGraphHackVisitor_Access_Array_Access is (if Value /= null and then Value.all in PathFinderGraphHackVisitor_Access_Array_Object'Class then PathFinderGraphHackVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type PathFinderGraphHackVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFinderGraphHackVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFinderGraphHackVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFinderGraphHackVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFinderGraphHackVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFinderGraphHackVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFinderGraphHackVisitor_Access_Array_Access_Array_Object'Class then PathFinderGraphHackVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References;

with org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.jgrapht.GraphPath_Package;
with org.jgrapht.GraphPath_Package_References;
limited with org.jgrapht.graph.SimpleWeightedGraph_Package;
with org.jgrapht.graph.SimpleWeightedGraph_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package; use org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;

package org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package is

   package GraphPath_Package renames Standard.org.jgrapht.GraphPath_Package;
   package SimpleWeightedGraph_Package renames Standard.org.jgrapht.graph.SimpleWeightedGraph_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package Reference_Types is
   subtype GraphPath_Access is org.jgrapht.GraphPath_Package_References.GraphPath_Access;
   use type GraphPath_Access;
   subtype GraphPath_Access_Array is org.jgrapht.GraphPath_Package_References.GraphPath_Access_Array;
   use type GraphPath_Access_Array;
   subtype GraphPath_Access_Array_Access is org.jgrapht.GraphPath_Package_References.GraphPath_Access_Array_Access;
   use type GraphPath_Access_Array_Access;
   subtype GraphPath_Access_Array_Access_Array is org.jgrapht.GraphPath_Package_References.GraphPath_Access_Array_Access_Array;
   use type GraphPath_Access_Array_Access_Array;
   subtype GraphPath_Access_Array_Access_Array_Access is org.jgrapht.GraphPath_Package_References.GraphPath_Access_Array_Access_Array_Access;
   use type GraphPath_Access_Array_Access_Array_Access;
   subtype SimpleWeightedGraph_Access is org.jgrapht.graph.SimpleWeightedGraph_Package_References.SimpleWeightedGraph_Access;
   use type SimpleWeightedGraph_Access;
   subtype SimpleWeightedGraph_Access_Array is org.jgrapht.graph.SimpleWeightedGraph_Package_References.SimpleWeightedGraph_Access_Array;
   use type SimpleWeightedGraph_Access_Array;
   subtype SimpleWeightedGraph_Access_Array_Access is org.jgrapht.graph.SimpleWeightedGraph_Package_References.SimpleWeightedGraph_Access_Array_Access;
   use type SimpleWeightedGraph_Access_Array_Access;
   subtype SimpleWeightedGraph_Access_Array_Access_Array is org.jgrapht.graph.SimpleWeightedGraph_Package_References.SimpleWeightedGraph_Access_Array_Access_Array;
   use type SimpleWeightedGraph_Access_Array_Access_Array;
   subtype SimpleWeightedGraph_Access_Array_Access_Array_Access is org.jgrapht.graph.SimpleWeightedGraph_Package_References.SimpleWeightedGraph_Access_Array_Access_Array_Access;
   use type SimpleWeightedGraph_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype PathFinderGraphHackVisitor_Access is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.PathFinderGraphHackVisitor_Access;
   function "=" (Left, Right : PathFinderGraphHackVisitor_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References."=";
   subtype PathFinderGraphHackVisitor_Access_Array is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.PathFinderGraphHackVisitor_Access_Array;
   function "=" (Left, Right : PathFinderGraphHackVisitor_Access_Array) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References."=";
   subtype PathFinderGraphHackVisitor_Access_Array_Access is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.PathFinderGraphHackVisitor_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphHackVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References."=";
   function Java_Box (Value : PathFinderGraphHackVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.Java_Box;
   function Java_Unbox_PathFinderGraphHackVisitor_Access_Array (Value : access Java_Object'Class) return PathFinderGraphHackVisitor_Access_Array_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.Java_Unbox_PathFinderGraphHackVisitor_Access_Array;
   subtype PathFinderGraphHackVisitor_Access_Array_Access_Array is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.PathFinderGraphHackVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : PathFinderGraphHackVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References."=";
   subtype PathFinderGraphHackVisitor_Access_Array_Access_Array_Access is org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.PathFinderGraphHackVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphHackVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References."=";
   function Java_Box (Value : PathFinderGraphHackVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.Java_Box;
   function Java_Unbox_PathFinderGraphHackVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFinderGraphHackVisitor_Access_Array_Access_Array_Access renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package_References.Java_Unbox_PathFinderGraphHackVisitor_Access_Array_Access_Array;

   type PathFinderGraphHackVisitor is new BasePathFinderGraphVisitor with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PathFinderGraphHackVisitor'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitor_Access;
   procedure visit (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixStart (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixEnd (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixOverPassEdges (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class);
   procedure fixPath (This : in out PathFinderGraphHackVisitor; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure removeOverPassEdges (This : in out PathFinderGraphHackVisitor; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) return Boolean;
   procedure isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class);

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;


