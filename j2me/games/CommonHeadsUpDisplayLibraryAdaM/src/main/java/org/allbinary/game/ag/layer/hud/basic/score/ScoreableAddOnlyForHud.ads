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
with org.allbinary.game.score.Scoreable_Package; use org.allbinary.game.score.Scoreable_Package;
with org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package; use org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package;

package org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package is

   package Scoreable_Package renames Standard.org.allbinary.game.score.Scoreable_Package;

   type ScoreableAddOnlyForHud is tagged;
   type ScoreableAddOnlyForHud_Access is access all ScoreableAddOnlyForHud'Class;
   type ScoreableAddOnlyForHud_Access_Array is array (Natural range <>) of ScoreableAddOnlyForHud_Access;
   type ScoreableAddOnlyForHud_Access_Array_Access is access all ScoreableAddOnlyForHud_Access_Array;

   type ScoreableAddOnlyForHud is new Scoreable with record
      scoreHudWidget : ScoreHudWidget_Access;
   end record;

   procedure Initialize (This : in out ScoreableAddOnlyForHud'Class; scoreVectorGraphic_Param : access ScoreHudWidget_Package.ScoreHudWidget'Class);
   function Create (scoreVectorGraphic_Param : access ScoreHudWidget_Package.ScoreHudWidget'Class) return ScoreableAddOnlyForHud_Access;
   procedure removePoints (This : in out ScoreableAddOnlyForHud; points : Integer);
   procedure addPoints (This : in out ScoreableAddOnlyForHud; points : Integer);
   function getScoreHudWidget (This : in out ScoreableAddOnlyForHud) return ScoreHudWidget_Access;

end org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package;


