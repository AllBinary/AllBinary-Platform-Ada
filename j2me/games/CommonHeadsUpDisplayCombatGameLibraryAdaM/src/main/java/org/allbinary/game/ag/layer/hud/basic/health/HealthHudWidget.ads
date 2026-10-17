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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.NoTimeDelayHelper_Package; use org.allbinary.time.NoTimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package Health_Package renames Standard.org.allbinary.game.health.Health_Package;
   package HealthListenerInterface_Package renames Standard.org.allbinary.game.health.HealthListenerInterface_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package NoTimeDelayHelper_Package renames Standard.org.allbinary.time.NoTimeDelayHelper_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type HealthHudWidget is tagged;
   type HealthHudWidget_Access is access all HealthHudWidget'Class;
   type HealthHudWidget_Access_Array is array (Natural range <>) of HealthHudWidget_Access;
   type HealthHudWidget_Access_Array_Access is access all HealthHudWidget_Access_Array;

   type HealthHudWidget is new BasicHud and PaintableInterface and HealthListenerInterface with record
      healthScale : Integer;
      animationInterface : Animation_Access;
      healthInterface : Health_Access;
      max : Integer;
      xArray : Integer_Array_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      slowBeatTimeDelayHelper : TimeDelayHelper_Access;
      mediumBeatTimeDelayHelper : TimeDelayHelper_Access;
      fastBeatTimeDelayHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out HealthHudWidget'Class; animationInterface_Param : access Animation'Class; healthInterface_Param : access Health'Class; location : Integer; direction : Integer);
   function Create (animationInterface_Param : access Animation'Class; healthInterface_Param : access Health'Class; location : Integer; direction : Integer) return HealthHudWidget_Access;
   procedure update (This : in out HealthHudWidget);
   procedure setX (This : in out HealthHudWidget; x : Integer);
   procedure onHealthChange (This : in out HealthHudWidget);
   procedure paint (This : in out HealthHudWidget; graphics_Param : access Graphics'Class);
   procedure paintThreed (This : in out HealthHudWidget; graphics_Param : access Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package;


