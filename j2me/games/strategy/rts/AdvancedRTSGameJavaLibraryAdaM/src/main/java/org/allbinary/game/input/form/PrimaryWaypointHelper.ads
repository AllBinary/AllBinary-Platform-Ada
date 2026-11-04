-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

limited with org.allbinary.game.input.form.PrimaryWaypointHelper_Package;
package org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References is
   type PrimaryWaypointHelper_Access is access all org.allbinary.game.input.form.PrimaryWaypointHelper_Package.PrimaryWaypointHelper'Class;
   type PrimaryWaypointHelper_Access_Array is array (Natural range <>) of PrimaryWaypointHelper_Access;
   type PrimaryWaypointHelper_Access_Array_Access is access all PrimaryWaypointHelper_Access_Array;
   type PrimaryWaypointHelper_Access_Array_Access_Array is array (Natural range <>) of PrimaryWaypointHelper_Access_Array_Access;
   type PrimaryWaypointHelper_Access_Array_Access_Array_Access is access all PrimaryWaypointHelper_Access_Array_Access_Array;
end org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References;

with org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
limited with org.allbinary.game.layer.waypoint.WaypointLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package_References;

package org.allbinary.game.input.form.PrimaryWaypointHelper_Package is

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointLayer_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayer_Package;
   package Reference_Types is
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
   subtype WaypointLayer_Access is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access;
   use type WaypointLayer_Access;
   subtype WaypointLayer_Access_Array is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access_Array;
   use type WaypointLayer_Access_Array;
   subtype WaypointLayer_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access_Array_Access;
   use type WaypointLayer_Access_Array_Access;
   subtype WaypointLayer_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access_Array_Access_Array;
   use type WaypointLayer_Access_Array_Access_Array;
   subtype WaypointLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access_Array_Access_Array_Access;
   use type WaypointLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PrimaryWaypointHelper_Access is org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References.PrimaryWaypointHelper_Access;
   function "=" (Left, Right : PrimaryWaypointHelper_Access) return Boolean renames org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References."=";
   subtype PrimaryWaypointHelper_Access_Array is org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References.PrimaryWaypointHelper_Access_Array;
   function "=" (Left, Right : PrimaryWaypointHelper_Access_Array) return Boolean renames org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References."=";
   subtype PrimaryWaypointHelper_Access_Array_Access is org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References.PrimaryWaypointHelper_Access_Array_Access;
   function "=" (Left, Right : PrimaryWaypointHelper_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References."=";
   subtype PrimaryWaypointHelper_Access_Array_Access_Array is org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References.PrimaryWaypointHelper_Access_Array_Access_Array;
   function "=" (Left, Right : PrimaryWaypointHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References."=";
   subtype PrimaryWaypointHelper_Access_Array_Access_Array_Access is org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References.PrimaryWaypointHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PrimaryWaypointHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.PrimaryWaypointHelper_Package_References."=";

   type PrimaryWaypointHelper is new Java_Object with record
      waypointLayer : PathFindingLayerInterface_Access;
   end record;
   instance : PrimaryWaypointHelper_Access;

   procedure Initialize (This : in out PrimaryWaypointHelper'Class);
   function Create return PrimaryWaypointHelper_Access;
   function getInstance return PrimaryWaypointHelper_Access;
   function getWaypointLayer (This : in out PrimaryWaypointHelper) return PathFindingLayerInterface_Access;
   procedure setWaypointLayer (This : in out PrimaryWaypointHelper; waypointLayer_Param : access WaypointLayer_Package.WaypointLayer'Class);

end org.allbinary.game.input.form.PrimaryWaypointHelper_Package;


