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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package is

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type WaypointRunnableSelectedLogHelper is tagged;
   type WaypointRunnableSelectedLogHelper_Access is access all WaypointRunnableSelectedLogHelper'Class;
   type WaypointRunnableSelectedLogHelper_Access_Array is array (Natural range <>) of WaypointRunnableSelectedLogHelper_Access;
   type WaypointRunnableSelectedLogHelper_Access_Array_Access is access all WaypointRunnableSelectedLogHelper_Access_Array;

   type WaypointRunnableSelectedLogHelper is new WaypointRunnableLogHelper with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instanceC : WaypointRunnableSelectedLogHelper_Access;

   procedure Initialize (This : in out WaypointRunnableSelectedLogHelper'Class);
   function Create return WaypointRunnableSelectedLogHelper_Access;
   function getInstance return WaypointRunnableSelectedLogHelper_Access;
   procedure getInstance;
   procedure start (This : in out WaypointRunnableSelectedLogHelper; pathFindingLayerInterface : PathFindingLayerInterface_Access);
   procedure end_Id (This : in out WaypointRunnableSelectedLogHelper; pathFindingLayerInterface : PathFindingLayerInterface_Access);

end org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;


