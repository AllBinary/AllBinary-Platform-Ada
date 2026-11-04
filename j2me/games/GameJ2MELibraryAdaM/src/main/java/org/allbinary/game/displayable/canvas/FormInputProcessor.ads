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

limited with org.allbinary.game.displayable.canvas.FormInputProcessor_Package;
package org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References is
   type FormInputProcessor_Access is access all org.allbinary.game.displayable.canvas.FormInputProcessor_Package.FormInputProcessor'Class;
   type FormInputProcessor_Access_Array is array (Natural range <>) of FormInputProcessor_Access;
   type FormInputProcessor_Access_Array_Access is access all FormInputProcessor_Access_Array;
   type FormInputProcessor_Access_Array_Access_Array is array (Natural range <>) of FormInputProcessor_Access_Array_Access;
   type FormInputProcessor_Access_Array_Access_Array_Access is access all FormInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References;
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
limited with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.InputFactory_Package_References;
with org.allbinary.game.input.InputProcessor_Package; use org.allbinary.game.input.InputProcessor_Package;
limited with org.allbinary.game.input.PlatformKeyFactory_Package;
with org.allbinary.game.input.PlatformKeyFactory_Package_References;
limited with org.allbinary.game.input.event.DownKeyEventHandler_Package;
with org.allbinary.game.input.event.DownKeyEventHandler_Package_References;
limited with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package_References;
limited with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.FormInputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package InputProcessor_Package renames Standard.org.allbinary.game.input.InputProcessor_Package;
   package PlatformKeyFactory_Package renames Standard.org.allbinary.game.input.PlatformKeyFactory_Package;
   package DownKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownKeyEventHandler_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype InputFactory_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access;
   use type InputFactory_Access;
   subtype InputFactory_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array;
   use type InputFactory_Access_Array;
   subtype InputFactory_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access;
   use type InputFactory_Access_Array_Access;
   subtype InputFactory_Access_Array_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array;
   use type InputFactory_Access_Array_Access_Array;
   subtype InputFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array_Access;
   use type InputFactory_Access_Array_Access_Array_Access;
   subtype PlatformKeyFactory_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access;
   use type PlatformKeyFactory_Access;
   subtype PlatformKeyFactory_Access_Array is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array;
   use type PlatformKeyFactory_Access_Array;
   subtype PlatformKeyFactory_Access_Array_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access;
   use type PlatformKeyFactory_Access_Array_Access;
   subtype PlatformKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access_Array;
   use type PlatformKeyFactory_Access_Array_Access_Array;
   subtype PlatformKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access_Array_Access;
   use type PlatformKeyFactory_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype FormInputProcessor_Access is org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References.FormInputProcessor_Access;
   function "=" (Left, Right : FormInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References."=";
   subtype FormInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References.FormInputProcessor_Access_Array;
   function "=" (Left, Right : FormInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References."=";
   subtype FormInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References.FormInputProcessor_Access_Array_Access;
   function "=" (Left, Right : FormInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References."=";
   subtype FormInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References.FormInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : FormInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References."=";
   subtype FormInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References.FormInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FormInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormInputProcessor_Package_References."=";

   type FormInputProcessor is new InputProcessor with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameKeyEventFactory : GameKeyEventFactory_Access;
      downKeyEventHandler : DownKeyEventHandler_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      inputFactory : InputFactory_Access;
      platformKeyFactory : PlatformKeyFactory_Access;
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out FormInputProcessor'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return FormInputProcessor_Access;
   procedure keyPressedByDevice (This : in out FormInputProcessor; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out FormInputProcessor; canvas_Param : access Canvas_Package.Canvas'Class; keyCode : Integer; deviceId : Integer);

end org.allbinary.game.displayable.canvas.FormInputProcessor_Package;


