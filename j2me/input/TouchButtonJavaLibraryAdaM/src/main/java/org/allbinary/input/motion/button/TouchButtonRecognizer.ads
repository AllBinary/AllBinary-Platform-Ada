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

limited with org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
package org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References is
   type TouchButtonRecognizer_Access is access all org.allbinary.input.motion.button.TouchButtonRecognizer_Package.TouchButtonRecognizer'Class;
   type TouchButtonRecognizer_Access_Array is array (Natural range <>) of TouchButtonRecognizer_Access;
   type TouchButtonRecognizer_Access_Array_Access is access all TouchButtonRecognizer_Access_Array;
   type TouchButtonRecognizer_Access_Array_Access_Array is array (Natural range <>) of TouchButtonRecognizer_Access_Array_Access;
   type TouchButtonRecognizer_Access_Array_Access_Array_Access is access all TouchButtonRecognizer_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References;

with org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;
limited with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
limited with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References;
limited with org.allbinary.input.motion.button.ReleaseHelper_Package;
with org.allbinary.input.motion.button.ReleaseHelper_Package_References;

package org.allbinary.input.motion.button.TouchButtonRecognizer_Package is

   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package Reference_Types is
   subtype DownGameKeyEventHandler_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access;
   use type DownGameKeyEventHandler_Access;
   subtype DownGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array;
   use type DownGameKeyEventHandler_Access_Array;
   subtype DownGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access;
   use type DownGameKeyEventHandler_Access_Array_Access;
   subtype DownGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array;
   use type DownGameKeyEventHandler_Access_Array_Access_Array;
   subtype DownGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   subtype UpGameKeyEventHandler_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access;
   use type UpGameKeyEventHandler_Access;
   subtype UpGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array;
   use type UpGameKeyEventHandler_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access;
   use type UpGameKeyEventHandler_Access_Array_Access;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array;
   use type UpGameKeyEventHandler_Access_Array_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype RectangleCollisionUtil_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   use type RectangleCollisionUtil_Access;
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   use type RectangleCollisionUtil_Access_Array;
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   use type RectangleCollisionUtil_Access_Array_Access;
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   use type RectangleCollisionUtil_Access_Array_Access_Array;
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   use type RectangleCollisionUtil_Access_Array_Access_Array_Access;
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   use type TouchButtonInput_Access;
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   use type TouchButtonInput_Access_Array;
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access;
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   use type TouchButtonInput_Access_Array_Access_Array;
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access_Array_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   subtype ReleaseHelper_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access;
   use type ReleaseHelper_Access;
   subtype ReleaseHelper_Access_Array is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array;
   use type ReleaseHelper_Access_Array;
   subtype ReleaseHelper_Access_Array_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access;
   use type ReleaseHelper_Access_Array_Access;
   subtype ReleaseHelper_Access_Array_Access_Array is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access_Array;
   use type ReleaseHelper_Access_Array_Access_Array;
   subtype ReleaseHelper_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access_Array_Access;
   use type ReleaseHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonRecognizer_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";

   type TouchButtonRecognizer is new Java_Object with record
      logUtil : LogUtil_Access;
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      downGameKeyEventHandler : DownGameKeyEventHandler_Access;
      lastPressedTouchButtonInput : TouchButtonInput_Access;
      currentlyPressedTouchButtonSingleton : CurrentlyPressedTouchButtonSingleton_Access;
      releaseHelper_Var : ReleaseHelper_Access;
   end record;

   procedure Initialize (This : in out TouchButtonRecognizer'Class);
   function Create return TouchButtonRecognizer_Access;
   procedure processRelease (This : in out TouchButtonRecognizer; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer);
   function releaseTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) return Boolean;
   procedure releaseTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer);
   function pressTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) return Boolean;
   procedure pressTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer);

end org.allbinary.input.motion.button.TouchButtonRecognizer_Package;

limited with org.allbinary.input.motion.button.ReleaseHelper_Package;
package org.allbinary.input.motion.button.ReleaseHelper_Package_References is
   type ReleaseHelper_Access is access all org.allbinary.input.motion.button.ReleaseHelper_Package.ReleaseHelper'Class;
   type ReleaseHelper_Access_Array is array (Natural range <>) of ReleaseHelper_Access;
   type ReleaseHelper_Access_Array_Access is access all ReleaseHelper_Access_Array;
   type ReleaseHelper_Access_Array_Access_Array is array (Natural range <>) of ReleaseHelper_Access_Array_Access;
   type ReleaseHelper_Access_Array_Access_Array_Access is access all ReleaseHelper_Access_Array_Access_Array;
end org.allbinary.input.motion.button.ReleaseHelper_Package_References;

with org.allbinary.input.motion.button.ReleaseHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;
limited with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
limited with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References;

package org.allbinary.input.motion.button.ReleaseHelper_Package is

   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package Reference_Types is
   subtype DownGameKeyEventHandler_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access;
   use type DownGameKeyEventHandler_Access;
   subtype DownGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array;
   use type DownGameKeyEventHandler_Access_Array;
   subtype DownGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access;
   use type DownGameKeyEventHandler_Access_Array_Access;
   subtype DownGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array;
   use type DownGameKeyEventHandler_Access_Array_Access_Array;
   subtype DownGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   subtype UpGameKeyEventHandler_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access;
   use type UpGameKeyEventHandler_Access;
   subtype UpGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array;
   use type UpGameKeyEventHandler_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access;
   use type UpGameKeyEventHandler_Access_Array_Access;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array;
   use type UpGameKeyEventHandler_Access_Array_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype RectangleCollisionUtil_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   use type RectangleCollisionUtil_Access;
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   use type RectangleCollisionUtil_Access_Array;
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   use type RectangleCollisionUtil_Access_Array_Access;
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   use type RectangleCollisionUtil_Access_Array_Access_Array;
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   use type RectangleCollisionUtil_Access_Array_Access_Array_Access;
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   use type TouchButtonInput_Access;
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   use type TouchButtonInput_Access_Array;
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access;
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   use type TouchButtonInput_Access_Array_Access_Array;
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access_Array_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ReleaseHelper_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access;
   function "=" (Left, Right : ReleaseHelper_Access) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   subtype ReleaseHelper_Access_Array is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array;
   function "=" (Left, Right : ReleaseHelper_Access_Array) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   subtype ReleaseHelper_Access_Array_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access;
   function "=" (Left, Right : ReleaseHelper_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   subtype ReleaseHelper_Access_Array_Access_Array is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access_Array;
   function "=" (Left, Right : ReleaseHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   subtype ReleaseHelper_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ReleaseHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";

   type ReleaseHelper is new Java_Object with record
      touchButtonRecognizer_Var : TouchButtonRecognizer_Access;
   end record;

   procedure Initialize (This : in out ReleaseHelper'Class; touchButtonRecognizer_Var_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class);
   function Create (touchButtonRecognizer_Var_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class) return ReleaseHelper_Access;
   procedure release (This : in out ReleaseHelper; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer);

end org.allbinary.input.motion.button.ReleaseHelper_Package;

limited with org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;
package org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References is
   type MultitouchReleaseHelper_Access is access all org.allbinary.input.motion.button.MultitouchReleaseHelper_Package.MultitouchReleaseHelper'Class;
   type MultitouchReleaseHelper_Access_Array is array (Natural range <>) of MultitouchReleaseHelper_Access;
   type MultitouchReleaseHelper_Access_Array_Access is access all MultitouchReleaseHelper_Access_Array;
   type MultitouchReleaseHelper_Access_Array_Access_Array is array (Natural range <>) of MultitouchReleaseHelper_Access_Array_Access;
   type MultitouchReleaseHelper_Access_Array_Access_Array_Access is access all MultitouchReleaseHelper_Access_Array_Access_Array;
end org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References;

with org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;
limited with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package_References;
with org.allbinary.input.motion.button.ReleaseHelper_Package; use org.allbinary.input.motion.button.ReleaseHelper_Package;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
limited with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References;

package org.allbinary.input.motion.button.MultitouchReleaseHelper_Package is

   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package Reference_Types is
   subtype DownGameKeyEventHandler_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access;
   use type DownGameKeyEventHandler_Access;
   subtype DownGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array;
   use type DownGameKeyEventHandler_Access_Array;
   subtype DownGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access;
   use type DownGameKeyEventHandler_Access_Array_Access;
   subtype DownGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array;
   use type DownGameKeyEventHandler_Access_Array_Access_Array;
   subtype DownGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   subtype UpGameKeyEventHandler_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access;
   use type UpGameKeyEventHandler_Access;
   subtype UpGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array;
   use type UpGameKeyEventHandler_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access;
   use type UpGameKeyEventHandler_Access_Array_Access;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array;
   use type UpGameKeyEventHandler_Access_Array_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype RectangleCollisionUtil_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   use type RectangleCollisionUtil_Access;
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   use type RectangleCollisionUtil_Access_Array;
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   use type RectangleCollisionUtil_Access_Array_Access;
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   use type RectangleCollisionUtil_Access_Array_Access_Array;
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   use type RectangleCollisionUtil_Access_Array_Access_Array_Access;
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   use type TouchButtonInput_Access;
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   use type TouchButtonInput_Access_Array;
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access;
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   use type TouchButtonInput_Access_Array_Access_Array;
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access_Array_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   use type CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MultitouchReleaseHelper_Access is org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References.MultitouchReleaseHelper_Access;
   function "=" (Left, Right : MultitouchReleaseHelper_Access) return Boolean renames org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References."=";
   subtype MultitouchReleaseHelper_Access_Array is org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References.MultitouchReleaseHelper_Access_Array;
   function "=" (Left, Right : MultitouchReleaseHelper_Access_Array) return Boolean renames org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References."=";
   subtype MultitouchReleaseHelper_Access_Array_Access is org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References.MultitouchReleaseHelper_Access_Array_Access;
   function "=" (Left, Right : MultitouchReleaseHelper_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References."=";
   subtype MultitouchReleaseHelper_Access_Array_Access_Array is org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References.MultitouchReleaseHelper_Access_Array_Access_Array;
   function "=" (Left, Right : MultitouchReleaseHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References."=";
   subtype MultitouchReleaseHelper_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References.MultitouchReleaseHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultitouchReleaseHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.MultitouchReleaseHelper_Package_References."=";

   type MultitouchReleaseHelper is new ReleaseHelper with null record;

   procedure Initialize (This : in out MultitouchReleaseHelper'Class; touchButtonRecognizer_Var_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class);
   function Create (touchButtonRecognizer_Var_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class) return MultitouchReleaseHelper_Access;
   procedure release (This : in out MultitouchReleaseHelper; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer);

end org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;


