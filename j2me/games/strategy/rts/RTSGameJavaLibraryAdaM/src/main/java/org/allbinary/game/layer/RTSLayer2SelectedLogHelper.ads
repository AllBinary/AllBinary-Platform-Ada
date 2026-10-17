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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package; use org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;

package org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type RTSLayer2SelectedLogHelper is tagged;
   type RTSLayer2SelectedLogHelper_Access is access all RTSLayer2SelectedLogHelper'Class;
   type RTSLayer2SelectedLogHelper_Access_Array is array (Natural range <>) of RTSLayer2SelectedLogHelper_Access;
   type RTSLayer2SelectedLogHelper_Access_Array_Access is access all RTSLayer2SelectedLogHelper_Access_Array;

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


