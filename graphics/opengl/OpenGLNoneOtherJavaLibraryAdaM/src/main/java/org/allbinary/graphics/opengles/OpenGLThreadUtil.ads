--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.OpenGLThreadUtil_Package is


   type OpenGLThreadUtil is tagged;
   type OpenGLThreadUtil_Access is access all OpenGLThreadUtil'Class;
   type OpenGLThreadUtil_Access_Array is array (Natural range <>) of OpenGLThreadUtil_Access;
   type OpenGLThreadUtil_Access_Array_Access is access all OpenGLThreadUtil_Access_Array;

   type OpenGLThreadUtil is new Java_Object with null record;
   instance : OpenGLThreadUtil_Access;

   procedure Initialize (This : in out OpenGLThreadUtil'Class);
   function Create return OpenGLThreadUtil_Access;
   function getInstance return OpenGLThreadUtil_Access;
   procedure set (This : in out OpenGLThreadUtil; glSurfaceView : Java_Object_Access);
   procedure onPause (This : in out OpenGLThreadUtil);
   procedure onResume (This : in out OpenGLThreadUtil);

end org.allbinary.graphics.opengles.OpenGLThreadUtil_Package;


