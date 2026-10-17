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
with org.allbinary.game.layer.RTSInterface_Package; use org.allbinary.game.layer.RTSInterface_Package;

package org.allbinary.game.rts.technology.HealthTechnology_Package is

   package RTSInterface_Package renames org.allbinary.game.layer.RTSInterface_Package;

   type HealthTechnology is tagged;
   type HealthTechnology_Access is access all HealthTechnology'Class;
   type HealthTechnology_Access_Array is array (Natural range <>) of HealthTechnology_Access;
   type HealthTechnology_Access_Array_Access is access all HealthTechnology_Access_Array;

   type HealthTechnology is new RTSInterface with record
      level : Integer;
      maxLevel : Integer;
   end record;

   procedure Initialize (This : in out HealthTechnology'Class; maxLevel : Integer);
   function Create (maxLevel : Integer) return HealthTechnology_Access;
   function isCompleted (This : in out HealthTechnology) return Boolean;
   procedure isCompleted (This : in out HealthTechnology);
   function getPercentComplete (This : in out HealthTechnology) return Integer;
   procedure getPercentComplete (This : in out HealthTechnology);
   function getLevel (This : in out HealthTechnology) return Integer;
   procedure getLevel (This : in out HealthTechnology);
   function getMaxLevel (This : in out HealthTechnology) return Integer;
   procedure getMaxLevel (This : in out HealthTechnology);
   function getCost (This : in out HealthTechnology) return Integer;
   procedure getCost (This : in out HealthTechnology);
   procedure downgrade (This : in out HealthTechnology);
   function getDowngradeCost (This : in out HealthTechnology) return Integer;
   procedure getDowngradeCost (This : in out HealthTechnology);
   function isDowngradeable (This : in out HealthTechnology) return Boolean;
   procedure isDowngradeable (This : in out HealthTechnology);
   function getUpgradeCost (This : in out HealthTechnology) return Integer;
   procedure getUpgradeCost (This : in out HealthTechnology);
   function isUpgradeable (This : in out HealthTechnology) return Boolean;
   procedure isUpgradeable (This : in out HealthTechnology);
   procedure upgrade (This : in out HealthTechnology);
   function isSelfUpgradeable (This : in out HealthTechnology) return Boolean;
   procedure isSelfUpgradeable (This : in out HealthTechnology);

end org.allbinary.game.rts.technology.HealthTechnology_Package;


