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

limited with org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package;
package org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References is
   type TimeHudWidget_Access is access all org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package.TimeHudWidget'Class;
   type TimeHudWidget_Access_Array is array (Natural range <>) of TimeHudWidget_Access;
   type TimeHudWidget_Access_Array_Access is access all TimeHudWidget_Access_Array;
   type TimeHudWidget_Access_Array_Access_Array is array (Natural range <>) of TimeHudWidget_Access_Array_Access;
   type TimeHudWidget_Access_Array_Access_Array_Access is access all TimeHudWidget_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References;

with org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References;
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
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.game.ag.layer.hud.basic.time.Timer_Package;
with org.allbinary.game.ag.layer.hud.basic.time.Timer_Package_References;

package org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
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
   subtype Timer_Access is org.allbinary.game.ag.layer.hud.basic.time.Timer_Package_References.Timer_Access;
   use type Timer_Access;
   subtype Timer_Access_Array is org.allbinary.game.ag.layer.hud.basic.time.Timer_Package_References.Timer_Access_Array;
   use type Timer_Access_Array;
   subtype Timer_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.time.Timer_Package_References.Timer_Access_Array_Access;
   use type Timer_Access_Array_Access;
   subtype Timer_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.time.Timer_Package_References.Timer_Access_Array_Access_Array;
   use type Timer_Access_Array_Access_Array;
   subtype Timer_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.time.Timer_Package_References.Timer_Access_Array_Access_Array_Access;
   use type Timer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TimeHudWidget_Access is org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References.TimeHudWidget_Access;
   function "=" (Left, Right : TimeHudWidget_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References."=";
   subtype TimeHudWidget_Access_Array is org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References.TimeHudWidget_Access_Array;
   function "=" (Left, Right : TimeHudWidget_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References."=";
   subtype TimeHudWidget_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References.TimeHudWidget_Access_Array_Access;
   function "=" (Left, Right : TimeHudWidget_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References."=";
   subtype TimeHudWidget_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References.TimeHudWidget_Access_Array_Access_Array;
   function "=" (Left, Right : TimeHudWidget_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References."=";
   subtype TimeHudWidget_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References.TimeHudWidget_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeHudWidget_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package_References."=";

   type TimeHudWidget is new BasicHud with record
      TIME_STRING : Unbounded_String;
      TIME_CHAR_ARRAY : Character_Array_Access;
      offset : Integer;
      string_Id : Character_Array_Access;
      totalDigits : Integer;
      timer : Timer_Access;
   end record;

   procedure Initialize (This : in out TimeHudWidget'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access Timer_Package.Timer'Class);
   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access Timer_Package.Timer'Class) return TimeHudWidget_Access;
   function getInstance (location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access Timer_Package.Timer'Class) return TimeHudWidget_Access;
   procedure getInstance (location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access Timer_Package.Timer'Class);
   procedure updateMeasurement (This : in out TimeHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure update (This : in out TimeHudWidget);
   procedure set (This : in out TimeHudWidget);
   function getTimer (This : in out TimeHudWidget) return Timer_Access;
   procedure paint (This : in out TimeHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package;


