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
limited with org.allbinary.game.rts.technology.ReloadTechnology_Package;
package org.allbinary.game.rts.technology.ReloadTechnology_Package_References is
   type ReloadTechnology_Access is access all org.allbinary.game.rts.technology.ReloadTechnology_Package.ReloadTechnology'Class;
   type ReloadTechnology_Access_Array is array (Natural range <>) of ReloadTechnology_Access;
   type ReloadTechnology_Access_Array_Access is access all ReloadTechnology_Access_Array;
   type ReloadTechnology_Access_Array_Access_Array is array (Natural range <>) of ReloadTechnology_Access_Array_Access;
   type ReloadTechnology_Access_Array_Access_Array_Access is access all ReloadTechnology_Access_Array_Access_Array;
   type ReloadTechnology_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ReloadTechnology_Access_Array_Access;
   end record;
   function Java_Box (Value : ReloadTechnology_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ReloadTechnology_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ReloadTechnology_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ReloadTechnology_Access_Array_Access is (if Value /= null and then Value.all in ReloadTechnology_Access_Array_Object'Class then ReloadTechnology_Access_Array_Object'Class (Value.all).Value else null);
   type ReloadTechnology_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ReloadTechnology_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ReloadTechnology_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ReloadTechnology_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ReloadTechnology_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ReloadTechnology_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ReloadTechnology_Access_Array_Access_Array_Object'Class then ReloadTechnology_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.rts.technology.ReloadTechnology_Package_References;

with org.allbinary.game.rts.technology.ReloadTechnology_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.RTSInterface_Package; use org.allbinary.game.layer.RTSInterface_Package;

package org.allbinary.game.rts.technology.ReloadTechnology_Package is

   package RTSInterface_Package renames Standard.org.allbinary.game.layer.RTSInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ReloadTechnology_Access is org.allbinary.game.rts.technology.ReloadTechnology_Package_References.ReloadTechnology_Access;
   function "=" (Left, Right : ReloadTechnology_Access) return Boolean renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References."=";
   subtype ReloadTechnology_Access_Array is org.allbinary.game.rts.technology.ReloadTechnology_Package_References.ReloadTechnology_Access_Array;
   function "=" (Left, Right : ReloadTechnology_Access_Array) return Boolean renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References."=";
   subtype ReloadTechnology_Access_Array_Access is org.allbinary.game.rts.technology.ReloadTechnology_Package_References.ReloadTechnology_Access_Array_Access;
   function "=" (Left, Right : ReloadTechnology_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References."=";
   function Java_Box (Value : ReloadTechnology_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References.Java_Box;
   function Java_Unbox_ReloadTechnology_Access_Array (Value : access Java_Object'Class) return ReloadTechnology_Access_Array_Access renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References.Java_Unbox_ReloadTechnology_Access_Array;
   subtype ReloadTechnology_Access_Array_Access_Array is org.allbinary.game.rts.technology.ReloadTechnology_Package_References.ReloadTechnology_Access_Array_Access_Array;
   function "=" (Left, Right : ReloadTechnology_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References."=";
   subtype ReloadTechnology_Access_Array_Access_Array_Access is org.allbinary.game.rts.technology.ReloadTechnology_Package_References.ReloadTechnology_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ReloadTechnology_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References."=";
   function Java_Box (Value : ReloadTechnology_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References.Java_Box;
   function Java_Unbox_ReloadTechnology_Access_Array_Access_Array (Value : access Java_Object'Class) return ReloadTechnology_Access_Array_Access_Array_Access renames org.allbinary.game.rts.technology.ReloadTechnology_Package_References.Java_Unbox_ReloadTechnology_Access_Array_Access_Array;

   type ReloadTechnology is new Java_Object and RTSInterface with record
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


