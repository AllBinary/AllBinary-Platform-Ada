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

package org.allbinary.image.opengles.OpenGLESImageDraw_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;

   type OpenGLESImageDraw is tagged;
   type OpenGLESImageDraw_Access is access all OpenGLESImageDraw'Class;
   type OpenGLESImageDraw_Access_Array is array (Natural range <>) of OpenGLESImageDraw_Access;
   type OpenGLESImageDraw_Access_Array_Access is access all OpenGLESImageDraw_Access_Array;

   type OpenGLESImageDraw is new Java_Object with null record;
   instance : OpenGLESImageDraw_Access;

   procedure Initialize (This : in out OpenGLESImageDraw'Class);
   function Create return OpenGLESImageDraw_Access;
   function getInstance return OpenGLESImageDraw_Access;
   procedure drawRegion (This : in out OpenGLESImageDraw; gl_Param : access GL10_Package.GL10'Class; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer);
   procedure draw (This : in out OpenGLESImageDraw; gl_Param : access GL10_Package.GL10'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.image.opengles.OpenGLESImageDraw_Package;


