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
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;

package org.allbinary.image.opengles.OpenGLESImageTranslate_Package is


   type OpenGLESImageTranslate is tagged;
   type OpenGLESImageTranslate_Access is access all OpenGLESImageTranslate'Class;
   type OpenGLESImageTranslate_Access_Array is array (Natural range <>) of OpenGLESImageTranslate_Access;
   type OpenGLESImageTranslate_Access_Array_Access is access all OpenGLESImageTranslate_Access_Array;

   type OpenGLESImageTranslate is new Java_Object with null record;
   instance : OpenGLESImageTranslate_Access;

   procedure Initialize (This : in out OpenGLESImageTranslate'Class);
   function Create return OpenGLESImageTranslate_Access;
   function getInstance return OpenGLESImageTranslate_Access;
   procedure translate (This : in out OpenGLESImageTranslate; gl : GL10_Access; openGLESImage : OpenGLESImage_Access; x : Float; y : Float);
   procedure translate2 (This : in out OpenGLESImageTranslate; gl : GL10_Access; openGLESImage : OpenGLESImage_Access);

end org.allbinary.image.opengles.OpenGLESImageTranslate_Package;


