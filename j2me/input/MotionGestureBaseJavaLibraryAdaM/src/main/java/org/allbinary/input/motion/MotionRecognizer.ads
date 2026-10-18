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

package org.allbinary.input.motion.MotionRecognizer_Package is


   type MotionRecognizer is tagged;
   type MotionRecognizer_Access is access all MotionRecognizer'Class;
   type MotionRecognizer_Access_Array is array (Natural range <>) of MotionRecognizer_Access;
   type MotionRecognizer_Access_Array_Access is access all MotionRecognizer_Access_Array;
   type MotionRecognizer_Access_Array_Access_Array is array (Natural range <>) of MotionRecognizer_Access_Array_Access;
   type MotionRecognizer_Access_Array_Access_Array_Access is access all MotionRecognizer_Access_Array_Access_Array;

   type MotionRecognizer is new Java_Object with null record;

   procedure Initialize (This : in out MotionRecognizer'Class);
   function Create return MotionRecognizer_Access;
   procedure processStartMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processEndMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processDraggedMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);

end org.allbinary.input.motion.MotionRecognizer_Package;


