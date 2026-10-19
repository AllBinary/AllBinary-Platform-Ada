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
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with java.nio.Buffer_Package; use java.nio.Buffer_Package;
with java.nio.FloatBuffer_Package; use java.nio.FloatBuffer_Package;
with java.nio.IntBuffer_Package; use java.nio.IntBuffer_Package;

package org.allbinary.device.NullGL10_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Buffer_Package renames Standard.java.nio.Buffer_Package;
   package FloatBuffer_Package renames Standard.java.nio.FloatBuffer_Package;
   package IntBuffer_Package renames Standard.java.nio.IntBuffer_Package;

   type NullGL10 is tagged;
   type NullGL10_Access is access all NullGL10'Class;
   type NullGL10_Access_Array is array (Natural range <>) of NullGL10_Access;
   type NullGL10_Access_Array_Access is access all NullGL10_Access_Array;
   type NullGL10_Access_Array_Access_Array is array (Natural range <>) of NullGL10_Access_Array_Access;
   type NullGL10_Access_Array_Access_Array_Access is access all NullGL10_Access_Array_Access_Array;

   type NullGL10 is new Java_Object and GL10 with null record;
   NULL_GL10 : NullGL10_Access;

   procedure Initialize (This : in out NullGL10'Class);
   function Create return NullGL10_Access;
   procedure glActiveTexture (This : in out NullGL10; texture : Integer);
   procedure glAlphaFunc (This : in out NullGL10; func : Integer; ref : Float);
   procedure glBindTexture (This : in out NullGL10; target : Integer; texture : Integer);
   procedure glBlendFunc (This : in out NullGL10; sfactor : Integer; dfactor : Integer);
   procedure glClear (This : in out NullGL10; mask : Integer);
   procedure glClearColor (This : in out NullGL10; red : Float; green : Float; blue : Float; alpha : Float);
   procedure glClearDepthf (This : in out NullGL10; depth : Float);
   procedure glClearStencil (This : in out NullGL10; s : Integer);
   procedure glClientActiveTexture (This : in out NullGL10; texture : Integer);
   procedure glColor4f (This : in out NullGL10; red : Float; green : Float; blue : Float; alpha : Float);
   procedure glColorMask (This : in out NullGL10; red : Boolean; green : Boolean; blue : Boolean; alpha : Boolean);
   procedure glColorPointer (This : in out NullGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class);
   procedure glCompressedTexImage2D (This : in out NullGL10; target : Integer; level : Integer; internalformat : Integer; width : Integer; height : Integer; border : Integer; imageSize : Integer; data_Param : access Buffer_Package.Buffer'Class);
   procedure glCompressedTexSubImage2D (This : in out NullGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; width : Integer; height : Integer; format : Integer; imageSize : Integer; data_Param : access Buffer_Package.Buffer'Class);
   procedure glCopyTexImage2D (This : in out NullGL10; target : Integer; level : Integer; internalformat : Integer; x : Integer; y : Integer; width : Integer; height : Integer; border : Integer);
   procedure glCopyTexSubImage2D (This : in out NullGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure glCullFace (This : in out NullGL10; mode : Integer);
   procedure glDeleteTextures (This : in out NullGL10; n : Integer; textures : Integer_Array_Access; offset : Integer);
   procedure glDeleteTextures (This : in out NullGL10; n : Integer; textures_Param : access IntBuffer_Package.IntBuffer'Class);
   procedure glDepthFunc (This : in out NullGL10; func : Integer);
   procedure glDepthMask (This : in out NullGL10; flag : Boolean);
   procedure glDepthRangef (This : in out NullGL10; zNear : Float; zFar : Float);
   procedure glDisable (This : in out NullGL10; cap : Integer);
   procedure glDisableClientState (This : in out NullGL10; array_Id : Integer);
   procedure glDrawArrays (This : in out NullGL10; mode : Integer; first : Integer; count : Integer);
   procedure glDrawElements (This : in out NullGL10; mode : Integer; count : Integer; type_Id : Integer; indices_Param : access Buffer_Package.Buffer'Class);
   procedure glEnable (This : in out NullGL10; cap : Integer);
   procedure glEnableClientState (This : in out NullGL10; array_Id : Integer);
   procedure glFinish (This : in out NullGL10);
   procedure glFlush (This : in out NullGL10);
   procedure glFogf (This : in out NullGL10; pname : Integer; param : Float);
   procedure glFogfv (This : in out NullGL10; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glFogfv (This : in out NullGL10; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glFrontFace (This : in out NullGL10; mode : Integer);
   procedure glFrustumf (This : in out NullGL10; left : Float; right : Float; bottom : Float; top : Float; zNear : Float; zFar : Float);
   procedure glGenTextures (This : in out NullGL10; n : Integer; textures : Integer_Array_Access; offset : Integer);
   procedure glGenTextures (This : in out NullGL10; n : Integer; textures_Param : access IntBuffer_Package.IntBuffer'Class);
   function glGetError (This : in out NullGL10) return Integer;
   procedure glGetIntegerv (This : in out NullGL10; pname : Integer; params : Integer_Array_Access; offset : Integer);
   procedure glGetIntegerv (This : in out NullGL10; pname : Integer; params_Param : access IntBuffer_Package.IntBuffer'Class);
   function glGetString (This : in out NullGL10; name : Integer) return Unbounded_String;
   procedure glGetString (This : in out NullGL10; name : Integer);
   procedure glHint (This : in out NullGL10; target : Integer; mode : Integer);
   procedure glLightModelf (This : in out NullGL10; pname : Integer; param : Float);
   procedure glLightModelfv (This : in out NullGL10; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glLightModelfv (This : in out NullGL10; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glLightf (This : in out NullGL10; light : Integer; pname : Integer; param : Float);
   procedure glLightfv (This : in out NullGL10; light : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glLightfv (This : in out NullGL10; light : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glLineWidth (This : in out NullGL10; width : Float);
   procedure glLoadIdentity (This : in out NullGL10);
   procedure glLoadMatrixf (This : in out NullGL10; m : Float_Array_Access; offset : Integer);
   procedure glLoadMatrixf (This : in out NullGL10; m_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glLogicOp (This : in out NullGL10; opcode : Integer);
   procedure glMaterialf (This : in out NullGL10; face : Integer; pname : Integer; param : Float);
   procedure glMaterialfv (This : in out NullGL10; face : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glMaterialfv (This : in out NullGL10; face : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glMatrixMode (This : in out NullGL10; mode : Integer);
   procedure glMultMatrixf (This : in out NullGL10; m : Float_Array_Access; offset : Integer);
   procedure glMultMatrixf (This : in out NullGL10; m_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glMultiTexCoord4f (This : in out NullGL10; target : Integer; s : Float; t : Float; r : Float; q : Float);
   procedure glNormal3f (This : in out NullGL10; nx : Float; ny : Float; nz : Float);
   procedure glNormalPointer (This : in out NullGL10; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class);
   procedure glOrthof (This : in out NullGL10; left : Float; right : Float; bottom : Float; top : Float; zNear : Float; zFar : Float);
   procedure glPixelStorei (This : in out NullGL10; pname : Integer; param : Integer);
   procedure glPointSize (This : in out NullGL10; size : Float);
   procedure glPolygonOffset (This : in out NullGL10; factor : Float; units : Float);
   procedure glPopMatrix (This : in out NullGL10);
   procedure glPushMatrix (This : in out NullGL10);
   procedure glReadPixels (This : in out NullGL10; x : Integer; y : Integer; width : Integer; height : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer_Package.Buffer'Class);
   procedure glRotatef (This : in out NullGL10; angle : Float; x : Float; y : Float; z : Float);
   procedure glRotatex (This : in out NullGL10; angle : Integer; x : Integer; y : Integer; z : Integer);
   procedure glSampleCoverage (This : in out NullGL10; value : Float; invert : Boolean);
   procedure glScalef (This : in out NullGL10; x : Float; y : Float; z : Float);
   procedure glScalex (This : in out NullGL10; x : Integer; y : Integer; z : Integer);
   procedure glScissor (This : in out NullGL10; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure glShadeModel (This : in out NullGL10; mode : Integer);
   procedure glStencilFunc (This : in out NullGL10; func : Integer; ref : Integer; mask : Integer);
   procedure glStencilMask (This : in out NullGL10; mask : Integer);
   procedure glStencilOp (This : in out NullGL10; fail : Integer; zfail : Integer; zpass : Integer);
   procedure glTexCoordPointer (This : in out NullGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class);
   procedure glTexEnvf (This : in out NullGL10; target : Integer; pname : Integer; param : Float);
   procedure glTexEnvfv (This : in out NullGL10; target : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glTexEnvfv (This : in out NullGL10; target : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glTexImage2D (This : in out NullGL10; target : Integer; level : Integer; internalformat : Integer; width : Integer; height : Integer; border : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer_Package.Buffer'Class);
   procedure glTexParameterf (This : in out NullGL10; target : Integer; pname : Integer; param : Float);
   procedure glTexParameteri (This : in out NullGL10; target : Integer; pname : Integer; param : Integer);
   procedure glTexSubImage2D (This : in out NullGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; width : Integer; height : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer_Package.Buffer'Class);
   procedure glTranslatef (This : in out NullGL10; x : Float; y : Float; z : Float);
   procedure glVertexPointer (This : in out NullGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class);
   procedure glViewport (This : in out NullGL10; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure glBegin (This : in out NullGL10; i : Integer);
   procedure glEnd (This : in out NullGL10);
   procedure glVertex3f (This : in out NullGL10; f : Float; f2 : Float; f3 : Float);
   procedure glPolygonMode (This : in out NullGL10; i : Integer; i1 : Integer);

end org.allbinary.device.NullGL10_Package;


