--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.device.OpenGLESNullGraphicsFactory_Package is


   type OpenGLESNullGraphicsFactory is tagged;
   type OpenGLESNullGraphicsFactory_Access is access all OpenGLESNullGraphicsFactory'Class;
   type OpenGLESNullGraphicsFactory_Access_Array is array (Natural range <>) of OpenGLESNullGraphicsFactory_Access;
   type OpenGLESNullGraphicsFactory_Access_Array_Access is access all OpenGLESNullGraphicsFactory_Access_Array;

   type OpenGLESNullGraphicsFactory is new Java_Object with null record;
   instance : OpenGLESGraphics_Access;

   procedure Initialize (This : in out OpenGLESNullGraphicsFactory'Class);
   function Create return OpenGLESNullGraphicsFactory_Access;
   function getInstance return OpenGLESGraphics_Access;
   procedure getInstance;

end org.allbinary.device.OpenGLESNullGraphicsFactory_Package;


