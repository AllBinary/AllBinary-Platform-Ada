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

package org.allbinary.game.rts.technology.SpeedTechnology_Package is

   package RTSInterface_Package renames org.allbinary.game.layer.RTSInterface_Package;

   type SpeedTechnology is tagged;
   type SpeedTechnology_Access is access all SpeedTechnology'Class;
   type SpeedTechnology_Access_Array is array (Natural range <>) of SpeedTechnology_Access;
   type SpeedTechnology_Access_Array_Access is access all SpeedTechnology_Access_Array;

   type SpeedTechnology is new RTSInterface with record
      level : Integer;
      maxLevel : Integer;
   end record;

   procedure Initialize (This : in out SpeedTechnology'Class; maxLevel : Integer);
   function Create (maxLevel : Integer) return SpeedTechnology_Access;
   function isCompleted (This : in out SpeedTechnology) return Boolean;
   procedure isCompleted (This : in out SpeedTechnology);
   function getPercentComplete (This : in out SpeedTechnology) return Integer;
   procedure getPercentComplete (This : in out SpeedTechnology);
   function getLevel (This : in out SpeedTechnology) return Integer;
   procedure getLevel (This : in out SpeedTechnology);
   function getMaxLevel (This : in out SpeedTechnology) return Integer;
   procedure getMaxLevel (This : in out SpeedTechnology);
   function getCost (This : in out SpeedTechnology) return Integer;
   procedure getCost (This : in out SpeedTechnology);
   procedure downgrade (This : in out SpeedTechnology);
   function getDowngradeCost (This : in out SpeedTechnology) return Integer;
   procedure getDowngradeCost (This : in out SpeedTechnology);
   function isDowngradeable (This : in out SpeedTechnology) return Boolean;
   procedure isDowngradeable (This : in out SpeedTechnology);
   function getUpgradeCost (This : in out SpeedTechnology) return Integer;
   procedure getUpgradeCost (This : in out SpeedTechnology);
   function isUpgradeable (This : in out SpeedTechnology) return Boolean;
   procedure isUpgradeable (This : in out SpeedTechnology);
   procedure upgrade (This : in out SpeedTechnology);
   function isSelfUpgradeable (This : in out SpeedTechnology) return Boolean;
   procedure isSelfUpgradeable (This : in out SpeedTechnology);

end org.allbinary.game.rts.technology.SpeedTechnology_Package;


