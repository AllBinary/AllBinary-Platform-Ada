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
with org.allbinary.graphics.ScreenCapture_Package; use org.allbinary.graphics.ScreenCapture_Package;

package org.allbinary.graphics.ScreenCaptureNoneFactory_Package is


   type ScreenCaptureNoneFactory is tagged;
   type ScreenCaptureNoneFactory_Access is access all ScreenCaptureNoneFactory'Class;
   type ScreenCaptureNoneFactory_Access_Array is array (Natural range <>) of ScreenCaptureNoneFactory_Access;
   type ScreenCaptureNoneFactory_Access_Array_Access is access all ScreenCaptureNoneFactory_Access_Array;
   type ScreenCaptureNoneFactory_Access_Array_Access_Array is array (Natural range <>) of ScreenCaptureNoneFactory_Access_Array_Access;
   type ScreenCaptureNoneFactory_Access_Array_Access_Array_Access is access all ScreenCaptureNoneFactory_Access_Array_Access_Array;

   type ScreenCaptureNoneFactory is new Java_Object with null record;
   instance : ScreenCapture_Access;

   procedure Initialize (This : in out ScreenCaptureNoneFactory'Class);
   function Create return ScreenCaptureNoneFactory_Access;
   function getInstance return ScreenCapture_Access;

end org.allbinary.graphics.ScreenCaptureNoneFactory_Package;


