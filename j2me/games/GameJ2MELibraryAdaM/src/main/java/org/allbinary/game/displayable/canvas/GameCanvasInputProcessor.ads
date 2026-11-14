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
limited with org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package;
package org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References is
   type GameCanvasInputProcessor_Access is access all org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package.GameCanvasInputProcessor'Class;
   type GameCanvasInputProcessor_Access_Array is array (Natural range <>) of GameCanvasInputProcessor_Access;
   type GameCanvasInputProcessor_Access_Array_Access is access all GameCanvasInputProcessor_Access_Array;
   type GameCanvasInputProcessor_Access_Array_Access_Array is array (Natural range <>) of GameCanvasInputProcessor_Access_Array_Access;
   type GameCanvasInputProcessor_Access_Array_Access_Array_Access is access all GameCanvasInputProcessor_Access_Array_Access_Array;
   type GameCanvasInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameCanvasInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : GameCanvasInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameCanvasInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameCanvasInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameCanvasInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in GameCanvasInputProcessor_Access_Array_Object'Class then GameCanvasInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type GameCanvasInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameCanvasInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameCanvasInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameCanvasInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameCanvasInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameCanvasInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameCanvasInputProcessor_Access_Array_Access_Array_Object'Class then GameCanvasInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.game.input.InputProcessor_Package; use org.allbinary.game.input.InputProcessor_Package;
limited with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;
limited with org.allbinary.game.input.event.DownKeyEventHandler_Package;
with org.allbinary.game.input.event.DownKeyEventHandler_Package_References;
limited with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package_References;
limited with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
limited with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package InputProcessor_Package renames Standard.org.allbinary.game.input.InputProcessor_Package;
   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package DownKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownKeyEventHandler_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
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
   subtype DownKeyEventHandler_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access;
   use type DownKeyEventHandler_Access;
   subtype DownKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array;
   use type DownKeyEventHandler_Access_Array;
   subtype DownKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access;
   use type DownKeyEventHandler_Access_Array_Access;
   subtype DownKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access_Array;
   use type DownKeyEventHandler_Access_Array_Access_Array;
   subtype DownKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access_Array_Access;
   use type DownKeyEventHandler_Access_Array_Access_Array_Access;
   subtype GameKeyEventFactory_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access;
   use type GameKeyEventFactory_Access;
   subtype GameKeyEventFactory_Access_Array is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array;
   use type GameKeyEventFactory_Access_Array;
   subtype GameKeyEventFactory_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access;
   use type GameKeyEventFactory_Access_Array_Access;
   subtype GameKeyEventFactory_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access_Array;
   use type GameKeyEventFactory_Access_Array_Access_Array;
   subtype GameKeyEventFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access_Array_Access;
   use type GameKeyEventFactory_Access_Array_Access_Array_Access;
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
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   use type InputToGameKeyMapping_Access;
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   use type InputToGameKeyMapping_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access;
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   use type InputToGameKeyMapping_Access_Array_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access_Array_Access;
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
   subtype SmallIntegerSingletonFactory_Access is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access;
   use type SmallIntegerSingletonFactory_Access;
   subtype SmallIntegerSingletonFactory_Access_Array is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access_Array;
   use type SmallIntegerSingletonFactory_Access_Array;
   subtype SmallIntegerSingletonFactory_Access_Array_Access is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access_Array_Access;
   use type SmallIntegerSingletonFactory_Access_Array_Access;
   subtype SmallIntegerSingletonFactory_Access_Array_Access_Array is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access_Array_Access_Array;
   use type SmallIntegerSingletonFactory_Access_Array_Access_Array;
   subtype SmallIntegerSingletonFactory_Access_Array_Access_Array_Access is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access_Array_Access_Array_Access;
   use type SmallIntegerSingletonFactory_Access_Array_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameCanvasInputProcessor_Access is org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.GameCanvasInputProcessor_Access;
   function "=" (Left, Right : GameCanvasInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References."=";
   subtype GameCanvasInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.GameCanvasInputProcessor_Access_Array;
   function "=" (Left, Right : GameCanvasInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References."=";
   subtype GameCanvasInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.GameCanvasInputProcessor_Access_Array_Access;
   function "=" (Left, Right : GameCanvasInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References."=";
   function Java_Box (Value : GameCanvasInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.Java_Box;
   function Java_Unbox_GameCanvasInputProcessor_Access_Array (Value : access Java_Object'Class) return GameCanvasInputProcessor_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.Java_Unbox_GameCanvasInputProcessor_Access_Array;
   subtype GameCanvasInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.GameCanvasInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : GameCanvasInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References."=";
   subtype GameCanvasInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.GameCanvasInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameCanvasInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References."=";
   function Java_Box (Value : GameCanvasInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.Java_Box;
   function Java_Unbox_GameCanvasInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return GameCanvasInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package_References.Java_Unbox_GameCanvasInputProcessor_Access_Array_Access_Array;

   type GameCanvasInputProcessor is new InputProcessor with record
      logUtil : LogUtil_Access;
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
      downGameKeyEventHandler : DownGameKeyEventHandler_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      downKeyEventHandler : DownKeyEventHandler_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      NONE : GameKey_Access;
      gameKeyEventFactory : GameKeyEventFactory_Access;
   end record;

   procedure Initialize (This : in out GameCanvasInputProcessor'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameCanvasInputProcessor_Access;
   procedure keyPressedByDevice (This : in out GameCanvasInputProcessor; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out GameCanvasInputProcessor; canvas_Param : access Canvas_Package.Canvas'Class; keyCode : Integer; deviceId : Integer);
   procedure removeGameKeyEvent (This : in out GameCanvasInputProcessor; canvas_Param : access Canvas_Package.Canvas'Class; keyCode : Integer; deviceId : Integer; repeated : Boolean);

end org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package;


