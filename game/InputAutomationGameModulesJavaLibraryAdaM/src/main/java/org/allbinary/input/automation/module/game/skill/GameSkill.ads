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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.input.automation.module.game.skill.GameSkillType_Package; use org.allbinary.input.automation.module.game.skill.GameSkillType_Package;
with org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package; use org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package;

package org.allbinary.input.automation.module.game.skill.GameSkill_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type GameSkill is tagged;
   type GameSkill_Access is access all GameSkill'Class;
   type GameSkill_Access_Array is array (Natural range <>) of GameSkill_Access;
   type GameSkill_Access_Array_Access is access all GameSkill_Access_Array;

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


