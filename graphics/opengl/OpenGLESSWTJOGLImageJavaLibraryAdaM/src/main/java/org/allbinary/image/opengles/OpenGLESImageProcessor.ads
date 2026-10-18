-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;

package org.allbinary.image.opengles.OpenGLESImageProcessor_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;

   type OpenGLESImageProcessor is tagged;
   type OpenGLESImageProcessor_Access is access all OpenGLESImageProcessor'Class;
   type OpenGLESImageProcessor_Access_Array is array (Natural range <>) of OpenGLESImageProcessor_Access;
   type OpenGLESImageProcessor_Access_Array_Access is access all OpenGLESImageProcessor_Access_Array;

   type OpenGLESImageProcessor is new Java_Object with null record;
   instance : OpenGLESImageProcessor_Access;

   procedure Initialize (This : in out OpenGLESImageProcessor'Class);
   function Create return OpenGLESImageProcessor_Access;
   function getInstance return OpenGLESImageProcessor_Access;
   procedure translate (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; translateX : Float; translateY : Float);
   procedure rotate (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; angle : Float);
   procedure scale (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; scaleX : Float; scaleY : Float);
   procedure colorMask (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; red : Float; green : Float; blue : Float; alpha : Float);

end org.allbinary.image.opengles.OpenGLESImageProcessor_Package;


