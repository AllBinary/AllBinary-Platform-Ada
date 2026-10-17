--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.device.OpenGLESGraphics_Package; use org.allbinary.device.OpenGLESGraphics_Package;

package org.allbinary.device.OpenGLESGraphicsFactory_Package is


   type OpenGLESGraphicsFactory is tagged;
   type OpenGLESGraphicsFactory_Access is access all OpenGLESGraphicsFactory'Class;
   type OpenGLESGraphicsFactory_Access_Array is array (Natural range <>) of OpenGLESGraphicsFactory_Access;
   type OpenGLESGraphicsFactory_Access_Array_Access is access all OpenGLESGraphicsFactory_Access_Array;

   type OpenGLESGraphicsFactory is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLESGraphicsFactory'Class);
   function Create return OpenGLESGraphicsFactory_Access;
   function getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory) return OpenGLESGraphics_Access;

end org.allbinary.device.OpenGLESGraphicsFactory_Package;


