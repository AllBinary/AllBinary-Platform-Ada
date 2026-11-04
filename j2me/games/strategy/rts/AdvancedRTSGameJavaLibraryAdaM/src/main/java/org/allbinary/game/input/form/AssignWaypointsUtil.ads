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

limited with org.allbinary.game.input.form.AssignWaypointsUtil_Package;
package org.allbinary.game.input.form.AssignWaypointsUtil_Package_References is
   type AssignWaypointsUtil_Access is access all org.allbinary.game.input.form.AssignWaypointsUtil_Package.AssignWaypointsUtil'Class;
   type AssignWaypointsUtil_Access_Array is array (Natural range <>) of AssignWaypointsUtil_Access;
   type AssignWaypointsUtil_Access_Array_Access is access all AssignWaypointsUtil_Access_Array;
   type AssignWaypointsUtil_Access_Array_Access_Array is array (Natural range <>) of AssignWaypointsUtil_Access_Array_Access;
   type AssignWaypointsUtil_Access_Array_Access_Array_Access is access all AssignWaypointsUtil_Access_Array_Access_Array;
end org.allbinary.game.input.form.AssignWaypointsUtil_Package_References;

with org.allbinary.game.input.form.AssignWaypointsUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References;
limited with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package_References;
limited with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.input.form.AssignWaypointsUtil_Package is

   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package UnitLayer_Package renames Standard.org.allbinary.game.layer.unit.UnitLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype AdvancedRTSGameLayer_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access;
   use type AdvancedRTSGameLayer_Access;
   subtype AdvancedRTSGameLayer_Access_Array is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array;
   use type AdvancedRTSGameLayer_Access_Array;
   subtype AdvancedRTSGameLayer_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access;
   use type AdvancedRTSGameLayer_Access_Array_Access;
   subtype AdvancedRTSGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access_Array;
   use type AdvancedRTSGameLayer_Access_Array_Access_Array;
   subtype AdvancedRTSGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access_Array_Access;
   use type AdvancedRTSGameLayer_Access_Array_Access_Array_Access;
   subtype RTSLayerEvent_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access;
   use type RTSLayerEvent_Access;
   subtype RTSLayerEvent_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array;
   use type RTSLayerEvent_Access_Array;
   subtype RTSLayerEvent_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access;
   use type RTSLayerEvent_Access_Array_Access;
   subtype RTSLayerEvent_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array;
   use type RTSLayerEvent_Access_Array_Access_Array;
   subtype RTSLayerEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array_Access;
   use type RTSLayerEvent_Access_Array_Access_Array_Access;
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   use type UnitLayer_Access;
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   use type UnitLayer_Access_Array;
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   use type UnitLayer_Access_Array_Access;
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   use type UnitLayer_Access_Array_Access_Array;
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   use type UnitLayer_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype AssignWaypointsUtil_Access is org.allbinary.game.input.form.AssignWaypointsUtil_Package_References.AssignWaypointsUtil_Access;
   function "=" (Left, Right : AssignWaypointsUtil_Access) return Boolean renames org.allbinary.game.input.form.AssignWaypointsUtil_Package_References."=";
   subtype AssignWaypointsUtil_Access_Array is org.allbinary.game.input.form.AssignWaypointsUtil_Package_References.AssignWaypointsUtil_Access_Array;
   function "=" (Left, Right : AssignWaypointsUtil_Access_Array) return Boolean renames org.allbinary.game.input.form.AssignWaypointsUtil_Package_References."=";
   subtype AssignWaypointsUtil_Access_Array_Access is org.allbinary.game.input.form.AssignWaypointsUtil_Package_References.AssignWaypointsUtil_Access_Array_Access;
   function "=" (Left, Right : AssignWaypointsUtil_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.AssignWaypointsUtil_Package_References."=";
   subtype AssignWaypointsUtil_Access_Array_Access_Array is org.allbinary.game.input.form.AssignWaypointsUtil_Package_References.AssignWaypointsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AssignWaypointsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.AssignWaypointsUtil_Package_References."=";
   subtype AssignWaypointsUtil_Access_Array_Access_Array_Access is org.allbinary.game.input.form.AssignWaypointsUtil_Package_References.AssignWaypointsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AssignWaypointsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.AssignWaypointsUtil_Package_References."=";

   type AssignWaypointsUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      WAYPOINT_EVENT : RTSLayerEvent_Access;
   end record;
   instance : AssignWaypointsUtil_Access;

   procedure Initialize (This : in out AssignWaypointsUtil'Class);
   function Create return AssignWaypointsUtil_Access;
   function getInstance return AssignWaypointsUtil_Access;
   procedure set (This : in out AssignWaypointsUtil; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class; ownerAdvancedRTSGameLayer_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class);

end org.allbinary.game.input.form.AssignWaypointsUtil_Package;


