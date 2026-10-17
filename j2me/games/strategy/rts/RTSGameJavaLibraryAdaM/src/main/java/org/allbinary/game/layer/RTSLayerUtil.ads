-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.game.identification.GroupCommonFactory_Package; use org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.layer.RTSLayerUtil_Package is

   package GroupCommonFactory_Package renames Standard.org.allbinary.game.identification.GroupCommonFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package PartInterface_Package renames Standard.org.allbinary.game.part.PartInterface_Package;
   package BasicWeaponPart_Package renames Standard.org.allbinary.game.part.weapon.BasicWeaponPart_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BaseRaceTrackGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type RTSLayerUtil is tagged;
   type RTSLayerUtil_Access is access all RTSLayerUtil'Class;
   type RTSLayerUtil_Access_Array is array (Natural range <>) of RTSLayerUtil_Access;
   type RTSLayerUtil_Access_Array_Access is access all RTSLayerUtil_Access_Array;

   type RTSLayerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      groupCommonFactory : GroupCommonFactory_Access;
      MAX_RELOAD_TIME : Long_Long_Integer;
   end record;
   instance : RTSLayerUtil_Access;

   procedure Initialize (This : in out RTSLayerUtil'Class);
   function Create return RTSLayerUtil_Access;
   function getInstance return RTSLayerUtil_Access;
   procedure getInstance;
   function createWeaponProperties (This : in out RTSLayerUtil; weaponProperties : WeaponProperties_Access; currentLevel : Integer; lastLevel : Integer) return WeaponProperties_Access;
   procedure createWeaponProperties (This : in out RTSLayerUtil; weaponProperties : WeaponProperties_Access; currentLevel : Integer; lastLevel : Integer);
   procedure downgrade (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access);
   procedure upgrade (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access);
   function getCostExponential (This : in out RTSLayerUtil; cost : Long_Long_Integer) return Long_Long_Integer;
   procedure getCostExponential (This : in out RTSLayerUtil; cost : Long_Long_Integer);
   function getWeaponPropertiesCost (This : in out RTSLayerUtil; weaponProperties : WeaponProperties_Access) return Integer;
   procedure getWeaponPropertiesCost (This : in out RTSLayerUtil; weaponProperties : WeaponProperties_Access);
   function getCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) return Integer;
   procedure getCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access);
   function getDowngradeCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) return Integer;
   procedure getDowngradeCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access);
   function getUpgradeCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) return Integer;
   procedure getUpgradeCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access);
   procedure destroyAndClear (This : in out RTSLayerUtil; list : BasicArrayList_Access);
   function createFakeRTSLayerHashtable (This : in out RTSLayerUtil; baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access) return ABHashtable_Access;
   procedure createFakeRTSLayerHashtable (This : in out RTSLayerUtil; baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access);

end org.allbinary.game.layer.RTSLayerUtil_Package;


