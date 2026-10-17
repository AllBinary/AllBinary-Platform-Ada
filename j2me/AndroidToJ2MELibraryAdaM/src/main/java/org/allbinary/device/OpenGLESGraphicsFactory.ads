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

package org.allbinary.device.OpenGLESGraphicsFactory_Package is


   type OpenGLESGraphicsFactory is tagged;
   type OpenGLESGraphicsFactory_Access is access all OpenGLESGraphicsFactory'Class;
   type OpenGLESGraphicsFactory_Access_Array is array (Natural range <>) of OpenGLESGraphicsFactory_Access;
   type OpenGLESGraphicsFactory_Access_Array_Access is access all OpenGLESGraphicsFactory_Access_Array;

   type OpenGLESGraphicsFactory is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLESGraphicsFactory'Class);
   function Create return OpenGLESGraphicsFactory_Access;
   function getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory) return OpenGLESGraphics_Access;
   procedure getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory);

end org.allbinary.device.OpenGLESGraphicsFactory_Package;


