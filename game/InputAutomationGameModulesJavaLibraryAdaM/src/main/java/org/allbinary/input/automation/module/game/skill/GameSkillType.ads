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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.module.game.skill.GameSkillType_Package is


   type GameSkillType is tagged;
   type GameSkillType_Access is access all GameSkillType'Class;
   type GameSkillType_Access_Array is array (Natural range <>) of GameSkillType_Access;
   type GameSkillType_Access_Array_Access is access all GameSkillType_Access_Array;
   type GameSkillType_Access_Array_Access_Array is array (Natural range <>) of GameSkillType_Access_Array_Access;
   type GameSkillType_Access_Array_Access_Array_Access is access all GameSkillType_Access_Array_Access_Array;

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


