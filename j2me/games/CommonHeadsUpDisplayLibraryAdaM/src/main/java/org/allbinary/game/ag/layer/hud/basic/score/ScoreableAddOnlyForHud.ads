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

limited with org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package;
package org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References is
   type ScoreableAddOnlyForHud_Access is access all org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package.ScoreableAddOnlyForHud'Class;
   type ScoreableAddOnlyForHud_Access_Array is array (Natural range <>) of ScoreableAddOnlyForHud_Access;
   type ScoreableAddOnlyForHud_Access_Array_Access is access all ScoreableAddOnlyForHud_Access_Array;
   type ScoreableAddOnlyForHud_Access_Array_Access_Array is array (Natural range <>) of ScoreableAddOnlyForHud_Access_Array_Access;
   type ScoreableAddOnlyForHud_Access_Array_Access_Array_Access is access all ScoreableAddOnlyForHud_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References;

with org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.score.Scoreable_Package; use org.allbinary.game.score.Scoreable_Package;
limited with org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package;
with org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References;

package org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package is

   package Scoreable_Package renames Standard.org.allbinary.game.score.Scoreable_Package;
   package Reference_Types is
   subtype ScoreHudWidget_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access;
   use type ScoreHudWidget_Access;
   subtype ScoreHudWidget_Access_Array is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array;
   use type ScoreHudWidget_Access_Array;
   subtype ScoreHudWidget_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access;
   use type ScoreHudWidget_Access_Array_Access;
   subtype ScoreHudWidget_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access_Array;
   use type ScoreHudWidget_Access_Array_Access_Array;
   subtype ScoreHudWidget_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access_Array_Access;
   use type ScoreHudWidget_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScoreableAddOnlyForHud_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References.ScoreableAddOnlyForHud_Access;
   function "=" (Left, Right : ScoreableAddOnlyForHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References."=";
   subtype ScoreableAddOnlyForHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References.ScoreableAddOnlyForHud_Access_Array;
   function "=" (Left, Right : ScoreableAddOnlyForHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References."=";
   subtype ScoreableAddOnlyForHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References.ScoreableAddOnlyForHud_Access_Array_Access;
   function "=" (Left, Right : ScoreableAddOnlyForHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References."=";
   subtype ScoreableAddOnlyForHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References.ScoreableAddOnlyForHud_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreableAddOnlyForHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References."=";
   subtype ScoreableAddOnlyForHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References.ScoreableAddOnlyForHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreableAddOnlyForHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package_References."=";

   type ScoreableAddOnlyForHud is new Scoreable with record
      scoreHudWidget : ScoreHudWidget_Access;
   end record;

   procedure Initialize (This : in out ScoreableAddOnlyForHud'Class; scoreVectorGraphic_Param : access ScoreHudWidget_Package.ScoreHudWidget'Class);
   function Create (scoreVectorGraphic_Param : access ScoreHudWidget_Package.ScoreHudWidget'Class) return ScoreableAddOnlyForHud_Access;
   procedure removePoints (This : in out ScoreableAddOnlyForHud; points : Integer);
   procedure addPoints (This : in out ScoreableAddOnlyForHud; points : Integer);
   function getScoreHudWidget (This : in out ScoreableAddOnlyForHud) return ScoreHudWidget_Access;

end org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package;


