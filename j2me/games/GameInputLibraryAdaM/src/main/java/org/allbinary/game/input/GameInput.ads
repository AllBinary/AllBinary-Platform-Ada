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
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.input.GameInput_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GameInput is tagged;
   type GameInput_Access is access all GameInput'Class;
   type GameInput_Access_Array is array (Natural range <>) of GameInput_Access;
   type GameInput_Access_Array_Access is access all GameInput_Access_Array;

   type GameInput is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameKeyEventList : BasicArrayList_Access;
      removalGameKeyEventList : BasicArrayList_Access;
      isRemoveDuplicateKeyPresses : Boolean;
   end record;

   procedure Initialize (This : in out GameInput'Class; gameKeyEventList : BasicArrayList_Access; removalGameKeyEventList : BasicArrayList_Access);
   function Create (gameKeyEventList : BasicArrayList_Access; removalGameKeyEventList : BasicArrayList_Access) return GameInput_Access;
   procedure add (This : in out GameInput; gameKeyEvent : GameKeyEvent_Access);
   procedure addForRemoval (This : in out GameInput; gameKeyEvent : GameKeyEvent_Access);
   function isForRemoval (This : in out GameInput; gameKeyEvent : GameKeyEvent_Access) return Boolean;
   procedure isForRemoval (This : in out GameInput; gameKeyEvent : GameKeyEvent_Access);
   procedure clear (This : in out GameInput);
   procedure removeNonAIInputGameKeyEvents (This : in out GameInput);
   procedure update (This : in out GameInput);
   function getRemovalGameKeyEventList (This : in out GameInput) return BasicArrayList_Access;
   procedure getRemovalGameKeyEventList (This : in out GameInput);
   function getGameKeyEventList (This : in out GameInput) return BasicArrayList_Access;
   procedure getGameKeyEventList (This : in out GameInput);

end org.allbinary.game.input.GameInput_Package;


