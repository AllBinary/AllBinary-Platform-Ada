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
with org.allbinary.game.rts.technology.UnitTechnologySingletonFactory_Package; use org.allbinary.game.rts.technology.UnitTechnologySingletonFactory_Package;

package org.allbinary.game.rts.technology.DamageTechnology_Package is

   package RTSInterface_Package renames Standard.org.allbinary.game.layer.RTSInterface_Package;

   type DamageTechnology is tagged;
   type DamageTechnology_Access is access all DamageTechnology'Class;
   type DamageTechnology_Access_Array is array (Natural range <>) of DamageTechnology_Access;
   type DamageTechnology_Access_Array_Access is access all DamageTechnology_Access_Array;

   type DamageTechnology is new RTSInterface with record
      level : Integer;
      maxLevel : Integer;
   end record;

   procedure Initialize (This : in out DamageTechnology'Class; maxLevel : Integer);
   function Create (maxLevel : Integer) return DamageTechnology_Access;
   function isCompleted (This : in out DamageTechnology) return Boolean;
   function getPercentComplete (This : in out DamageTechnology) return Integer;
   function getLevel (This : in out DamageTechnology) return Integer;
   function getMaxLevel (This : in out DamageTechnology) return Integer;
   function getCost (This : in out DamageTechnology) return Integer;
   procedure downgrade (This : in out DamageTechnology);
   function getDowngradeCost (This : in out DamageTechnology) return Integer;
   function isDowngradeable (This : in out DamageTechnology) return Boolean;
   function getUpgradeCost (This : in out DamageTechnology) return Integer;
   function isUpgradeable (This : in out DamageTechnology) return Boolean;
   procedure upgrade (This : in out DamageTechnology);
   function isSelfUpgradeable (This : in out DamageTechnology) return Boolean;

end org.allbinary.game.rts.technology.DamageTechnology_Package;


