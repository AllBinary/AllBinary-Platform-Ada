--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
with android.view.MotionEvent_Package; use android.view.MotionEvent_Package;
with org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package; use org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.android.input.motion.MotionEventProcessor_Package; use org.allbinary.android.input.motion.MotionEventProcessor_Package;

package org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package is

   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package GameMotionGestureListener_Package renames Standard.org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BaseGameInputMotionEventProcessor is tagged;
   type BaseGameInputMotionEventProcessor_Access is access all BaseGameInputMotionEventProcessor'Class;
   type BaseGameInputMotionEventProcessor_Access_Array is array (Natural range <>) of BaseGameInputMotionEventProcessor_Access;
   type BaseGameInputMotionEventProcessor_Access_Array_Access is access all BaseGameInputMotionEventProcessor_Access_Array;
   type BaseGameInputMotionEventProcessor_Access_Array_Access_Array is array (Natural range <>) of BaseGameInputMotionEventProcessor_Access_Array_Access;
   type BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access is access all BaseGameInputMotionEventProcessor_Access_Array_Access_Array;

   type BaseGameInputMotionEventProcessor is new MotionEventProcessor with record
      commonStrings : CommonStrings_Access;
      gameMotionGestureListener : GameMotionGestureListener_Access;
   end record;

   procedure Initialize (This : in out BaseGameInputMotionEventProcessor'Class);
   function Create return BaseGameInputMotionEventProcessor_Access;
   procedure process (This : in out BaseGameInputMotionEventProcessor; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class);
   procedure addListener (This : in out BaseGameInputMotionEventProcessor);

end org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;


