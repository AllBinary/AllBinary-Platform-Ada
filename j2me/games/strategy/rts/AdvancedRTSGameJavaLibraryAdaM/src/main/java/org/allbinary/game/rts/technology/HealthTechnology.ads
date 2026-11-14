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
limited with org.allbinary.game.rts.technology.HealthTechnology_Package;
package org.allbinary.game.rts.technology.HealthTechnology_Package_References is
   type HealthTechnology_Access is access all org.allbinary.game.rts.technology.HealthTechnology_Package.HealthTechnology'Class;
   type HealthTechnology_Access_Array is array (Natural range <>) of HealthTechnology_Access;
   type HealthTechnology_Access_Array_Access is access all HealthTechnology_Access_Array;
   type HealthTechnology_Access_Array_Access_Array is array (Natural range <>) of HealthTechnology_Access_Array_Access;
   type HealthTechnology_Access_Array_Access_Array_Access is access all HealthTechnology_Access_Array_Access_Array;
   type HealthTechnology_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthTechnology_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthTechnology_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthTechnology_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthTechnology_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthTechnology_Access_Array_Access is (if Value /= null and then Value.all in HealthTechnology_Access_Array_Object'Class then HealthTechnology_Access_Array_Object'Class (Value.all).Value else null);
   type HealthTechnology_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthTechnology_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthTechnology_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthTechnology_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthTechnology_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthTechnology_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HealthTechnology_Access_Array_Access_Array_Object'Class then HealthTechnology_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.rts.technology.HealthTechnology_Package_References;

with org.allbinary.game.rts.technology.HealthTechnology_Package_References;
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

   package RTSInterface_Package renames Standard.org.allbinary.game.layer.RTSInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HealthTechnology_Access is org.allbinary.game.rts.technology.HealthTechnology_Package_References.HealthTechnology_Access;
   function "=" (Left, Right : HealthTechnology_Access) return Boolean renames org.allbinary.game.rts.technology.HealthTechnology_Package_References."=";
   subtype HealthTechnology_Access_Array is org.allbinary.game.rts.technology.HealthTechnology_Package_References.HealthTechnology_Access_Array;
   function "=" (Left, Right : HealthTechnology_Access_Array) return Boolean renames org.allbinary.game.rts.technology.HealthTechnology_Package_References."=";
   subtype HealthTechnology_Access_Array_Access is org.allbinary.game.rts.technology.HealthTechnology_Package_References.HealthTechnology_Access_Array_Access;
   function "=" (Left, Right : HealthTechnology_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.HealthTechnology_Package_References."=";
   function Java_Box (Value : HealthTechnology_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.rts.technology.HealthTechnology_Package_References.Java_Box;
   function Java_Unbox_HealthTechnology_Access_Array (Value : access Java_Object'Class) return HealthTechnology_Access_Array_Access renames org.allbinary.game.rts.technology.HealthTechnology_Package_References.Java_Unbox_HealthTechnology_Access_Array;
   subtype HealthTechnology_Access_Array_Access_Array is org.allbinary.game.rts.technology.HealthTechnology_Package_References.HealthTechnology_Access_Array_Access_Array;
   function "=" (Left, Right : HealthTechnology_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rts.technology.HealthTechnology_Package_References."=";
   subtype HealthTechnology_Access_Array_Access_Array_Access is org.allbinary.game.rts.technology.HealthTechnology_Package_References.HealthTechnology_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthTechnology_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.HealthTechnology_Package_References."=";
   function Java_Box (Value : HealthTechnology_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.rts.technology.HealthTechnology_Package_References.Java_Box;
   function Java_Unbox_HealthTechnology_Access_Array_Access_Array (Value : access Java_Object'Class) return HealthTechnology_Access_Array_Access_Array_Access renames org.allbinary.game.rts.technology.HealthTechnology_Package_References.Java_Unbox_HealthTechnology_Access_Array_Access_Array;

   type HealthTechnology is new Java_Object and RTSInterface with record
      level : Integer;
      maxLevel : Integer;
   end record;

   procedure Initialize (This : in out HealthTechnology'Class; maxLevel : Integer);
   function Create (maxLevel : Integer) return HealthTechnology_Access;
   function isCompleted (This : in out HealthTechnology) return Boolean;
   function getPercentComplete (This : in out HealthTechnology) return Integer;
   function getLevel (This : in out HealthTechnology) return Integer;
   function getMaxLevel (This : in out HealthTechnology) return Integer;
   function getCost (This : in out HealthTechnology) return Integer;
   procedure downgrade (This : in out HealthTechnology);
   function getDowngradeCost (This : in out HealthTechnology) return Integer;
   function isDowngradeable (This : in out HealthTechnology) return Boolean;
   function getUpgradeCost (This : in out HealthTechnology) return Integer;
   function isUpgradeable (This : in out HealthTechnology) return Boolean;
   procedure upgrade (This : in out HealthTechnology);
   function isSelfUpgradeable (This : in out HealthTechnology) return Boolean;

end org.allbinary.game.rts.technology.HealthTechnology_Package;


