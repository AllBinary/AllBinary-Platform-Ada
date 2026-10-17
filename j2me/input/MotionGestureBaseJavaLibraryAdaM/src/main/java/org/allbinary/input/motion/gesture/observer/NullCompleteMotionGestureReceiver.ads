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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package; use org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;

package org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NullCompleteMotionGestureReceiver is tagged;
   type NullCompleteMotionGestureReceiver_Access is access all NullCompleteMotionGestureReceiver'Class;
   type NullCompleteMotionGestureReceiver_Access_Array is array (Natural range <>) of NullCompleteMotionGestureReceiver_Access;
   type NullCompleteMotionGestureReceiver_Access_Array_Access is access all NullCompleteMotionGestureReceiver_Access_Array;

   type NullCompleteMotionGestureReceiver is new CompleteMotionGestureListenerInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NullCompleteMotionGestureReceiver'Class);
   function Create return NullCompleteMotionGestureReceiver_Access;
   procedure onMotionGestureCompleted (This : in out NullCompleteMotionGestureReceiver; list_Param : access BasicArrayList'Class);

end org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package;


