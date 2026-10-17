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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.input.event.GameKeyEvent_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type GameKeyEvent is tagged;
   type GameKeyEvent_Access is access all GameKeyEvent'Class;
   type GameKeyEvent_Access_Array is array (Natural range <>) of GameKeyEvent_Access;
   type GameKeyEvent_Access_Array_Access is access all GameKeyEvent_Access_Array;

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

end org.allbinary.game.input.event.GameKeyEvent_Package;


