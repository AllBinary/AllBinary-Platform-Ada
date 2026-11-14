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
limited with org.allbinary.game.input.PlayerGameInput_Package;
package org.allbinary.game.input.PlayerGameInput_Package_References is
   type PlayerGameInput_Access is access all org.allbinary.game.input.PlayerGameInput_Package.PlayerGameInput'Class;
   type PlayerGameInput_Access_Array is array (Natural range <>) of PlayerGameInput_Access;
   type PlayerGameInput_Access_Array_Access is access all PlayerGameInput_Access_Array;
   type PlayerGameInput_Access_Array_Access_Array is array (Natural range <>) of PlayerGameInput_Access_Array_Access;
   type PlayerGameInput_Access_Array_Access_Array_Access is access all PlayerGameInput_Access_Array_Access_Array;
   type PlayerGameInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerGameInput_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerGameInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerGameInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerGameInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerGameInput_Access_Array_Access is (if Value /= null and then Value.all in PlayerGameInput_Access_Array_Object'Class then PlayerGameInput_Access_Array_Object'Class (Value.all).Value else null);
   type PlayerGameInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerGameInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerGameInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerGameInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerGameInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerGameInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlayerGameInput_Access_Array_Access_Array_Object'Class then PlayerGameInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.PlayerGameInput_Package_References;

with org.allbinary.game.input.PlayerGameInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
limited with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameInputStrings_Package_References;

package org.allbinary.game.input.PlayerGameInput_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventListenerInterface_Package renames Standard.org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype GameInputStrings_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access;
   use type GameInputStrings_Access;
   subtype GameInputStrings_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array;
   use type GameInputStrings_Access_Array;
   subtype GameInputStrings_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access;
   use type GameInputStrings_Access_Array_Access;
   subtype GameInputStrings_Access_Array_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array;
   use type GameInputStrings_Access_Array_Access_Array;
   subtype GameInputStrings_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array_Access;
   use type GameInputStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   function "=" (Left, Right : PlayerGameInput_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   function Java_Box (Value : PlayerGameInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PlayerGameInput_Package_References.Java_Box;
   function Java_Unbox_PlayerGameInput_Access_Array (Value : access Java_Object'Class) return PlayerGameInput_Access_Array_Access renames org.allbinary.game.input.PlayerGameInput_Package_References.Java_Unbox_PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   function Java_Box (Value : PlayerGameInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PlayerGameInput_Package_References.Java_Box;
   function Java_Unbox_PlayerGameInput_Access_Array_Access_Array (Value : access Java_Object'Class) return PlayerGameInput_Access_Array_Access_Array_Access renames org.allbinary.game.input.PlayerGameInput_Package_References.Java_Unbox_PlayerGameInput_Access_Array_Access_Array;

   type PlayerGameInput is new GameInput and GameKeyEventListenerInterface with record
      gameInputStrings : GameInputStrings_Access;
      playerInputId : Integer;
   end record;

   procedure Initialize (This : in out PlayerGameInput'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; removalGameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; removalGameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer) return PlayerGameInput_Access;
   procedure onPressGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onDownGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onDownKeyEvent (This : in out PlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onDownKey (This : in out PlayerGameInput; gameKeyEvent : Integer);
   procedure onUpGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onUpKeyEvent (This : in out PlayerGameInput; gameKeyEvent : Integer);
   procedure onEvent (This : in out PlayerGameInput; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   function getPlayerInputId (This : in out PlayerGameInput) return Integer;

end org.allbinary.game.input.PlayerGameInput_Package;


