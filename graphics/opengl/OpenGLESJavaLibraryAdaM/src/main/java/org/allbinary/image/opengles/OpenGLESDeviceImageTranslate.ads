-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package; use org.allbinary.image.opengles.OpenGLESImageTranslate_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;

package org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package is


   type OpenGLESDeviceImageTranslate is tagged;
   type OpenGLESDeviceImageTranslate_Access is access all OpenGLESDeviceImageTranslate'Class;
   type OpenGLESDeviceImageTranslate_Access_Array is array (Natural range <>) of OpenGLESDeviceImageTranslate_Access;
   type OpenGLESDeviceImageTranslate_Access_Array_Access is access all OpenGLESDeviceImageTranslate_Access_Array;

   type OpenGLESDeviceImageTranslate is new OpenGLESImageTranslate with record
      translateX : Float;
      translateY : Float;
      translateX2 : Float;
      translateY2 : Float;
   end record;

   procedure Initialize (This : in out OpenGLESDeviceImageTranslate'Class);
   function Create return OpenGLESDeviceImageTranslate_Access;
   procedure translate (This : in out OpenGLESDeviceImageTranslate; gl_Param : access GL10_Package.GL10'Class; openGLESImage_Param : access OpenGLESImage_Package.OpenGLESImage'Class; x : Float; y : Float);
   procedure translate2 (This : in out OpenGLESDeviceImageTranslate; gl_Param : access GL10_Package.GL10'Class; openGLESImage_Param : access OpenGLESImage_Package.OpenGLESImage'Class);

end org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;


