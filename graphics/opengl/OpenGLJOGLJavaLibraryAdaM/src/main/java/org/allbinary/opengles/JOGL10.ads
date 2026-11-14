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

with AllBinary_Java;
limited with org.allbinary.opengles.JOGL10_Package;
package org.allbinary.opengles.JOGL10_Package_References is
   type JOGL10_Access is access all org.allbinary.opengles.JOGL10_Package.JOGL10'Class;
   type JOGL10_Access_Array is array (Natural range <>) of JOGL10_Access;
   type JOGL10_Access_Array_Access is access all JOGL10_Access_Array;
   type JOGL10_Access_Array_Access_Array is array (Natural range <>) of JOGL10_Access_Array_Access;
   type JOGL10_Access_Array_Access_Array_Access is access all JOGL10_Access_Array_Access_Array;
   type JOGL10_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JOGL10_Access_Array_Access;
   end record;
   function Java_Box (Value : JOGL10_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JOGL10_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JOGL10_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JOGL10_Access_Array_Access is (if Value /= null and then Value.all in JOGL10_Access_Array_Object'Class then JOGL10_Access_Array_Object'Class (Value.all).Value else null);
   type JOGL10_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JOGL10_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : JOGL10_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JOGL10_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JOGL10_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JOGL10_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in JOGL10_Access_Array_Access_Array_Object'Class then JOGL10_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.opengles.JOGL10_Package_References;

with org.allbinary.opengles.JOGL10_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with com.jogamp.opengl.glu.GLU_Package;
with com.jogamp.opengl.glu.GLU_Package_References;
with com.jogamp.opengl.GL_Package; use com.jogamp.opengl.GL_Package;
limited with com.jogamp.opengl.GL2_Package;
with com.jogamp.opengl.GL2_Package_References;
with java.nio.Buffer_Package; use java.nio.Buffer_Package;
with java.nio.FloatBuffer_Package; use java.nio.FloatBuffer_Package;
with java.nio.IntBuffer_Package; use java.nio.IntBuffer_Package;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;

package org.allbinary.opengles.JOGL10_Package is

   package GLU_Package renames Standard.com.jogamp.opengl.glu.GLU_Package;
   package GL_Package renames Standard.com.jogamp.opengl.GL_Package;
   package GL2_Package renames Standard.com.jogamp.opengl.GL2_Package;
   package Buffer_Package renames Standard.java.nio.Buffer_Package;
   package FloatBuffer_Package renames Standard.java.nio.FloatBuffer_Package;
   package IntBuffer_Package renames Standard.java.nio.IntBuffer_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Reference_Types is
   subtype GLU_Access is com.jogamp.opengl.glu.GLU_Package_References.GLU_Access;
   use type GLU_Access;
   subtype GLU_Access_Array is com.jogamp.opengl.glu.GLU_Package_References.GLU_Access_Array;
   use type GLU_Access_Array;
   subtype GLU_Access_Array_Access is com.jogamp.opengl.glu.GLU_Package_References.GLU_Access_Array_Access;
   use type GLU_Access_Array_Access;
   subtype GLU_Access_Array_Access_Array is com.jogamp.opengl.glu.GLU_Package_References.GLU_Access_Array_Access_Array;
   use type GLU_Access_Array_Access_Array;
   subtype GLU_Access_Array_Access_Array_Access is com.jogamp.opengl.glu.GLU_Package_References.GLU_Access_Array_Access_Array_Access;
   use type GLU_Access_Array_Access_Array_Access;
   subtype GL2_Access is com.jogamp.opengl.GL2_Package_References.GL2_Access;
   use type GL2_Access;
   subtype GL2_Access_Array is com.jogamp.opengl.GL2_Package_References.GL2_Access_Array;
   use type GL2_Access_Array;
   subtype GL2_Access_Array_Access is com.jogamp.opengl.GL2_Package_References.GL2_Access_Array_Access;
   use type GL2_Access_Array_Access;
   subtype GL2_Access_Array_Access_Array is com.jogamp.opengl.GL2_Package_References.GL2_Access_Array_Access_Array;
   use type GL2_Access_Array_Access_Array;
   subtype GL2_Access_Array_Access_Array_Access is com.jogamp.opengl.GL2_Package_References.GL2_Access_Array_Access_Array_Access;
   use type GL2_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype JOGL10_Access is org.allbinary.opengles.JOGL10_Package_References.JOGL10_Access;
   function "=" (Left, Right : JOGL10_Access) return Boolean renames org.allbinary.opengles.JOGL10_Package_References."=";
   subtype JOGL10_Access_Array is org.allbinary.opengles.JOGL10_Package_References.JOGL10_Access_Array;
   function "=" (Left, Right : JOGL10_Access_Array) return Boolean renames org.allbinary.opengles.JOGL10_Package_References."=";
   subtype JOGL10_Access_Array_Access is org.allbinary.opengles.JOGL10_Package_References.JOGL10_Access_Array_Access;
   function "=" (Left, Right : JOGL10_Access_Array_Access) return Boolean renames org.allbinary.opengles.JOGL10_Package_References."=";
   function Java_Box (Value : JOGL10_Access_Array_Access) return Java_Object_Access renames org.allbinary.opengles.JOGL10_Package_References.Java_Box;
   function Java_Unbox_JOGL10_Access_Array (Value : access Java_Object'Class) return JOGL10_Access_Array_Access renames org.allbinary.opengles.JOGL10_Package_References.Java_Unbox_JOGL10_Access_Array;
   subtype JOGL10_Access_Array_Access_Array is org.allbinary.opengles.JOGL10_Package_References.JOGL10_Access_Array_Access_Array;
   function "=" (Left, Right : JOGL10_Access_Array_Access_Array) return Boolean renames org.allbinary.opengles.JOGL10_Package_References."=";
   subtype JOGL10_Access_Array_Access_Array_Access is org.allbinary.opengles.JOGL10_Package_References.JOGL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JOGL10_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.opengles.JOGL10_Package_References."=";
   function Java_Box (Value : JOGL10_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.opengles.JOGL10_Package_References.Java_Box;
   function Java_Unbox_JOGL10_Access_Array_Access_Array (Value : access Java_Object'Class) return JOGL10_Access_Array_Access_Array_Access renames org.allbinary.opengles.JOGL10_Package_References.Java_Unbox_JOGL10_Access_Array_Access_Array;

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


