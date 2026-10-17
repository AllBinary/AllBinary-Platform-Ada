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
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package; use org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package; use org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.TouchScreenFactory_Package; use org.allbinary.input.motion.button.TouchScreenFactory_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package; use org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;

package org.allbinary.input.motion.button.TouchButtonRecognizer_Package is

   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type TouchButtonRecognizer is tagged;
   type TouchButtonRecognizer_Access is access all TouchButtonRecognizer'Class;
   type TouchButtonRecognizer_Access_Array is array (Natural range <>) of TouchButtonRecognizer_Access;
   type TouchButtonRecognizer_Access_Array_Access is access all TouchButtonRecognizer_Access_Array;

   type TouchButtonRecognizer is new Java_Object with record
      logUtil : LogUtil_Access;
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      downGameKeyEventHandler : DownGameKeyEventHandler_Access;
      lastPressedTouchButtonInput : TouchButtonInput_Access;
      currentlyPressedTouchButtonSingleton : CurrentlyPressedTouchButtonSingleton_Access;
      releaseHelper : ReleaseHelper_Access;
   end record;

   procedure Initialize (This : in out TouchButtonRecognizer'Class);
   function Create return TouchButtonRecognizer_Access;
   procedure processRelease (This : in out TouchButtonRecognizer; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer);
   function releaseTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) return Boolean;
   procedure releaseTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer);
   function pressTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) return Boolean;
   procedure pressTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer);

end org.allbinary.input.motion.button.TouchButtonRecognizer_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package; use org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package; use org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.TouchScreenFactory_Package; use org.allbinary.input.motion.button.TouchScreenFactory_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package; use org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;

package org.allbinary.input.motion.button.ReleaseHelper_Package is

   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type ReleaseHelper is tagged;
   type ReleaseHelper_Access is access all ReleaseHelper'Class;
   type ReleaseHelper_Access_Array is array (Natural range <>) of ReleaseHelper_Access;
   type ReleaseHelper_Access_Array_Access is access all ReleaseHelper_Access_Array;

   type ReleaseHelper is new Java_Object with record
      touchButtonRecognizer : TouchButtonRecognizer_Access;
   end record;

   procedure Initialize (This : in out ReleaseHelper'Class; touchButtonRecognizer_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class);
   function Create (touchButtonRecognizer_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class) return ReleaseHelper_Access;
   procedure release (This : in out ReleaseHelper; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer);

end org.allbinary.input.motion.button.ReleaseHelper_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package; use org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package; use org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.TouchScreenFactory_Package; use org.allbinary.input.motion.button.TouchScreenFactory_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package; use org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;

package org.allbinary.input.motion.button.MultitouchReleaseHelper_Package is

   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type MultitouchReleaseHelper is tagged;
   type MultitouchReleaseHelper_Access is access all MultitouchReleaseHelper'Class;
   type MultitouchReleaseHelper_Access_Array is array (Natural range <>) of MultitouchReleaseHelper_Access;
   type MultitouchReleaseHelper_Access_Array_Access is access all MultitouchReleaseHelper_Access_Array;

   type MultitouchReleaseHelper is new ReleaseHelper with null record;

   procedure Initialize (This : in out MultitouchReleaseHelper'Class; touchButtonRecognizer_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class);
   function Create (touchButtonRecognizer_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class) return MultitouchReleaseHelper_Access;
   procedure release (This : in out MultitouchReleaseHelper; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer);

end org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;


