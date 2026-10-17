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

package org.platform.opengl.OpenGLGLU_Package is


   type OpenGLGLU is tagged;
   type OpenGLGLU_Access is access all OpenGLGLU'Class;
   type OpenGLGLU_Access_Array is array (Natural range <>) of OpenGLGLU_Access;
   type OpenGLGLU_Access_Array_Access is access all OpenGLGLU_Access_Array;

   type OpenGLGLU is new Java_Object with null record;
   instance : OpenGLGLU_Access;

   procedure Initialize (This : in out OpenGLGLU'Class);
   function Create return OpenGLGLU_Access;
   function getInstance return OpenGLGLU_Access;
   procedure getInstance;
   procedure gluLookAt (This : in out OpenGLGLU; gl : GL10_Access; eyeX : Float; eyeY : Float; eyeZ : Float; centerX : Float; centerY : Float; centerZ : Float; upX : Float; upY : Float; upZ : Float);
   function gluProject (This : in out OpenGLGLU; gl : GL10_Access; objX : Float; objY : Float; objZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; win : Float_Array_Access; winOffset : Integer) return Integer;
   procedure gluProject (This : in out OpenGLGLU; gl : GL10_Access; objX : Float; objY : Float; objZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; win : Float_Array_Access; winOffset : Integer);
   function gluUnProject (This : in out OpenGLGLU; gl : GL10_Access; winX : Float; winY : Float; winZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; obj : Float_Array_Access; objOffset : Integer) return Integer;
   procedure gluUnProject (This : in out OpenGLGLU; gl : GL10_Access; winX : Float; winY : Float; winZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; obj : Float_Array_Access; objOffset : Integer);
   procedure glFrustumf (This : in out OpenGLGLU; gl : GL10_Access; lt : Float; rt : Float; btm : Float; top : Float; zNear : Float; zFar : Float);

end org.platform.opengl.OpenGLGLU_Package;


