--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
with com.jogamp.opengl.glu.GLU_Package; use com.jogamp.opengl.glu.GLU_Package;
with org.allbinary.opengles.GL10_Package; use org.allbinary.opengles.GL10_Package;

package org.allbinary.opengles.JOGL10_Package is

   package GLU_Package renames Standard.com.jogamp.opengl.glu.GLU_Package;

   type JOGL10 is tagged;
   type JOGL10_Access is access all JOGL10'Class;
   type JOGL10_Access_Array is array (Natural range <>) of JOGL10_Access;
   type JOGL10_Access_Array_Access is access all JOGL10_Access_Array;
   type JOGL10_Access_Array_Access_Array is array (Natural range <>) of JOGL10_Access_Array_Access;
   type JOGL10_Access_Array_Access_Array_Access is access all JOGL10_Access_Array_Access_Array;

   type JOGL10 is new Java_Object and GL10 with record
      RED : Unbounded_String;
      GREEN : Unbounded_String;
      BLUE : Unbounded_String;
      ALPHA : Unbounded_String;
      PNAME : Unbounded_String;
      U_PNAME : Unbounded_String;
      PARAM : Unbounded_String;
      PARAMS : Unbounded_String;
      LIGHT : Unbounded_String;
      FACE : Unbounded_String;
      TARGET : Unbounded_String;
      gl10 : GL2_Access;
      glu : GLU_Access;
      GL_LINE : Integer;
      GL_QUAD_STRIP : Integer;
   end record;

   procedure Initialize (This : in out JOGL10'Class; gl_Param : access GL_Package.GL'Class; gl2_Param : access GL2_Package.GL2'Class);
   function Create (gl_Param : access GL_Package.GL'Class; gl2_Param : access GL2_Package.GL2'Class) return JOGL10_Access;
   function getJOGLGL (This : in out JOGL10) return GL2_Access;
   procedure glActiveTexture (This : in out JOGL10; texture : Integer);
   procedure glAlphaFunc (This : in out JOGL10; func : Integer; ref : Float);
   procedure glBindTexture (This : in out JOGL10; target : Integer; texture : Integer);
   procedure glBlendFunc (This : in out JOGL10; sfactor : Integer; dfactor : Integer);
   procedure glClear (This : in out JOGL10; mask : Integer);
   procedure glClearColor (This : in out JOGL10; red : Float; green : Float; blue : Float; alpha : Float);
   procedure glClearDepthf (This : in out JOGL10; depth : Float);
   procedure glClearStencil (This : in out JOGL10; s : Integer);
   procedure glClientActiveTexture (This : in out JOGL10; texture : Integer);
   procedure glColor4f (This : in out JOGL10; red : Float; green : Float; blue : Float; alpha : Float);
   procedure glColorMask (This : in out JOGL10; red : Boolean; green : Boolean; blue : Boolean; alpha : Boolean);
   procedure glColorPointer (This : in out JOGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class);
   procedure glCompressedTexImage2D (This : in out JOGL10; target : Integer; level : Integer; internalformat : Integer; width : Integer; height : Integer; border : Integer; imageSize : Integer; data_Param : access Buffer_Package.Buffer'Class);
   procedure glCompressedTexSubImage2D (This : in out JOGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; width : Integer; height : Integer; format : Integer; imageSize : Integer; data_Param : access Buffer_Package.Buffer'Class);
   procedure glCopyTexImage2D (This : in out JOGL10; target : Integer; level : Integer; internalformat : Integer; x : Integer; y : Integer; width : Integer; height : Integer; border : Integer);
   procedure glCopyTexSubImage2D (This : in out JOGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure glCullFace (This : in out JOGL10; mode : Integer);
   procedure glDeleteTextures (This : in out JOGL10; n : Integer; textures : Integer_Array_Access; offset : Integer);
   procedure glDeleteTextures (This : in out JOGL10; n : Integer; textures_Param : access IntBuffer_Package.IntBuffer'Class);
   procedure glDepthFunc (This : in out JOGL10; func : Integer);
   procedure glDepthMask (This : in out JOGL10; flag : Boolean);
   procedure glDepthRangef (This : in out JOGL10; zNear : Float; zFar : Float);
   procedure glDisable (This : in out JOGL10; cap : Integer);
   procedure glDisableClientState (This : in out JOGL10; array_Id : Integer);
   procedure glDrawArrays (This : in out JOGL10; mode : Integer; first : Integer; count : Integer);
   procedure glDrawElements (This : in out JOGL10; mode : Integer; count : Integer; type_Id : Integer; indices_Param : access Buffer_Package.Buffer'Class);
   procedure glEnable (This : in out JOGL10; cap : Integer);
   procedure glEnableClientState (This : in out JOGL10; array_Id : Integer);
   procedure glFinish (This : in out JOGL10);
   procedure glFlush (This : in out JOGL10);
   procedure glFogf (This : in out JOGL10; pname : Integer; param : Float);
   procedure glFogfv (This : in out JOGL10; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glFogfv (This : in out JOGL10; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glFrontFace (This : in out JOGL10; mode : Integer);
   procedure glFrustumf (This : in out JOGL10; left : Float; right : Float; bottom : Float; top : Float; zNear : Float; zFar : Float);
   procedure glGenTextures (This : in out JOGL10; n : Integer; textures : Integer_Array_Access; offset : Integer);
   procedure glGenTextures (This : in out JOGL10; n : Integer; textures_Param : access IntBuffer_Package.IntBuffer'Class);
   function glGetError (This : in out JOGL10) return Integer;
   procedure glGetIntegerv (This : in out JOGL10; pname : Integer; params : Integer_Array_Access; offset : Integer);
   procedure glGetIntegerv (This : in out JOGL10; pname : Integer; params_Param : access IntBuffer_Package.IntBuffer'Class);
   function glGetString (This : in out JOGL10; name : Integer) return Unbounded_String;
   procedure glGetString (This : in out JOGL10; name : Integer);
   procedure glHint (This : in out JOGL10; target : Integer; mode : Integer);
   procedure glLightModelf (This : in out JOGL10; pname : Integer; param : Float);
   procedure glLightModelfv (This : in out JOGL10; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glLightModelfv (This : in out JOGL10; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glLightf (This : in out JOGL10; light : Integer; pname : Integer; param : Float);
   procedure glLightfv (This : in out JOGL10; light : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glLightfv (This : in out JOGL10; light : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glLineWidth (This : in out JOGL10; width : Float);
   procedure glLoadIdentity (This : in out JOGL10);
   procedure glLoadMatrixf (This : in out JOGL10; m : Float_Array_Access; offset : Integer);
   procedure glLoadMatrixf (This : in out JOGL10; m_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glLogicOp (This : in out JOGL10; opcode : Integer);
   procedure glMaterialf (This : in out JOGL10; face : Integer; pname : Integer; param : Float);
   procedure glMaterialfv (This : in out JOGL10; face : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glMaterialfv (This : in out JOGL10; face : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glMatrixMode (This : in out JOGL10; mode : Integer);
   procedure glMultMatrixf (This : in out JOGL10; m : Float_Array_Access; offset : Integer);
   procedure glMultMatrixf (This : in out JOGL10; m_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glMultiTexCoord4f (This : in out JOGL10; target : Integer; s : Float; t : Float; r : Float; q : Float);
   procedure glNormal3f (This : in out JOGL10; nx : Float; ny : Float; nz : Float);
   procedure glNormalPointer (This : in out JOGL10; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class);
   procedure glOrthof (This : in out JOGL10; left : Float; right : Float; bottom : Float; top : Float; zNear : Float; zFar : Float);
   procedure glPixelStorei (This : in out JOGL10; pname : Integer; param : Integer);
   procedure glPointSize (This : in out JOGL10; size : Float);
   procedure glPolygonOffset (This : in out JOGL10; factor : Float; units : Float);
   procedure glPopMatrix (This : in out JOGL10);
   procedure glPushMatrix (This : in out JOGL10);
   procedure glReadPixels (This : in out JOGL10; x : Integer; y : Integer; width : Integer; height : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer_Package.Buffer'Class);
   procedure glRotatef (This : in out JOGL10; angle : Float; x : Float; y : Float; z : Float);
   procedure glRotatex (This : in out JOGL10; angle : Integer; x : Integer; y : Integer; z : Integer);
   procedure glSampleCoverage (This : in out JOGL10; value : Float; invert : Boolean);
   procedure glScalef (This : in out JOGL10; x : Float; y : Float; z : Float);
   procedure glScalex (This : in out JOGL10; x : Integer; y : Integer; z : Integer);
   procedure glScissor (This : in out JOGL10; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure glShadeModel (This : in out JOGL10; mode : Integer);
   procedure glStencilFunc (This : in out JOGL10; func : Integer; ref : Integer; mask : Integer);
   procedure glStencilMask (This : in out JOGL10; mask : Integer);
   procedure glStencilOp (This : in out JOGL10; fail : Integer; zfail : Integer; zpass : Integer);
   procedure glTexCoordPointer (This : in out JOGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class);
   procedure glTexEnvf (This : in out JOGL10; target : Integer; pname : Integer; param : Float);
   procedure glTexEnvfv (This : in out JOGL10; target : Integer; pname : Integer; params : Float_Array_Access; offset : Integer);
   procedure glTexEnvfv (This : in out JOGL10; target : Integer; pname : Integer; params_Param : access FloatBuffer_Package.FloatBuffer'Class);
   procedure glTexImage2D (This : in out JOGL10; target : Integer; level : Integer; internalformat : Integer; width : Integer; height : Integer; border : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer_Package.Buffer'Class);
   procedure glTexParameterf (This : in out JOGL10; target : Integer; pname : Integer; param : Float);
   procedure glTexParameteri (This : in out JOGL10; target : Integer; pname : Integer; param : Integer);
   procedure glTexSubImage2D (This : in out JOGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; width : Integer; height : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer_Package.Buffer'Class);
   procedure glTranslatef (This : in out JOGL10; x : Float; y : Float; z : Float);
   procedure glVertexPointer (This : in out JOGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class);
   procedure glViewport (This : in out JOGL10; x : Integer; y : Integer; width : Integer; height : Integer);
   procedure glBegin (This : in out JOGL10; i : Integer);
   procedure glEnd (This : in out JOGL10);
   procedure glVertex3f (This : in out JOGL10; f : Float; f2 : Float; f3 : Float);
   procedure glPolygonMode (This : in out JOGL10; i : Integer; i1 : Integer);

end org.allbinary.opengles.JOGL10_Package;


