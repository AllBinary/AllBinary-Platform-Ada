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

package org.allbinary.image.opengles.OpenGLESImageProperties_Package is


   type OpenGLESImageProperties is tagged;
   type OpenGLESImageProperties_Access is access all OpenGLESImageProperties'Class;
   type OpenGLESImageProperties_Access_Array is array (Natural range <>) of OpenGLESImageProperties_Access;
   type OpenGLESImageProperties_Access_Array_Access is access all OpenGLESImageProperties_Access_Array;

   type OpenGLESImageProperties is new Java_Object with record
      textureID : Integer;
      scaleX : Float;
      scaleY : Float;
      scaleX2 : Float;
      scaleY2 : Float;
      angle : Integer;
      redf : Float;
      greenf : Float;
      bluef : Float;
      alphaf : Float;
   end record;

   procedure Initialize (This : in out OpenGLESImageProperties'Class);
   function Create return OpenGLESImageProperties_Access;

end org.allbinary.image.opengles.OpenGLESImageProperties_Package;


