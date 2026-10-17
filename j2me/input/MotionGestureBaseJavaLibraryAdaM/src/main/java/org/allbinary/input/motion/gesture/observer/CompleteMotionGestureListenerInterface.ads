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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type CompleteMotionGestureListenerInterface is interface;
   type CompleteMotionGestureListenerInterface_Access is access all CompleteMotionGestureListenerInterface'Class;
   type CompleteMotionGestureListenerInterface_Access_Array is array (Natural range <>) of CompleteMotionGestureListenerInterface_Access;
   type CompleteMotionGestureListenerInterface_Access_Array_Access is access all CompleteMotionGestureListenerInterface_Access_Array;
   procedure onMotionGestureCompleted (This : in out CompleteMotionGestureListenerInterface; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;

end org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;


