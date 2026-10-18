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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;

package org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package is

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;

   type WaypointRunnableLogHelper is tagged;
   type WaypointRunnableLogHelper_Access is access all WaypointRunnableLogHelper'Class;
   type WaypointRunnableLogHelper_Access_Array is array (Natural range <>) of WaypointRunnableLogHelper_Access;
   type WaypointRunnableLogHelper_Access_Array_Access is access all WaypointRunnableLogHelper_Access_Array;
   type WaypointRunnableLogHelper_Access_Array_Access_Array is array (Natural range <>) of WaypointRunnableLogHelper_Access_Array_Access;
   type WaypointRunnableLogHelper_Access_Array_Access_Array_Access is access all WaypointRunnableLogHelper_Access_Array_Access_Array;

   type WaypointRunnableLogHelper is new Java_Object with null record;
   instance : WaypointRunnableLogHelper_Access;

   procedure Initialize (This : in out WaypointRunnableLogHelper'Class);
   function Create return WaypointRunnableLogHelper_Access;
   function getInstance return WaypointRunnableLogHelper_Access;
   procedure start (This : in out WaypointRunnableLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure end_Id (This : in out WaypointRunnableLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;


