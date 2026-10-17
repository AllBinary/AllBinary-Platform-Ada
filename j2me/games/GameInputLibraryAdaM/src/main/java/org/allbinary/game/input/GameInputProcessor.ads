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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.input.GameInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type GameInputProcessor is tagged;
   type GameInputProcessor_Access is access all GameInputProcessor'Class;
   type GameInputProcessor_Access_Array is array (Natural range <>) of GameInputProcessor_Access;
   type GameInputProcessor_Access_Array_Access is access all GameInputProcessor_Access_Array;

   type GameInputProcessor is new Java_Object with null record;
   instance : GameInputProcessor_Access;

   procedure Initialize (This : in out GameInputProcessor'Class);
   function Create return GameInputProcessor_Access;
   function getInstance return GameInputProcessor_Access;
   procedure processEvent (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class);
   procedure processReleasedEvent (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class);
   procedure processAnalog (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class; analogValue : Integer);
   procedure process (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; keyAsInteger : Integer);
   procedure processReleased (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; keyAsInteger : Integer);

end org.allbinary.game.input.GameInputProcessor_Package;


