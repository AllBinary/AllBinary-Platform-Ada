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
limited with org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package;
package org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References is
   type HealthHudWidget_Access is access all org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package.HealthHudWidget'Class;
   type HealthHudWidget_Access_Array is array (Natural range <>) of HealthHudWidget_Access;
   type HealthHudWidget_Access_Array_Access is access all HealthHudWidget_Access_Array;
   type HealthHudWidget_Access_Array_Access_Array is array (Natural range <>) of HealthHudWidget_Access_Array_Access;
   type HealthHudWidget_Access_Array_Access_Array_Access is access all HealthHudWidget_Access_Array_Access_Array;
   type HealthHudWidget_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthHudWidget_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthHudWidget_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthHudWidget_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthHudWidget_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthHudWidget_Access_Array_Access is (if Value /= null and then Value.all in HealthHudWidget_Access_Array_Object'Class then HealthHudWidget_Access_Array_Object'Class (Value.all).Value else null);
   type HealthHudWidget_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthHudWidget_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthHudWidget_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthHudWidget_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthHudWidget_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthHudWidget_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HealthHudWidget_Access_Array_Access_Array_Object'Class then HealthHudWidget_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References;

with org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
limited with org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.Health_Package_References;
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
limited with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package Health_Package renames Standard.org.allbinary.game.health.Health_Package;
   package HealthListenerInterface_Package renames Standard.org.allbinary.game.health.HealthListenerInterface_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype Health_Access is org.allbinary.game.health.Health_Package_References.Health_Access;
   use type Health_Access;
   subtype Health_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array;
   use type Health_Access_Array;
   subtype Health_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access;
   use type Health_Access_Array_Access;
   subtype Health_Access_Array_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array;
   use type Health_Access_Array_Access_Array;
   subtype Health_Access_Array_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array_Access;
   use type Health_Access_Array_Access_Array_Access;
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   use type GameTickTimeDelayHelper_Access;
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealthHudWidget_Access is org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.HealthHudWidget_Access;
   function "=" (Left, Right : HealthHudWidget_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References."=";
   subtype HealthHudWidget_Access_Array is org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.HealthHudWidget_Access_Array;
   function "=" (Left, Right : HealthHudWidget_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References."=";
   subtype HealthHudWidget_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.HealthHudWidget_Access_Array_Access;
   function "=" (Left, Right : HealthHudWidget_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References."=";
   function Java_Box (Value : HealthHudWidget_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.Java_Box;
   function Java_Unbox_HealthHudWidget_Access_Array (Value : access Java_Object'Class) return HealthHudWidget_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.Java_Unbox_HealthHudWidget_Access_Array;
   subtype HealthHudWidget_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.HealthHudWidget_Access_Array_Access_Array;
   function "=" (Left, Right : HealthHudWidget_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References."=";
   subtype HealthHudWidget_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.HealthHudWidget_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthHudWidget_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References."=";
   function Java_Box (Value : HealthHudWidget_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.Java_Box;
   function Java_Unbox_HealthHudWidget_Access_Array_Access_Array (Value : access Java_Object'Class) return HealthHudWidget_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package_References.Java_Unbox_HealthHudWidget_Access_Array_Access_Array;

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

   procedure Initialize (This : in out HealthHudWidget'Class; animationInterface_Param : access Animation_Package.Animation'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer) return HealthHudWidget_Access;
   procedure update (This : in out HealthHudWidget);
   procedure setX (This : in out HealthHudWidget; x : Integer);
   procedure onHealthChange (This : in out HealthHudWidget);
   procedure paint (This : in out HealthHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out HealthHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package;


