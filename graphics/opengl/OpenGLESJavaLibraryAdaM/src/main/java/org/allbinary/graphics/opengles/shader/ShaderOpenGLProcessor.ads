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
with org.allbinary.graphics.opengles.OpenGLProcessor_Package; use org.allbinary.graphics.opengles.OpenGLProcessor_Package;

package org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package is

   package OpenGLProcessor_Package renames Standard.org.allbinary.graphics.opengles.OpenGLProcessor_Package;

   type ShaderOpenGLProcessor is tagged;
   type ShaderOpenGLProcessor_Access is access all ShaderOpenGLProcessor'Class;
   type ShaderOpenGLProcessor_Access_Array is array (Natural range <>) of ShaderOpenGLProcessor_Access;
   type ShaderOpenGLProcessor_Access_Array_Access is access all ShaderOpenGLProcessor_Access_Array;

   type ShaderOpenGLProcessor is new OpenGLProcessor with null record;

   procedure Initialize (This : in out ShaderOpenGLProcessor'Class);
   function Create return ShaderOpenGLProcessor_Access;
   procedure process0 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10'Class);
   procedure process1 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10'Class);
   procedure process (This : in out ShaderOpenGLProcessor; gl_Param : access GL10'Class);
   procedure process2 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10'Class);
   procedure process3 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10'Class);

end org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package;


