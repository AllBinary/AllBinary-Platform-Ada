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

limited with org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package;
package org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References is
   type RTSLayer2SelectedLogHelper_Access is access all org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package.RTSLayer2SelectedLogHelper'Class;
   type RTSLayer2SelectedLogHelper_Access_Array is array (Natural range <>) of RTSLayer2SelectedLogHelper_Access;
   type RTSLayer2SelectedLogHelper_Access_Array_Access is access all RTSLayer2SelectedLogHelper_Access_Array;
   type RTSLayer2SelectedLogHelper_Access_Array_Access_Array is array (Natural range <>) of RTSLayer2SelectedLogHelper_Access_Array_Access;
   type RTSLayer2SelectedLogHelper_Access_Array_Access_Array_Access is access all RTSLayer2SelectedLogHelper_Access_Array_Access_Array;
end org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References;

with org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package; use org.allbinary.game.layer.RTSLayer2LogHelper_Package;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;

package org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype RTSLayer2SelectedLogHelper_Access is org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References.RTSLayer2SelectedLogHelper_Access;
   function "=" (Left, Right : RTSLayer2SelectedLogHelper_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References."=";
   subtype RTSLayer2SelectedLogHelper_Access_Array is org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References.RTSLayer2SelectedLogHelper_Access_Array;
   function "=" (Left, Right : RTSLayer2SelectedLogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References."=";
   subtype RTSLayer2SelectedLogHelper_Access_Array_Access is org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References.RTSLayer2SelectedLogHelper_Access_Array_Access;
   function "=" (Left, Right : RTSLayer2SelectedLogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References."=";
   subtype RTSLayer2SelectedLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References.RTSLayer2SelectedLogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer2SelectedLogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References."=";
   subtype RTSLayer2SelectedLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References.RTSLayer2SelectedLogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer2SelectedLogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package_References."=";

   type RTSLayer2SelectedLogHelper is new RTSLayer2LogHelper with record
      logUtil : LogUtil_Access;
      TRACK_TO_FIRE_OR_MOVE : Unbounded_String;
      BUILDING_CHASE : Unbounded_String;
   end record;
   instanceC : RTSLayer2SelectedLogHelper_Access;

   procedure Initialize (This : in out RTSLayer2SelectedLogHelper'Class);
   function Create return RTSLayer2SelectedLogHelper_Access;
   function getInstance return RTSLayer2SelectedLogHelper_Access;
   procedure steeringUp (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure steeringFireOrStop (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingAbove (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingChaseLeft (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingChaseRight (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingDown (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingChaseDown (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingChaseUp (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingLeft (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingRight (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package;


