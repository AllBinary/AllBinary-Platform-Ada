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

with AllBinary_Java;
limited with org.allbinary.game.rts.technology.RepairTechnology_Package;
package org.allbinary.game.rts.technology.RepairTechnology_Package_References is
   type RepairTechnology_Access is access all org.allbinary.game.rts.technology.RepairTechnology_Package.RepairTechnology'Class;
   type RepairTechnology_Access_Array is array (Natural range <>) of RepairTechnology_Access;
   type RepairTechnology_Access_Array_Access is access all RepairTechnology_Access_Array;
   type RepairTechnology_Access_Array_Access_Array is array (Natural range <>) of RepairTechnology_Access_Array_Access;
   type RepairTechnology_Access_Array_Access_Array_Access is access all RepairTechnology_Access_Array_Access_Array;
   type RepairTechnology_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RepairTechnology_Access_Array_Access;
   end record;
   function Java_Box (Value : RepairTechnology_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RepairTechnology_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RepairTechnology_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RepairTechnology_Access_Array_Access is (if Value /= null and then Value.all in RepairTechnology_Access_Array_Object'Class then RepairTechnology_Access_Array_Object'Class (Value.all).Value else null);
   type RepairTechnology_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RepairTechnology_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RepairTechnology_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RepairTechnology_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RepairTechnology_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RepairTechnology_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RepairTechnology_Access_Array_Access_Array_Object'Class then RepairTechnology_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.rts.technology.RepairTechnology_Package_References;

with org.allbinary.game.rts.technology.RepairTechnology_Package_References;
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
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RepairTechnology_Access is org.allbinary.game.rts.technology.RepairTechnology_Package_References.RepairTechnology_Access;
   function "=" (Left, Right : RepairTechnology_Access) return Boolean renames org.allbinary.game.rts.technology.RepairTechnology_Package_References."=";
   subtype RepairTechnology_Access_Array is org.allbinary.game.rts.technology.RepairTechnology_Package_References.RepairTechnology_Access_Array;
   function "=" (Left, Right : RepairTechnology_Access_Array) return Boolean renames org.allbinary.game.rts.technology.RepairTechnology_Package_References."=";
   subtype RepairTechnology_Access_Array_Access is org.allbinary.game.rts.technology.RepairTechnology_Package_References.RepairTechnology_Access_Array_Access;
   function "=" (Left, Right : RepairTechnology_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.RepairTechnology_Package_References."=";
   function Java_Box (Value : RepairTechnology_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.rts.technology.RepairTechnology_Package_References.Java_Box;
   function Java_Unbox_RepairTechnology_Access_Array (Value : access Java_Object'Class) return RepairTechnology_Access_Array_Access renames org.allbinary.game.rts.technology.RepairTechnology_Package_References.Java_Unbox_RepairTechnology_Access_Array;
   subtype RepairTechnology_Access_Array_Access_Array is org.allbinary.game.rts.technology.RepairTechnology_Package_References.RepairTechnology_Access_Array_Access_Array;
   function "=" (Left, Right : RepairTechnology_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rts.technology.RepairTechnology_Package_References."=";
   subtype RepairTechnology_Access_Array_Access_Array_Access is org.allbinary.game.rts.technology.RepairTechnology_Package_References.RepairTechnology_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RepairTechnology_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.RepairTechnology_Package_References."=";
   function Java_Box (Value : RepairTechnology_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.rts.technology.RepairTechnology_Package_References.Java_Box;
   function Java_Unbox_RepairTechnology_Access_Array_Access_Array (Value : access Java_Object'Class) return RepairTechnology_Access_Array_Access_Array_Access renames org.allbinary.game.rts.technology.RepairTechnology_Package_References.Java_Unbox_RepairTechnology_Access_Array_Access_Array;

   type RepairTechnology is new Java_Object and RTSInterface with record
      level : Integer;
      maxLevel : Integer;
   end record;

   procedure Initialize (This : in out RepairTechnology'Class; maxLevel : Integer);
   function Create (maxLevel : Integer) return RepairTechnology_Access;
   function isCompleted (This : in out RepairTechnology) return Boolean;
   function getPercentComplete (This : in out RepairTechnology) return Integer;
   function getLevel (This : in out RepairTechnology) return Integer;
   function getMaxLevel (This : in out RepairTechnology) return Integer;
   function getCost (This : in out RepairTechnology) return Integer;
   procedure downgrade (This : in out RepairTechnology);
   function getDowngradeCost (This : in out RepairTechnology) return Integer;
   function isDowngradeable (This : in out RepairTechnology) return Boolean;
   function getUpgradeCost (This : in out RepairTechnology) return Integer;
   function isUpgradeable (This : in out RepairTechnology) return Boolean;
   procedure upgrade (This : in out RepairTechnology);
   function isSelfUpgradeable (This : in out RepairTechnology) return Boolean;

end org.allbinary.game.rts.technology.RepairTechnology_Package;


