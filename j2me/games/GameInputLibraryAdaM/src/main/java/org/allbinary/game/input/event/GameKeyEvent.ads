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
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
package org.allbinary.game.input.event.GameKeyEvent_Package_References is
   type GameKeyEvent_Access is access all org.allbinary.game.input.event.GameKeyEvent_Package.GameKeyEvent'Class;
   type GameKeyEvent_Access_Array is array (Natural range <>) of GameKeyEvent_Access;
   type GameKeyEvent_Access_Array_Access is access all GameKeyEvent_Access_Array;
   type GameKeyEvent_Access_Array_Access_Array is array (Natural range <>) of GameKeyEvent_Access_Array_Access;
   type GameKeyEvent_Access_Array_Access_Array_Access is access all GameKeyEvent_Access_Array_Access_Array;
   type GameKeyEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyEvent_Access_Array_Access is (if Value /= null and then Value.all in GameKeyEvent_Access_Array_Object'Class then GameKeyEvent_Access_Array_Object'Class (Value.all).Value else null);
   type GameKeyEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameKeyEvent_Access_Array_Access_Array_Object'Class then GameKeyEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.GameKeyEvent_Package_References;

with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.input.event.GameKeyEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   function Java_Box (Value : GameKeyEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.GameKeyEvent_Package_References.Java_Box;
   function Java_Unbox_GameKeyEvent_Access_Array (Value : access Java_Object'Class) return GameKeyEvent_Access_Array_Access renames org.allbinary.game.input.event.GameKeyEvent_Package_References.Java_Unbox_GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   function Java_Box (Value : GameKeyEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.GameKeyEvent_Package_References.Java_Box;
   function Java_Unbox_GameKeyEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return GameKeyEvent_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.GameKeyEvent_Package_References.Java_Unbox_GameKeyEvent_Access_Array_Access_Array;

   type GameKeyEvent is new AllBinaryEventObject with record
      sourceId : Integer;
      repeated : Boolean;
      key : Integer;
      gameActionKey : Integer;
      originalKey : Integer;
   end record;
   NONE : GameKeyEvent_Access;

   procedure Initialize (This : in out GameKeyEvent'Class; anyType_Param : access Java_Object'Class; sourceId : Integer; originalKey : Integer; gameActionKey : Integer; key : Integer; repeated : Boolean);
   function Create (anyType_Param : access Java_Object'Class; sourceId : Integer; originalKey : Integer; gameActionKey : Integer; key : Integer; repeated : Boolean) return GameKeyEvent_Access;
   function createEvent (anyType_Param : access Java_Object'Class; sourceId : Integer; key : Integer) return GameKeyEvent_Access;
   procedure createEvent (anyType_Param : access Java_Object'Class; sourceId : Integer; key : Integer);
   procedure init (This : in out GameKeyEvent; anyType_Param : access Java_Object'Class);
   procedure setRepeatEvents (This : in out GameKeyEvent; repeated : Boolean);
   function hasRepeatEvents (This : in out GameKeyEvent) return Boolean;
   function getKey (This : in out GameKeyEvent) return Integer;
   function toString (This : in out GameKeyEvent) return Unbounded_String;
   function getOriginalKey (This : in out GameKeyEvent) return Integer;
   procedure setOriginalKey (This : in out GameKeyEvent; originalKey : Integer);
   function getGameActionKey (This : in out GameKeyEvent) return Integer;
   procedure setGameActionKey (This : in out GameKeyEvent; gameActionKey : Integer);
   function getSourceId (This : in out GameKeyEvent) return Integer;
   procedure init (This : in out GameKeyEvent; Value : Unbounded_String);

end org.allbinary.game.input.event.GameKeyEvent_Package;


