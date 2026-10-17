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

package org.allbinary.input.motion.AllMotionRecognizer_Package is


   type AllMotionRecognizer is tagged;
   type AllMotionRecognizer_Access is access all AllMotionRecognizer'Class;
   type AllMotionRecognizer_Access_Array is array (Natural range <>) of AllMotionRecognizer_Access;
   type AllMotionRecognizer_Access_Array_Access is access all AllMotionRecognizer_Access_Array;

   type AllMotionRecognizer is new Java_Object with record
      id : Integer;
   end record;
   index : Integer;

   procedure Initialize (This : in out AllMotionRecognizer'Class);
   function Create return AllMotionRecognizer_Access;
   procedure processStartMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processEndMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processDraggedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processMovedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processScrolledMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   function getId (This : in out AllMotionRecognizer) return Integer;
   procedure getId (This : in out AllMotionRecognizer);

end org.allbinary.input.motion.AllMotionRecognizer_Package;


