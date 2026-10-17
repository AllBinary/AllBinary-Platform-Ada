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

package org.allbinary.game.layer.RTSLayer2LogHelper_Package is


   type RTSLayer2LogHelper is tagged;
   type RTSLayer2LogHelper_Access is access all RTSLayer2LogHelper'Class;
   type RTSLayer2LogHelper_Access_Array is array (Natural range <>) of RTSLayer2LogHelper_Access;
   type RTSLayer2LogHelper_Access_Array_Access is access all RTSLayer2LogHelper_Access_Array;

   type RTSLayer2LogHelper is new Java_Object with null record;
   instance : RTSLayer2LogHelper_Access;

   procedure Initialize (This : in out RTSLayer2LogHelper'Class);
   function Create return RTSLayer2LogHelper_Access;
   function getInstance return RTSLayer2LogHelper_Access;
   procedure steeringUp (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure steeringFireOrStop (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingAbove (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingChaseLeft (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingChaseRight (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingDown (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingChaseDown (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingChaseUp (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingLeft (This : in out RTSLayer2LogHelper);
   procedure buildingRight (This : in out RTSLayer2LogHelper);

end org.allbinary.game.layer.RTSLayer2LogHelper_Package;


