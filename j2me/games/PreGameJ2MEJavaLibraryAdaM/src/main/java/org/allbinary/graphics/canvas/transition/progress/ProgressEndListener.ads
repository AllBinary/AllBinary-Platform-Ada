-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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

package org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package is


   type ProgressEndListener is tagged;
   type ProgressEndListener_Access is access all ProgressEndListener'Class;
   type ProgressEndListener_Access_Array is array (Natural range <>) of ProgressEndListener_Access;
   type ProgressEndListener_Access_Array_Access is access all ProgressEndListener_Access_Array;
   type ProgressEndListener_Access_Array_Access_Array is array (Natural range <>) of ProgressEndListener_Access_Array_Access;
   type ProgressEndListener_Access_Array_Access_Array_Access is access all ProgressEndListener_Access_Array_Access_Array;

   type ProgressEndListener is new Java_Object with null record;
   instance : ProgressEndListener_Access;

   procedure Initialize (This : in out ProgressEndListener'Class);
   function Create return ProgressEndListener_Access;
   procedure onEndEvent (This : in out ProgressEndListener);

end org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;


