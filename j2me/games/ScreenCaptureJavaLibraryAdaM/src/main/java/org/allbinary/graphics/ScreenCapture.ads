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

package org.allbinary.graphics.ScreenCapture_Package is


   type ScreenCapture is tagged;
   type ScreenCapture_Access is access all ScreenCapture'Class;
   type ScreenCapture_Access_Array is array (Natural range <>) of ScreenCapture_Access;
   type ScreenCapture_Access_Array_Access is access all ScreenCapture_Access_Array;
   type ScreenCapture_Access_Array_Access_Array is array (Natural range <>) of ScreenCapture_Access_Array_Access;
   type ScreenCapture_Access_Array_Access_Array_Access is access all ScreenCapture_Access_Array_Access_Array;

   type ScreenCapture is new Java_Object with null record;

   procedure Initialize (This : in out ScreenCapture'Class);
   function Create return ScreenCapture_Access;
   procedure saveFrame (This : in out ScreenCapture);
   procedure startRecording (This : in out ScreenCapture);
   procedure endRecording (This : in out ScreenCapture);

end org.allbinary.graphics.ScreenCapture_Package;


