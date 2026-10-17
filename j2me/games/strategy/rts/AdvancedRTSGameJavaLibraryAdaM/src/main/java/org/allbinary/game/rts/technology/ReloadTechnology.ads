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

package org.allbinary.game.rts.technology.ReloadTechnology_Package is

   package RTSInterface_Package renames Standard.org.allbinary.game.layer.RTSInterface_Package;

   type ReloadTechnology is tagged;
   type ReloadTechnology_Access is access all ReloadTechnology'Class;
   type ReloadTechnology_Access_Array is array (Natural range <>) of ReloadTechnology_Access;
   type ReloadTechnology_Access_Array_Access is access all ReloadTechnology_Access_Array;

   type ReloadTechnology is new RTSInterface with record
      level : Integer;
      maxLevel : Integer;
   end record;

   procedure Initialize (This : in out ReloadTechnology'Class; maxLevel : Integer);
   function Create (maxLevel : Integer) return ReloadTechnology_Access;
   function isCompleted (This : in out ReloadTechnology) return Boolean;
   function getPercentComplete (This : in out ReloadTechnology) return Integer;
   function getLevel (This : in out ReloadTechnology) return Integer;
   function getMaxLevel (This : in out ReloadTechnology) return Integer;
   function getCost (This : in out ReloadTechnology) return Integer;
   procedure downgrade (This : in out ReloadTechnology);
   function getDowngradeCost (This : in out ReloadTechnology) return Integer;
   function isDowngradeable (This : in out ReloadTechnology) return Boolean;
   function getUpgradeCost (This : in out ReloadTechnology) return Integer;
   function isUpgradeable (This : in out ReloadTechnology) return Boolean;
   procedure upgrade (This : in out ReloadTechnology);
   function isSelfUpgradeable (This : in out ReloadTechnology) return Boolean;

end org.allbinary.game.rts.technology.ReloadTechnology_Package;


