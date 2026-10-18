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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type CompleteMotionGestureInputToGameMotionGestureInput is tagged;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access is access all CompleteMotionGestureInputToGameMotionGestureInput'Class;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array is array (Natural range <>) of CompleteMotionGestureInputToGameMotionGestureInput_Access;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access is access all CompleteMotionGestureInputToGameMotionGestureInput_Access_Array;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array is array (Natural range <>) of CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array_Access is access all CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array;

   type CompleteMotionGestureInputToGameMotionGestureInput is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;
   instance : CompleteMotionGestureInputToGameMotionGestureInput_Access;

   procedure Initialize (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class);
   function Create return CompleteMotionGestureInputToGameMotionGestureInput_Access;
   function getInstance return CompleteMotionGestureInputToGameMotionGestureInput_Access;
   procedure init (This : in out CompleteMotionGestureInputToGameMotionGestureInput);

end org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;


