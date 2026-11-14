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
limited with org.allbinary.input.automation.module.game.skill.GameSkillType_Package;
package org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References is
   type GameSkillType_Access is access all org.allbinary.input.automation.module.game.skill.GameSkillType_Package.GameSkillType'Class;
   type GameSkillType_Access_Array is array (Natural range <>) of GameSkillType_Access;
   type GameSkillType_Access_Array_Access is access all GameSkillType_Access_Array;
   type GameSkillType_Access_Array_Access_Array is array (Natural range <>) of GameSkillType_Access_Array_Access;
   type GameSkillType_Access_Array_Access_Array_Access is access all GameSkillType_Access_Array_Access_Array;
   type GameSkillType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameSkillType_Access_Array_Access;
   end record;
   function Java_Box (Value : GameSkillType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameSkillType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameSkillType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameSkillType_Access_Array_Access is (if Value /= null and then Value.all in GameSkillType_Access_Array_Object'Class then GameSkillType_Access_Array_Object'Class (Value.all).Value else null);
   type GameSkillType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameSkillType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameSkillType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameSkillType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameSkillType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameSkillType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameSkillType_Access_Array_Access_Array_Object'Class then GameSkillType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References;

with org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.module.game.skill.GameSkillType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameSkillType_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access;
   function "=" (Left, Right : GameSkillType_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   subtype GameSkillType_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array;
   function "=" (Left, Right : GameSkillType_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   subtype GameSkillType_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access;
   function "=" (Left, Right : GameSkillType_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   function Java_Box (Value : GameSkillType_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.Java_Box;
   function Java_Unbox_GameSkillType_Access_Array (Value : access Java_Object'Class) return GameSkillType_Access_Array_Access renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.Java_Unbox_GameSkillType_Access_Array;
   subtype GameSkillType_Access_Array_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access_Array;
   function "=" (Left, Right : GameSkillType_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   subtype GameSkillType_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameSkillType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   function Java_Box (Value : GameSkillType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.Java_Box;
   function Java_Unbox_GameSkillType_Access_Array_Access_Array (Value : access Java_Object'Class) return GameSkillType_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.Java_Unbox_GameSkillType_Access_Array_Access_Array;

   type GameSkillType is new Java_Object with record
      SPELL_GAME_SKILL_TYPE : Unbounded_String;
      name : Unbounded_String;
   end record;
   MANA : GameSkillType_Access;
   REPLENISH : GameSkillType_Access;
   TIMED : GameSkillType_Access;
   ATTACK : GameSkillType_Access;
   TRANSPORT : GameSkillType_Access;

   procedure Initialize (This : in out GameSkillType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return GameSkillType_Access;
   function getName (This : in out GameSkillType) return Unbounded_String;
   procedure setName (This : in out GameSkillType; name : Unbounded_String);
   function toString (This : in out GameSkillType) return Unbounded_String;

end org.allbinary.input.automation.module.game.skill.GameSkillType_Package;


