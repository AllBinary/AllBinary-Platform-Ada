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
limited with org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package;
package org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References is
   type LivesHudWidget_Access is access all org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package.LivesHudWidget'Class;
   type LivesHudWidget_Access_Array is array (Natural range <>) of LivesHudWidget_Access;
   type LivesHudWidget_Access_Array_Access is access all LivesHudWidget_Access_Array;
   type LivesHudWidget_Access_Array_Access_Array is array (Natural range <>) of LivesHudWidget_Access_Array_Access;
   type LivesHudWidget_Access_Array_Access_Array_Access is access all LivesHudWidget_Access_Array_Access_Array;
   type LivesHudWidget_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LivesHudWidget_Access_Array_Access;
   end record;
   function Java_Box (Value : LivesHudWidget_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LivesHudWidget_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LivesHudWidget_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LivesHudWidget_Access_Array_Access is (if Value /= null and then Value.all in LivesHudWidget_Access_Array_Object'Class then LivesHudWidget_Access_Array_Object'Class (Value.all).Value else null);
   type LivesHudWidget_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LivesHudWidget_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LivesHudWidget_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LivesHudWidget_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LivesHudWidget_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LivesHudWidget_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LivesHudWidget_Access_Array_Access_Array_Object'Class then LivesHudWidget_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References;

with org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References;
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
limited with org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.ag.life.Life_Package_References;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package Life_Package renames Standard.org.allbinary.game.ag.life.Life_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
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
   subtype Life_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access;
   use type Life_Access;
   subtype Life_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array;
   use type Life_Access_Array;
   subtype Life_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access;
   use type Life_Access_Array_Access;
   subtype Life_Access_Array_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array;
   use type Life_Access_Array_Access_Array;
   subtype Life_Access_Array_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array_Access;
   use type Life_Access_Array_Access_Array_Access;
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   use type DisplayChangeEvent_Access;
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   use type DisplayChangeEvent_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access;
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   use type DisplayChangeEvent_Access_Array_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LivesHudWidget_Access is org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.LivesHudWidget_Access;
   function "=" (Left, Right : LivesHudWidget_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References."=";
   subtype LivesHudWidget_Access_Array is org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.LivesHudWidget_Access_Array;
   function "=" (Left, Right : LivesHudWidget_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References."=";
   subtype LivesHudWidget_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.LivesHudWidget_Access_Array_Access;
   function "=" (Left, Right : LivesHudWidget_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References."=";
   function Java_Box (Value : LivesHudWidget_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.Java_Box;
   function Java_Unbox_LivesHudWidget_Access_Array (Value : access Java_Object'Class) return LivesHudWidget_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.Java_Unbox_LivesHudWidget_Access_Array;
   subtype LivesHudWidget_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.LivesHudWidget_Access_Array_Access_Array;
   function "=" (Left, Right : LivesHudWidget_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References."=";
   subtype LivesHudWidget_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.LivesHudWidget_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LivesHudWidget_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References."=";
   function Java_Box (Value : LivesHudWidget_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.Java_Box;
   function Java_Unbox_LivesHudWidget_Access_Array_Access_Array (Value : access Java_Object'Class) return LivesHudWidget_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package_References.Java_Unbox_LivesHudWidget_Access_Array_Access_Array;

   type LivesHudWidget is new BasicHud and PaintableInterface with record
      lifeInterface : Life_Access;
      xArray : Integer_Array_Access;
      animationInterface : Animation_Access;
   end record;

   procedure Initialize (This : in out LivesHudWidget'Class; animationInterface_Param : access Animation_Package.Animation'Class; lifeInterface_Param : access Life_Package.Life'Class; location : Integer; direction : Integer);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; lifeInterface_Param : access Life_Package.Life'Class; location : Integer; direction : Integer) return LivesHudWidget_Access;
   procedure updateMeasurement (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure onDisplayChangeEvent (This : in out LivesHudWidget; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   procedure setX (This : in out LivesHudWidget; x : Integer);
   procedure paint (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   function getLifeInterface (This : in out LivesHudWidget) return Life_Access;

end org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package;


