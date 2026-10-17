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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;

package org.allbinary.game.input.form.PrimaryWaypointHelper_Package is

   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointLayer_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayer_Package;

   type PrimaryWaypointHelper is tagged;
   type PrimaryWaypointHelper_Access is access all PrimaryWaypointHelper'Class;
   type PrimaryWaypointHelper_Access_Array is array (Natural range <>) of PrimaryWaypointHelper_Access;
   type PrimaryWaypointHelper_Access_Array_Access is access all PrimaryWaypointHelper_Access_Array;

   type PrimaryWaypointHelper is new Java_Object with record
      waypointLayer : PathFindingLayerInterface_Access;
   end record;
   instance : PrimaryWaypointHelper_Access;

   procedure Initialize (This : in out PrimaryWaypointHelper'Class);
   function Create return PrimaryWaypointHelper_Access;
   function getInstance return PrimaryWaypointHelper_Access;
   function getWaypointLayer (This : in out PrimaryWaypointHelper) return PathFindingLayerInterface_Access;
   procedure setWaypointLayer (This : in out PrimaryWaypointHelper; waypointLayer : WaypointLayer_Access);

end org.allbinary.game.input.form.PrimaryWaypointHelper_Package;


