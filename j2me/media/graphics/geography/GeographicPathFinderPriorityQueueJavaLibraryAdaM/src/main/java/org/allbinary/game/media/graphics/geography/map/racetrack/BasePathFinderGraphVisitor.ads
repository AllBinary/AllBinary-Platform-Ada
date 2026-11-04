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

limited with org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;
package org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References is
   type BasePathFinderGraphVisitor_Access is access all org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package.BasePathFinderGraphVisitor'Class;
   type BasePathFinderGraphVisitor_Access_Array is array (Natural range <>) of BasePathFinderGraphVisitor_Access;
   type BasePathFinderGraphVisitor_Access_Array_Access is access all BasePathFinderGraphVisitor_Access_Array;
   type BasePathFinderGraphVisitor_Access_Array_Access_Array is array (Natural range <>) of BasePathFinderGraphVisitor_Access_Array_Access;
   type BasePathFinderGraphVisitor_Access_Array_Access_Array_Access is access all BasePathFinderGraphVisitor_Access_Array_Access_Array;
end org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References;

with org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References;
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
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package PathFinderGraphVisitorBase_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasePathFinderGraphVisitor_Access is org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References.BasePathFinderGraphVisitor_Access;
   function "=" (Left, Right : BasePathFinderGraphVisitor_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References."=";
   subtype BasePathFinderGraphVisitor_Access_Array is org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References.BasePathFinderGraphVisitor_Access_Array;
   function "=" (Left, Right : BasePathFinderGraphVisitor_Access_Array) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References."=";
   subtype BasePathFinderGraphVisitor_Access_Array_Access is org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References.BasePathFinderGraphVisitor_Access_Array_Access;
   function "=" (Left, Right : BasePathFinderGraphVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References."=";
   subtype BasePathFinderGraphVisitor_Access_Array_Access_Array is org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References.BasePathFinderGraphVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : BasePathFinderGraphVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References."=";
   subtype BasePathFinderGraphVisitor_Access_Array_Access_Array_Access is org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References.BasePathFinderGraphVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasePathFinderGraphVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package_References."=";

   type BasePathFinderGraphVisitor is new PathFinderGraphVisitorBase with record
      geographicMapInterface : BasicGeographicMap_Access;
      edgeMinimum : Integer;
      minPathWeight : Integer;
      maxPathWeight : Integer;
   end record;

   procedure Initialize (This : in out BasePathFinderGraphVisitor'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return BasePathFinderGraphVisitor_Access;
   procedure visit (This : in out BasePathFinderGraphVisitor; graph_Param : access Java_Object'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixPath (This : in out BasePathFinderGraphVisitor; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function isValid (This : in out BasePathFinderGraphVisitor; graphPath_Param : access Java_Object'Class) return Boolean;
   procedure isValid (This : in out BasePathFinderGraphVisitor; graphPath_Param : access Java_Object'Class);
   function getInvalidReason (This : in out BasePathFinderGraphVisitor; graphPath_Param : access Java_Object'Class) return Unbounded_String;
   procedure getInvalidReason (This : in out BasePathFinderGraphVisitor; graphPath_Param : access Java_Object'Class);
   function isValid (This : in out BasePathFinderGraphVisitor; Value : Unbounded_String) return Boolean;
   procedure isValid (This : in out BasePathFinderGraphVisitor; Value : Unbounded_String);
   function getInvalidReason (This : in out BasePathFinderGraphVisitor; Value : Unbounded_String) return Unbounded_String;
   procedure getInvalidReason (This : in out BasePathFinderGraphVisitor; Value : Unbounded_String);

end org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;


