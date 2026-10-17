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
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.game.input.event.GameKeyEventFactory_Package is

   package GameKeyEventSourceInterface_Package renames org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package Input_Package renames org.allbinary.game.input.Input_Package;
   package InputFactory_Package renames org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;

   type GameKeyEventFactory is tagged;
   type GameKeyEventFactory_Access is access all GameKeyEventFactory'Class;
   type GameKeyEventFactory_Access_Array is array (Natural range <>) of GameKeyEventFactory_Access;
   type GameKeyEventFactory_Access_Array_Access is access all GameKeyEventFactory_Access_Array;

   type GameKeyEventFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      TOUCH_BUTTON_SOURCE_ID : Integer;
      MOTION_GESTURE_SOURCE_ID : Integer;
      MAX_SOURCES : Integer;
      ARRAY_Id : GameKeyEvent_Access_Array_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameKeyEventFactory'Class);
   function Create return GameKeyEventFactory_Access;
   function getInstance return GameKeyEventFactory_Access;
   procedure getInstance;
   procedure init (This : in out GameKeyEventFactory);
   function getInstanceForKey (This : in out GameKeyEventFactory; anyType : GameKeyEventSourceInterface_Access; key : Integer) return GameKeyEvent_Access;
   procedure getInstanceForKey (This : in out GameKeyEventFactory; anyType : GameKeyEventSourceInterface_Access; key : Integer);
   function getInstanceForInput (This : in out GameKeyEventFactory; anyType : GameKeyEventSourceInterface_Access; input : Input_Access) return GameKeyEvent_Access;
   procedure getInstanceForInput (This : in out GameKeyEventFactory; anyType : GameKeyEventSourceInterface_Access; input : Input_Access);

end org.allbinary.game.input.event.GameKeyEventFactory_Package;


