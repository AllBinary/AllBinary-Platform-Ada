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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;

package org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package is

   package NumberStringHud_Package renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;

   type ScoreHudWidget is tagged;
   type ScoreHudWidget_Access is access all ScoreHudWidget'Class;
   type ScoreHudWidget_Access_Array is array (Natural range <>) of ScoreHudWidget_Access;
   type ScoreHudWidget_Access_Array_Access is access all ScoreHudWidget_Access_Array;

   type ScoreHudWidget is new NumberStringHud with null record;

   procedure Initialize (This : in out ScoreHudWidget'Class; maxscore : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor : BasicColor_Access);
   function Create (maxscore : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor : BasicColor_Access) return ScoreHudWidget_Access;
   function getInstance (maxscore : Integer; location : Integer; direction : Integer) return ScoreHudWidget_Access;
   procedure getInstance (maxscore : Integer; location : Integer; direction : Integer);
   procedure updateMeasurement (This : in out ScoreHudWidget; graphics : Graphics_Access);

end org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package;


