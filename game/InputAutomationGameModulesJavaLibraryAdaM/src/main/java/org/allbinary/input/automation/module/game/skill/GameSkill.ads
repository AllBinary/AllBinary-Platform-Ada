--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
limited with org.allbinary.input.automation.module.game.skill.GameSkill_Package;
package org.allbinary.input.automation.module.game.skill.GameSkill_Package_References is
   type GameSkill_Access is access all org.allbinary.input.automation.module.game.skill.GameSkill_Package.GameSkill'Class;
   type GameSkill_Access_Array is array (Natural range <>) of GameSkill_Access;
   type GameSkill_Access_Array_Access is access all GameSkill_Access_Array;
   type GameSkill_Access_Array_Access_Array is array (Natural range <>) of GameSkill_Access_Array_Access;
   type GameSkill_Access_Array_Access_Array_Access is access all GameSkill_Access_Array_Access_Array;
   type GameSkill_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameSkill_Access_Array_Access;
   end record;
   function Java_Box (Value : GameSkill_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameSkill_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameSkill_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameSkill_Access_Array_Access is (if Value /= null and then Value.all in GameSkill_Access_Array_Object'Class then GameSkill_Access_Array_Object'Class (Value.all).Value else null);
   type GameSkill_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameSkill_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameSkill_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameSkill_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameSkill_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameSkill_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameSkill_Access_Array_Access_Array_Object'Class then GameSkill_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.game.skill.GameSkill_Package_References;

with org.allbinary.input.automation.module.game.skill.GameSkill_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.input.automation.module.game.skill.GameSkillType_Package;
with org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References;
limited with org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package;
with org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References;

package org.allbinary.input.automation.module.game.skill.GameSkill_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype GameSkillType_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access;
   use type GameSkillType_Access;
   subtype GameSkillType_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array;
   use type GameSkillType_Access_Array;
   subtype GameSkillType_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access;
   use type GameSkillType_Access_Array_Access;
   subtype GameSkillType_Access_Array_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access_Array;
   use type GameSkillType_Access_Array_Access_Array;
   subtype GameSkillType_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access_Array_Access;
   use type GameSkillType_Access_Array_Access_Array_Access;
   subtype GameSkillPropertyInterface_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access;
   use type GameSkillPropertyInterface_Access;
   subtype GameSkillPropertyInterface_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array;
   use type GameSkillPropertyInterface_Access_Array;
   subtype GameSkillPropertyInterface_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access;
   use type GameSkillPropertyInterface_Access_Array_Access;
   subtype GameSkillPropertyInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access_Array;
   use type GameSkillPropertyInterface_Access_Array_Access_Array;
   subtype GameSkillPropertyInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access_Array_Access;
   use type GameSkillPropertyInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameSkill_Access is org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.GameSkill_Access;
   function "=" (Left, Right : GameSkill_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References."=";
   subtype GameSkill_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.GameSkill_Access_Array;
   function "=" (Left, Right : GameSkill_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References."=";
   subtype GameSkill_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.GameSkill_Access_Array_Access;
   function "=" (Left, Right : GameSkill_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References."=";
   function Java_Box (Value : GameSkill_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.Java_Box;
   function Java_Unbox_GameSkill_Access_Array (Value : access Java_Object'Class) return GameSkill_Access_Array_Access renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.Java_Unbox_GameSkill_Access_Array;
   subtype GameSkill_Access_Array_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.GameSkill_Access_Array_Access_Array;
   function "=" (Left, Right : GameSkill_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References."=";
   subtype GameSkill_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.GameSkill_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameSkill_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References."=";
   function Java_Box (Value : GameSkill_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.Java_Box;
   function Java_Unbox_GameSkill_Access_Array_Access_Array (Value : access Java_Object'Class) return GameSkill_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.game.skill.GameSkill_Package_References.Java_Unbox_GameSkill_Access_Array_Access_Array;

   type GameSkill is new Java_Object with record
      gameSkillType : GameSkillType_Access;
      extra : Unbounded_String;
      time : Integer;
      vector : BasicArrayList_Access;
      GAME_SKILL_LABEL : Unbounded_String;
      EXTRA_LABEL : Unbounded_String;
      TIME_LABEL : Unbounded_String;
   end record;
   hashMap : HashMap_Access;

   procedure Initialize (This : in out GameSkill'Class; gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class; extra : Unbounded_String; time : Integer);
   function Create (gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class; extra : Unbounded_String; time : Integer) return GameSkill_Access;
   function getGameSkillType (This : in out GameSkill) return GameSkillType_Access;
   procedure setGameSkillType (This : in out GameSkill; gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class);
   function getExtra (This : in out GameSkill) return Unbounded_String;
   procedure setExtra (This : in out GameSkill; extra : Unbounded_String);
   function getTime (This : in out GameSkill) return Integer;
   procedure setTime (This : in out GameSkill; time : Integer);
   procedure addProperty (This : in out GameSkill; gameSkillPropertyInterface_Param : access GameSkillPropertyInterface_Package.GameSkillPropertyInterface'Class);
   function getProperties (This : in out GameSkill) return BasicArrayList_Access;
   function getInstance (gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class; extra : Unbounded_String) return GameSkill_Access;
   procedure getInstance (gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class; extra : Unbounded_String);
   function toString (This : in out GameSkill) return Unbounded_String;

end org.allbinary.input.automation.module.game.skill.GameSkill_Package;


