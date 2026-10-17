--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package; use org.allbinary.graphics.opengles.OpenGLProcessor_Package;

package org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package is


   type NullOpenGLProcessorFactory is tagged;
   type NullOpenGLProcessorFactory_Access is access all NullOpenGLProcessorFactory'Class;
   type NullOpenGLProcessorFactory_Access_Array is array (Natural range <>) of NullOpenGLProcessorFactory_Access;
   type NullOpenGLProcessorFactory_Access_Array_Access is access all NullOpenGLProcessorFactory_Access_Array;

   type NullOpenGLProcessorFactory is new Java_Object with null record;
   instance : OpenGLProcessor_Access;

   procedure Initialize (This : in out NullOpenGLProcessorFactory'Class);
   function Create return NullOpenGLProcessorFactory_Access;
   function getInstance return OpenGLProcessor_Access;

end org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;


