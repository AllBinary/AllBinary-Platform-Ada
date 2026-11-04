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

limited with org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package;
package org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References is
   type NullCompleteMotionGestureReceiver_Access is access all org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package.NullCompleteMotionGestureReceiver'Class;
   type NullCompleteMotionGestureReceiver_Access_Array is array (Natural range <>) of NullCompleteMotionGestureReceiver_Access;
   type NullCompleteMotionGestureReceiver_Access_Array_Access is access all NullCompleteMotionGestureReceiver_Access_Array;
   type NullCompleteMotionGestureReceiver_Access_Array_Access_Array is array (Natural range <>) of NullCompleteMotionGestureReceiver_Access_Array_Access;
   type NullCompleteMotionGestureReceiver_Access_Array_Access_Array_Access is access all NullCompleteMotionGestureReceiver_Access_Array_Access_Array;
end org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References;

with org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References;
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
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package; use org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;

package org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype NullCompleteMotionGestureReceiver_Access is org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References.NullCompleteMotionGestureReceiver_Access;
   function "=" (Left, Right : NullCompleteMotionGestureReceiver_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References."=";
   subtype NullCompleteMotionGestureReceiver_Access_Array is org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References.NullCompleteMotionGestureReceiver_Access_Array;
   function "=" (Left, Right : NullCompleteMotionGestureReceiver_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References."=";
   subtype NullCompleteMotionGestureReceiver_Access_Array_Access is org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References.NullCompleteMotionGestureReceiver_Access_Array_Access;
   function "=" (Left, Right : NullCompleteMotionGestureReceiver_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References."=";
   subtype NullCompleteMotionGestureReceiver_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References.NullCompleteMotionGestureReceiver_Access_Array_Access_Array;
   function "=" (Left, Right : NullCompleteMotionGestureReceiver_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References."=";
   subtype NullCompleteMotionGestureReceiver_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References.NullCompleteMotionGestureReceiver_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullCompleteMotionGestureReceiver_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package_References."=";

   type NullCompleteMotionGestureReceiver is new Java_Object and CompleteMotionGestureListenerInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NullCompleteMotionGestureReceiver'Class);
   function Create return NullCompleteMotionGestureReceiver_Access;
   procedure onMotionGestureCompleted (This : in out NullCompleteMotionGestureReceiver; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package;


