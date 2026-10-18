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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package GameNotification_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
   package GameNotificationHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type PlayerGameNotificationHud is tagged;
   type PlayerGameNotificationHud_Access is access all PlayerGameNotificationHud'Class;
   type PlayerGameNotificationHud_Access_Array is array (Natural range <>) of PlayerGameNotificationHud_Access;
   type PlayerGameNotificationHud_Access_Array_Access is access all PlayerGameNotificationHud_Access_Array;
   type PlayerGameNotificationHud_Access_Array_Access_Array is array (Natural range <>) of PlayerGameNotificationHud_Access_Array_Access;
   type PlayerGameNotificationHud_Access_Array_Access_Array_Access is access all PlayerGameNotificationHud_Access_Array_Access_Array;

   type PlayerGameNotificationHud is new GameNotificationHud and UpdateMyFontInterface with record
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
      EMPTY_STRING : Unbounded_String;
      displayInfo : DisplayInfoSingleton_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      circularIndexUtil : CircularIndexUtil_Access;
      gameNotification : GameNotification_Access;
      permanentGameNotification : GameNotification_Access;
      setAndRemoveProcessor_Var : Processor_Access;
      nextUnremoveableProcessor_Var : Processor_Access;
      processor : Processor_Access;
      PERMANENT_GAME_NOTIFICATION : Unbounded_String;
      lastString : Unbounded_String;
      string_Id : Unbounded_String;
      point : CustomGPoint_Access;
      width : Integer;
   end record;

   procedure Initialize (This : in out PlayerGameNotificationHud'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return PlayerGameNotificationHud_Access;
   procedure updateMeasurement (This : in out PlayerGameNotificationHud; graphics_Param : access Graphics_Package.Graphics'Class);
   function getPoint (This : in out PlayerGameNotificationHud; x : Integer; y : Integer) return GPoint_Access;
   procedure getPoint (This : in out PlayerGameNotificationHud; x : Integer; y : Integer);
   procedure add (This : in out PlayerGameNotificationHud; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; permanent : Boolean);
   procedure processTick (This : in out PlayerGameNotificationHud);
   procedure setAndRemove (This : in out PlayerGameNotificationHud);
   procedure setAndRemoveProcess (This : in out PlayerGameNotificationHud);
   procedure setNextUnremoveable (This : in out PlayerGameNotificationHud);
   procedure setNextUnremoveableProcess (This : in out PlayerGameNotificationHud);
   procedure clear (This : in out PlayerGameNotificationHud);
   procedure paint (This : in out PlayerGameNotificationHud; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package GameNotification_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
   package GameNotificationHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type SetAndRemoveProcessor is tagged;
   type SetAndRemoveProcessor_Access is access all SetAndRemoveProcessor'Class;
   type SetAndRemoveProcessor_Access_Array is array (Natural range <>) of SetAndRemoveProcessor_Access;
   type SetAndRemoveProcessor_Access_Array_Access is access all SetAndRemoveProcessor_Access_Array;
   type SetAndRemoveProcessor_Access_Array_Access_Array is array (Natural range <>) of SetAndRemoveProcessor_Access_Array_Access;
   type SetAndRemoveProcessor_Access_Array_Access_Array_Access is access all SetAndRemoveProcessor_Access_Array_Access_Array;

   type SetAndRemoveProcessor is new Processor with record
      updateMeasurementProcessor : PlayerGameNotificationHud_Access;
   end record;

   procedure Initialize (This : in out SetAndRemoveProcessor'Class; updateMeasurementProcessor_Param : access PlayerGameNotificationHud_Package.PlayerGameNotificationHud'Class);
   function Create (updateMeasurementProcessor_Param : access PlayerGameNotificationHud_Package.PlayerGameNotificationHud'Class) return SetAndRemoveProcessor_Access;
   procedure process (This : in out SetAndRemoveProcessor);

end org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package GameNotification_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
   package GameNotificationHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type NextUnremoveableProcessor is tagged;
   type NextUnremoveableProcessor_Access is access all NextUnremoveableProcessor'Class;
   type NextUnremoveableProcessor_Access_Array is array (Natural range <>) of NextUnremoveableProcessor_Access;
   type NextUnremoveableProcessor_Access_Array_Access is access all NextUnremoveableProcessor_Access_Array;
   type NextUnremoveableProcessor_Access_Array_Access_Array is array (Natural range <>) of NextUnremoveableProcessor_Access_Array_Access;
   type NextUnremoveableProcessor_Access_Array_Access_Array_Access is access all NextUnremoveableProcessor_Access_Array_Access_Array;

   type NextUnremoveableProcessor is new Processor with record
      updateMeasurementProcessor : PlayerGameNotificationHud_Access;
   end record;

   procedure Initialize (This : in out NextUnremoveableProcessor'Class; updateMeasurementProcessor_Param : access PlayerGameNotificationHud_Package.PlayerGameNotificationHud'Class);
   function Create (updateMeasurementProcessor_Param : access PlayerGameNotificationHud_Package.PlayerGameNotificationHud'Class) return NextUnremoveableProcessor_Access;
   procedure process (This : in out NextUnremoveableProcessor);

end org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package;


