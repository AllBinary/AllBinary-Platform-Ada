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

package org.allbinary.game.rts.technology.RepairTechnology_Package is

   package RTSInterface_Package renames Standard.org.allbinary.game.layer.RTSInterface_Package;

   type RepairTechnology is tagged;
   type RepairTechnology_Access is access all RepairTechnology'Class;
   type RepairTechnology_Access_Array is array (Natural range <>) of RepairTechnology_Access;
   type RepairTechnology_Access_Array_Access is access all RepairTechnology_Access_Array;

   type RepairTechnology is new RTSInterface with record
      level : Integer;
      maxLevel : Integer;
   end record;

   procedure Initialize (This : in out RepairTechnology'Class; maxLevel : Integer);
   function Create (maxLevel : Integer) return RepairTechnology_Access;
   function isCompleted (This : in out RepairTechnology) return Boolean;
   procedure isCompleted (This : in out RepairTechnology);
   function getPercentComplete (This : in out RepairTechnology) return Integer;
   procedure getPercentComplete (This : in out RepairTechnology);
   function getLevel (This : in out RepairTechnology) return Integer;
   procedure getLevel (This : in out RepairTechnology);
   function getMaxLevel (This : in out RepairTechnology) return Integer;
   procedure getMaxLevel (This : in out RepairTechnology);
   function getCost (This : in out RepairTechnology) return Integer;
   procedure getCost (This : in out RepairTechnology);
   procedure downgrade (This : in out RepairTechnology);
   function getDowngradeCost (This : in out RepairTechnology) return Integer;
   procedure getDowngradeCost (This : in out RepairTechnology);
   function isDowngradeable (This : in out RepairTechnology) return Boolean;
   procedure isDowngradeable (This : in out RepairTechnology);
   function getUpgradeCost (This : in out RepairTechnology) return Integer;
   procedure getUpgradeCost (This : in out RepairTechnology);
   function isUpgradeable (This : in out RepairTechnology) return Boolean;
   procedure isUpgradeable (This : in out RepairTechnology);
   procedure upgrade (This : in out RepairTechnology);
   function isSelfUpgradeable (This : in out RepairTechnology) return Boolean;
   procedure isSelfUpgradeable (This : in out RepairTechnology);

end org.allbinary.game.rts.technology.RepairTechnology_Package;


