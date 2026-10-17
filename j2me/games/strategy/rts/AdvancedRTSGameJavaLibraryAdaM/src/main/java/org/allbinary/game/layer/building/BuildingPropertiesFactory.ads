-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.combat.damage.PtsDamageFloaters_Package; use org.allbinary.game.combat.damage.PtsDamageFloaters_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.game.health.HealthBar_Package; use org.allbinary.game.health.HealthBar_Package;
with org.allbinary.game.health.HealthBarTwodAnimation_Package; use org.allbinary.game.health.HealthBarTwodAnimation_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;

package org.allbinary.game.layer.building.BuildingPropertiesFactory_Package is

   package DamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.DamageFloaters_Package;
   package PtsDamageFloaters_Package renames Standard.org.allbinary.game.combat.damage.PtsDamageFloaters_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package HealthBar_Package renames Standard.org.allbinary.game.health.HealthBar_Package;
   package HealthBarTwodAnimation_Package renames Standard.org.allbinary.game.health.HealthBarTwodAnimation_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type BuildingPropertiesFactory is tagged;
   type BuildingPropertiesFactory_Access is access all BuildingPropertiesFactory'Class;
   type BuildingPropertiesFactory_Access_Array is array (Natural range <>) of BuildingPropertiesFactory_Access;
   type BuildingPropertiesFactory_Access_Array_Access is access all BuildingPropertiesFactory_Access_Array;

   type BuildingPropertiesFactory is new Java_Object with record
      damageFloatersPaintableInterface : Paintable_Access;
   end record;
   instance : BuildingPropertiesFactory_Access;

   procedure Initialize (This : in out BuildingPropertiesFactory'Class);
   function Create return BuildingPropertiesFactory_Access;
   function getInstance return BuildingPropertiesFactory_Access;
   function getEfficiencyPerLevel (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return Integer;
   procedure getEfficiencyPerLevel (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access);
   function getDamageFloaters (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return DamageFloaters_Access;
   procedure getDamageFloaters (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access);
   function getHealthBar (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return Paintable_Access;
   procedure getHealthBar (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access);
   function getHashtable (This : in out BuildingPropertiesFactory) return ABHashtable_Access;
   function getTrackingEvent (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access) return TrackingEvent_Access;
   procedure getTrackingEvent (This : in out BuildingPropertiesFactory; buildingLayer : BuildingLayer_Access);

end org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;


