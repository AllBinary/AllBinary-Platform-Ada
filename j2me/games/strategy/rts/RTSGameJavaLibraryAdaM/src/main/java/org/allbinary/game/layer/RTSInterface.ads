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

package org.allbinary.game.layer.RTSInterface_Package is


   type RTSInterface is interface;
   type RTSInterface_Access is access all RTSInterface'Class;
   type RTSInterface_Access_Array is array (Natural range <>) of RTSInterface_Access;
   type RTSInterface_Access_Array_Access is access all RTSInterface_Access_Array;
   type RTSInterface_Access_Array_Access_Array is array (Natural range <>) of RTSInterface_Access_Array_Access;
   type RTSInterface_Access_Array_Access_Array_Access is access all RTSInterface_Access_Array_Access_Array;
   function isSelfUpgradeable (This : in out RTSInterface) return Boolean is abstract;
   function isCompleted (This : in out RTSInterface) return Boolean is abstract;
   function getPercentComplete (This : in out RTSInterface) return Integer is abstract;
   function getLevel (This : in out RTSInterface) return Integer is abstract;
   function getMaxLevel (This : in out RTSInterface) return Integer is abstract;
   function getCost (This : in out RTSInterface) return Integer is abstract;
   procedure downgrade (This : in out RTSInterface) is abstract;
   function getDowngradeCost (This : in out RTSInterface) return Integer is abstract;
   function isDowngradeable (This : in out RTSInterface) return Boolean is abstract;
   function getUpgradeCost (This : in out RTSInterface) return Integer is abstract;
   function isUpgradeable (This : in out RTSInterface) return Boolean is abstract;
   procedure upgrade (This : in out RTSInterface) is abstract;

end org.allbinary.game.layer.RTSInterface_Package;


