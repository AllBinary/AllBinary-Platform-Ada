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

limited with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package;
package org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References is
   type GameKeyCompleteMotionGestureInputEventFactory_Access is access all org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package.GameKeyCompleteMotionGestureInputEventFactory'Class;
   type GameKeyCompleteMotionGestureInputEventFactory_Access_Array is array (Natural range <>) of GameKeyCompleteMotionGestureInputEventFactory_Access;
   type GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access is access all GameKeyCompleteMotionGestureInputEventFactory_Access_Array;
   type GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array is array (Natural range <>) of GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access;
   type GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array_Access is access all GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array;
end org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References;

with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References;

package org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype GameKeyCompleteMotionGestureInputEvent_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access;
   use type GameKeyCompleteMotionGestureInputEvent_Access;
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array;
   use type GameKeyCompleteMotionGestureInputEvent_Access_Array;
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access;
   use type GameKeyCompleteMotionGestureInputEvent_Access_Array_Access;
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array;
   use type GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array;
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   use type GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameKeyCompleteMotionGestureInputEventFactory_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References.GameKeyCompleteMotionGestureInputEventFactory_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEventFactory_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEventFactory_Access_Array is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References.GameKeyCompleteMotionGestureInputEventFactory_Access_Array;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEventFactory_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References.GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References.GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References.GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEventFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package_References."=";

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


