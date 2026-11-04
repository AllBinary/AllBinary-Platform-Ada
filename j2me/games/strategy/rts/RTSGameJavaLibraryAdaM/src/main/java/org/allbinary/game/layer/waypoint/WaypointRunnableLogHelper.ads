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

limited with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
package org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References is
   type WaypointRunnableLogHelper_Access is access all org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package.WaypointRunnableLogHelper'Class;
   type WaypointRunnableLogHelper_Access_Array is array (Natural range <>) of WaypointRunnableLogHelper_Access;
   type WaypointRunnableLogHelper_Access_Array_Access is access all WaypointRunnableLogHelper_Access_Array;
   type WaypointRunnableLogHelper_Access_Array_Access_Array is array (Natural range <>) of WaypointRunnableLogHelper_Access_Array_Access;
   type WaypointRunnableLogHelper_Access_Array_Access_Array_Access is access all WaypointRunnableLogHelper_Access_Array_Access_Array;
end org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References;

with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References;
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

package org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package is

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype WaypointRunnableLogHelper_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";

   type WaypointRunnableLogHelper is new Java_Object with null record;
   instance : WaypointRunnableLogHelper_Access;

   procedure Initialize (This : in out WaypointRunnableLogHelper'Class);
   function Create return WaypointRunnableLogHelper_Access;
   function getInstance return WaypointRunnableLogHelper_Access;
   procedure start (This : in out WaypointRunnableLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure end_Id (This : in out WaypointRunnableLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;


