--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;

package org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package is


   type OpenGLSurfaceChangedInterface is interface;
   type OpenGLSurfaceChangedInterface_Access is access all OpenGLSurfaceChangedInterface'Class;
   type OpenGLSurfaceChangedInterface_Access_Array is array (Natural range <>) of OpenGLSurfaceChangedInterface_Access;
   type OpenGLSurfaceChangedInterface_Access_Array_Access is access all OpenGLSurfaceChangedInterface_Access_Array;
   procedure set (This : in out OpenGLSurfaceChangedInterface; gl_Param : access GL'Class) is abstract;

end org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;


