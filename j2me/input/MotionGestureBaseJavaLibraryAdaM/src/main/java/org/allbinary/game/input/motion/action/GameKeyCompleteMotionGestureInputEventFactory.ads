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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type GameKeyCompleteMotionGestureInputEventFactory is tagged;
   type GameKeyCompleteMotionGestureInputEventFactory_Access is access all GameKeyCompleteMotionGestureInputEventFactory'Class;
   type GameKeyCompleteMotionGestureInputEventFactory_Access_Array is array (Natural range <>) of GameKeyCompleteMotionGestureInputEventFactory_Access;
   type GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access is access all GameKeyCompleteMotionGestureInputEventFactory_Access_Array;

   type GameKeyCompleteMotionGestureInputEventFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      eventList : BasicArrayList_Access;
   end record;
   SINGLETON : GameKeyCompleteMotionGestureInputEventFactory_Access;

   procedure Initialize (This : in out GameKeyCompleteMotionGestureInputEventFactory'Class);
   function Create return GameKeyCompleteMotionGestureInputEventFactory_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEventFactory_Access;
   procedure add (This : in out GameKeyCompleteMotionGestureInputEventFactory; gameKeyCompleteMotionGestureInputEvent_Param : access GameKeyCompleteMotionGestureInputEvent_Package.GameKeyCompleteMotionGestureInputEvent'Class);
   procedure updateAll (This : in out GameKeyCompleteMotionGestureInputEventFactory);

end org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package;


