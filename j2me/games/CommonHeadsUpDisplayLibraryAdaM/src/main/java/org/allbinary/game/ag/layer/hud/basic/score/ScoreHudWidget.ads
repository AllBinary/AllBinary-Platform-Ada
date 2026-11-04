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

limited with org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package;
package org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References is
   type ScoreHudWidget_Access is access all org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package.ScoreHudWidget'Class;
   type ScoreHudWidget_Access_Array is array (Natural range <>) of ScoreHudWidget_Access;
   type ScoreHudWidget_Access_Array_Access is access all ScoreHudWidget_Access_Array;
   type ScoreHudWidget_Access_Array_Access_Array is array (Natural range <>) of ScoreHudWidget_Access_Array_Access;
   type ScoreHudWidget_Access_Array_Access_Array_Access is access all ScoreHudWidget_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References;

with org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package NumberStringHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScoreHudWidget_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access;
   function "=" (Left, Right : ScoreHudWidget_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   subtype ScoreHudWidget_Access_Array is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array;
   function "=" (Left, Right : ScoreHudWidget_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   subtype ScoreHudWidget_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access;
   function "=" (Left, Right : ScoreHudWidget_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   subtype ScoreHudWidget_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreHudWidget_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";
   subtype ScoreHudWidget_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References.ScoreHudWidget_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreHudWidget_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package_References."=";

   type ScoreHudWidget is new NumberStringHud with null record;

   procedure Initialize (This : in out ScoreHudWidget'Class; maxscore : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (maxscore : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return ScoreHudWidget_Access;
   function getInstance (maxscore : Integer; location : Integer; direction : Integer) return ScoreHudWidget_Access;
   procedure getInstance (maxscore : Integer; location : Integer; direction : Integer);
   procedure updateMeasurement (This : in out ScoreHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package;


