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

limited with org.allbinary.game.rts.technology.SpeedTechnology_Package;
package org.allbinary.game.rts.technology.SpeedTechnology_Package_References is
   type SpeedTechnology_Access is access all org.allbinary.game.rts.technology.SpeedTechnology_Package.SpeedTechnology'Class;
   type SpeedTechnology_Access_Array is array (Natural range <>) of SpeedTechnology_Access;
   type SpeedTechnology_Access_Array_Access is access all SpeedTechnology_Access_Array;
   type SpeedTechnology_Access_Array_Access_Array is array (Natural range <>) of SpeedTechnology_Access_Array_Access;
   type SpeedTechnology_Access_Array_Access_Array_Access is access all SpeedTechnology_Access_Array_Access_Array;
end org.allbinary.game.rts.technology.SpeedTechnology_Package_References;

with org.allbinary.game.rts.technology.SpeedTechnology_Package_References;
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

   package RTSInterface_Package renames Standard.org.allbinary.game.layer.RTSInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SpeedTechnology_Access is org.allbinary.game.rts.technology.SpeedTechnology_Package_References.SpeedTechnology_Access;
   function "=" (Left, Right : SpeedTechnology_Access) return Boolean renames org.allbinary.game.rts.technology.SpeedTechnology_Package_References."=";
   subtype SpeedTechnology_Access_Array is org.allbinary.game.rts.technology.SpeedTechnology_Package_References.SpeedTechnology_Access_Array;
   function "=" (Left, Right : SpeedTechnology_Access_Array) return Boolean renames org.allbinary.game.rts.technology.SpeedTechnology_Package_References."=";
   subtype SpeedTechnology_Access_Array_Access is org.allbinary.game.rts.technology.SpeedTechnology_Package_References.SpeedTechnology_Access_Array_Access;
   function "=" (Left, Right : SpeedTechnology_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.SpeedTechnology_Package_References."=";
   subtype SpeedTechnology_Access_Array_Access_Array is org.allbinary.game.rts.technology.SpeedTechnology_Package_References.SpeedTechnology_Access_Array_Access_Array;
   function "=" (Left, Right : SpeedTechnology_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rts.technology.SpeedTechnology_Package_References."=";
   subtype SpeedTechnology_Access_Array_Access_Array_Access is org.allbinary.game.rts.technology.SpeedTechnology_Package_References.SpeedTechnology_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpeedTechnology_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.SpeedTechnology_Package_References."=";

   type SpeedTechnology is new Java_Object and RTSInterface with record
      level : Integer;
      maxLevel : Integer;
   end record;

   procedure Initialize (This : in out SpeedTechnology'Class; maxLevel : Integer);
   function Create (maxLevel : Integer) return SpeedTechnology_Access;
   function isCompleted (This : in out SpeedTechnology) return Boolean;
   function getPercentComplete (This : in out SpeedTechnology) return Integer;
   function getLevel (This : in out SpeedTechnology) return Integer;
   function getMaxLevel (This : in out SpeedTechnology) return Integer;
   function getCost (This : in out SpeedTechnology) return Integer;
   procedure downgrade (This : in out SpeedTechnology);
   function getDowngradeCost (This : in out SpeedTechnology) return Integer;
   function isDowngradeable (This : in out SpeedTechnology) return Boolean;
   function getUpgradeCost (This : in out SpeedTechnology) return Integer;
   function isUpgradeable (This : in out SpeedTechnology) return Boolean;
   procedure upgrade (This : in out SpeedTechnology);
   function isSelfUpgradeable (This : in out SpeedTechnology) return Boolean;

end org.allbinary.game.rts.technology.SpeedTechnology_Package;


