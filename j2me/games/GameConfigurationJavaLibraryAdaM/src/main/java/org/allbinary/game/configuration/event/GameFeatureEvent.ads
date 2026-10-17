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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.configuration.event.GameFeatureEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type GameFeatureEvent is tagged;
   type GameFeatureEvent_Access is access all GameFeatureEvent'Class;
   type GameFeatureEvent_Access_Array is array (Natural range <>) of GameFeatureEvent_Access;
   type GameFeatureEvent_Access_Array_Access is access all GameFeatureEvent_Access_Array;

   type GameFeatureEvent is new AllBinaryEventObject with record
      whatChanged : Unbounded_String;
   end record;

   procedure Initialize (This : in out GameFeatureEvent'Class; anyType_Param : access Java_Object'Class; whatChanged : Unbounded_String);
   function Create (anyType_Param : access Java_Object'Class; whatChanged : Unbounded_String) return GameFeatureEvent_Access;
   function getWhatChanged (This : in out GameFeatureEvent) return Unbounded_String;
   function getGameOption (This : in out GameFeatureEvent) return Java_Object_Access;

end org.allbinary.game.configuration.event.GameFeatureEvent_Package;


