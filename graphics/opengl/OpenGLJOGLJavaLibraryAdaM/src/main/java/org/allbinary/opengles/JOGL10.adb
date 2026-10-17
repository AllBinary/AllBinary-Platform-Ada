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


package body org.allbinary.opengles.JOGL10_Package is

   procedure Initialize_Fields (This : in out JOGL10'Class) is
   begin
      null;
      This.RED := To_Unbounded_String ("red: ");
      This.GREEN := To_Unbounded_String (" green: ");
      This.BLUE := To_Unbounded_String (" blue: ");
      This.ALPHA := To_Unbounded_String (" alpha: ");
      This.PNAME := To_Unbounded_String ("pname: ");
      This.U_PNAME := To_Unbounded_String (" pname: ");
      This.PARAM := To_Unbounded_String (" param: ");
      This.PARAMS := To_Unbounded_String (" params: ");
      This.LIGHT := To_Unbounded_String ("light: ");
      This.FACE := To_Unbounded_String ("face: ");
      This.TARGET := To_Unbounded_String ("target: ");
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out JOGL10'Class; gl : GL_Access; gl2 : GL2_Access) is
   begin
      Initialize_Fields (This);
        This.gl10 := gl2;
        This.glu := GLU_Package.createGLU (This.gl10);
        This.GL_LINE := com_Package.jogamp.opengl.GL2.GL_LINE;
        This.GL_QUAD_STRIP := com_Package.jogamp.opengl.GL2.GL_QUAD_STRIP;
   end Initialize;

   function Create (gl : GL_Access; gl2 : GL2_Access) return JOGL10_Access is
      This : constant JOGL10_Access := new JOGL10;
   begin
      Initialize (This.all, gl, gl2);
      return This;
   end Create;

   function getJOGLGL (This : in out JOGL10) return GL2_Access is
   begin
        return This.gl10;
   end getJOGLGL;

   procedure glActiveTexture (This : in out JOGL10; texture : Integer) is
   begin
        This.gl10.glActiveTexture (texture);
   end glActiveTexture;

   procedure glAlphaFunc (This : in out JOGL10; func : Integer; ref : Float) is
   begin
        This.gl10.glAlphaFunc (func, ref);
   end glAlphaFunc;

   procedure glBindTexture (This : in out JOGL10; target_Case : Integer; texture : Integer) is
   begin
        This.gl10.glBindTexture (target_Case, texture);
   end glBindTexture;

   procedure glBlendFunc (This : in out JOGL10; sfactor : Integer; dfactor : Integer) is
   begin
        This.gl10.glBlendFunc (sfactor, dfactor);
   end glBlendFunc;

   procedure glClear (This : in out JOGL10; mask : Integer) is
   begin
        This.gl10.glClear (mask);
   end glClear;

   procedure glClearColor (This : in out JOGL10; red_Case : Float; green_Case : Float; blue_Case : Float; alpha_Case : Float) is
   begin
        This.gl10.glClearColor (red_Case, green_Case, blue_Case, alpha_Case);
   end glClearColor;

   procedure glClearDepthf (This : in out JOGL10; depth : Float) is
   begin
        This.gl10.glClearDepthf (depth);
   end glClearDepthf;

   procedure glClearStencil (This : in out JOGL10; s : Integer) is
   begin
        This.gl10.glClearStencil (s);
   end glClearStencil;

   procedure glClientActiveTexture (This : in out JOGL10; texture : Integer) is
   begin
        This.gl10.glClientActiveTexture (texture);
   end glClientActiveTexture;

   procedure glColor4f (This : in out JOGL10; red_Case : Float; green_Case : Float; blue_Case : Float; alpha_Case : Float) is
   begin
        This.gl10.glColor4f (red_Case, green_Case, blue_Case, alpha_Case);
   end glColor4f;

   procedure glColorMask (This : in out JOGL10; red_Case : Boolean; green_Case : Boolean; blue_Case : Boolean; alpha_Case : Boolean) is
   begin
        This.gl10.glColorMask (red_Case, green_Case, blue_Case, alpha_Case);
   end glColorMask;

   procedure glColorPointer (This : in out JOGL10; size : Integer; type_Id : Integer; stride : Integer; pointer : Buffer_Access) is
   begin
        This.gl10.glColorPointer (size, type_Id, stride, pointer);
   end glColorPointer;

   procedure glCompressedTexImage2D (This : in out JOGL10; target_Case : Integer; level : Integer; internalformat : Integer; width : Integer; height : Integer; border : Integer; imageSize : Integer; data : Buffer_Access) is
   begin
        This.gl10.glCompressedTexImage2D (target_Case, level, internalformat, width, height, border, imageSize, data);
   end glCompressedTexImage2D;

   procedure glCompressedTexSubImage2D (This : in out JOGL10; target_Case : Integer; level : Integer; xoffset : Integer; yoffset : Integer; width : Integer; height : Integer; format : Integer; imageSize : Integer; data : Buffer_Access) is
   begin
        This.gl10.glCompressedTexSubImage2D (target_Case, level, xoffset, yoffset, width, height, format, imageSize, data);
   end glCompressedTexSubImage2D;

   procedure glCopyTexImage2D (This : in out JOGL10; target_Case : Integer; level : Integer; internalformat : Integer; x : Integer; y : Integer; width : Integer; height : Integer; border : Integer) is
   begin
        This.gl10.glCopyTexImage2D (target_Case, level, internalformat, x, y, width, height, border);
   end glCopyTexImage2D;

   procedure glCopyTexSubImage2D (This : in out JOGL10; target_Case : Integer; level : Integer; xoffset : Integer; yoffset : Integer; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        This.gl10.glCopyTexSubImage2D (target_Case, level, xoffset, yoffset, x, y, width, height);
   end glCopyTexSubImage2D;

   procedure glCullFace (This : in out JOGL10; mode : Integer) is
   begin
        This.gl10.glCullFace (mode);
   end glCullFace;

   procedure glDeleteTextures (This : in out JOGL10; n : Integer; textures : Integer_Array_Access; offset : Integer) is
   begin
        This.gl10.glDeleteTextures (n, textures, offset);
   end glDeleteTextures;

   procedure glDeleteTextures (This : in out JOGL10; n : Integer; textures : IntBuffer_Access) is
   begin
        This.gl10.glDeleteTextures (n, textures);
   end glDeleteTextures;

   procedure glDepthFunc (This : in out JOGL10; func : Integer) is
   begin
        This.gl10.glDepthFunc (func);
   end glDepthFunc;

   procedure glDepthMask (This : in out JOGL10; flag : Boolean) is
   begin
        This.gl10.glDepthMask (flag);
   end glDepthMask;

   procedure glDepthRangef (This : in out JOGL10; zNear : Float; zFar : Float) is
   begin
        This.gl10.glDepthRangef (zNear, zFar);
   end glDepthRangef;

   procedure glDisable (This : in out JOGL10; cap : Integer) is
   begin
        This.gl10.glDisable (cap);
   end glDisable;

   procedure glDisableClientState (This : in out JOGL10; array_Id : Integer) is
   begin
        This.gl10.glDisableClientState (array_Id);
   end glDisableClientState;

   procedure glDrawArrays (This : in out JOGL10; mode : Integer; first : Integer; count : Integer) is
   begin
        This.gl10.glDrawArrays (mode, first, count);
   end glDrawArrays;

   procedure glDrawElements (This : in out JOGL10; mode : Integer; count : Integer; type_Id : Integer; indices : Buffer_Access) is
   begin
        This.gl10.glDrawElements (mode, count, type_Id, indices);
   end glDrawElements;

   procedure glEnable (This : in out JOGL10; cap : Integer) is
   begin
        This.gl10.glEnable (cap);
   end glEnable;

   procedure glEnableClientState (This : in out JOGL10; array_Id : Integer) is
   begin
        This.gl10.glEnableClientState (array_Id);
   end glEnableClientState;

   procedure glFinish (This : in out JOGL10) is
   begin
        This.gl10.glFinish;
   end glFinish;

   procedure glFlush (This : in out JOGL10) is
   begin
        This.gl10.glFlush;
   end glFlush;

   procedure glFogf (This : in out JOGL10; pname_Case : Integer; param_Case : Float) is
   begin
        This.gl10.glFogf (pname_Case, param_Case);
   end glFogf;

   procedure glFogfv (This : in out JOGL10; pname_Case : Integer; params_Case : Float_Array_Access; offset : Integer) is
   begin
        This.gl10.glFogfv (pname_Case, params_Case, offset);
   end glFogfv;

   procedure glFogfv (This : in out JOGL10; pname_Case : Integer; params_Case : FloatBuffer_Access) is
   begin
        This.gl10.glFogfv (pname_Case, params_Case);
   end glFogfv;

   procedure glFrontFace (This : in out JOGL10; mode : Integer) is
   begin
        This.gl10.glFrontFace (mode);
   end glFrontFace;

   procedure glFrustumf (This : in out JOGL10; left : Float; right : Float; bottom : Float; top : Float; zNear : Float; zFar : Float) is
   begin
        This.gl10.glFrustumf (left, right, bottom, top, zNear, zFar);
   end glFrustumf;

   procedure glGenTextures (This : in out JOGL10; n : Integer; textures : Integer_Array_Access; offset : Integer) is
   begin
        This.gl10.glGenTextures (n, textures, offset);
   end glGenTextures;

   procedure glGenTextures (This : in out JOGL10; n : Integer; textures : IntBuffer_Access) is
   begin
        This.gl10.glGenTextures (n, textures);
   end glGenTextures;

   function glGetError (This : in out JOGL10) return Integer is
   begin
        return This.gl10.glGetError;
   end glGetError;

   procedure glGetIntegerv (This : in out JOGL10; pname_Case : Integer; params_Case : Integer_Array_Access; offset : Integer) is
   begin
        This.gl10.glGetIntegerv (pname_Case, params_Case, offset);
   end glGetIntegerv;

   procedure glGetIntegerv (This : in out JOGL10; pname_Case : Integer; params_Case : IntBuffer_Access) is
   begin
        This.gl10.glGetIntegerv (pname_Case, params_Case);
   end glGetIntegerv;

   function glGetString (This : in out JOGL10; name : Integer) return Unbounded_String is
   begin
        return This.gl10.glGetString (name);
   end glGetString;

   procedure glHint (This : in out JOGL10; target_Case : Integer; mode : Integer) is
   begin
        This.gl10.glHint (target_Case, mode);
   end glHint;

   procedure glLightModelf (This : in out JOGL10; pname_Case : Integer; param_Case : Float) is
   begin
        This.gl10.glLightModelf (pname_Case, param_Case);
   end glLightModelf;

   procedure glLightModelfv (This : in out JOGL10; pname_Case : Integer; params_Case : Float_Array_Access; offset : Integer) is
   begin
        This.gl10.glLightModelfv (pname_Case, params_Case, offset);
   end glLightModelfv;

   procedure glLightModelfv (This : in out JOGL10; pname_Case : Integer; params_Case : FloatBuffer_Access) is
   begin
        This.gl10.glLightModelfv (pname_Case, params_Case);
   end glLightModelfv;

   procedure glLightf (This : in out JOGL10; light_Case : Integer; pname_Case : Integer; param_Case : Float) is
   begin
        This.gl10.glLightf (light_Case, pname_Case, param_Case);
   end glLightf;

   procedure glLightfv (This : in out JOGL10; light_Case : Integer; pname_Case : Integer; params_Case : Float_Array_Access; offset : Integer) is
   begin
        This.gl10.glLightfv (light_Case, pname_Case, params_Case, offset);
   end glLightfv;

   procedure glLightfv (This : in out JOGL10; light_Case : Integer; pname_Case : Integer; params_Case : FloatBuffer_Access) is
   begin
        This.gl10.glLightfv (light_Case, pname_Case, params_Case);
   end glLightfv;

   procedure glLineWidth (This : in out JOGL10; width : Float) is
   begin
        This.gl10.glLineWidth (width);
   end glLineWidth;

   procedure glLoadIdentity (This : in out JOGL10) is
   begin
        This.gl10.glLoadIdentity;
   end glLoadIdentity;

   procedure glLoadMatrixf (This : in out JOGL10; m : Float_Array_Access; offset : Integer) is
   begin
        This.gl10.glLoadMatrixf (m, offset);
   end glLoadMatrixf;

   procedure glLoadMatrixf (This : in out JOGL10; m : FloatBuffer_Access) is
   begin
        This.gl10.glLoadMatrixf (m);
   end glLoadMatrixf;

   procedure glLogicOp (This : in out JOGL10; opcode : Integer) is
   begin
        This.gl10.glLogicOp (opcode);
   end glLogicOp;

   procedure glMaterialf (This : in out JOGL10; face_Case : Integer; pname_Case : Integer; param_Case : Float) is
   begin
        This.gl10.glMaterialf (face_Case, pname_Case, param_Case);
   end glMaterialf;

   procedure glMaterialfv (This : in out JOGL10; face_Case : Integer; pname_Case : Integer; params_Case : Float_Array_Access; offset : Integer) is
   begin
        This.gl10.glMaterialfv (face_Case, pname_Case, params_Case, offset);
   end glMaterialfv;

   procedure glMaterialfv (This : in out JOGL10; face_Case : Integer; pname_Case : Integer; params_Case : FloatBuffer_Access) is
   begin
        This.gl10.glMaterialfv (face_Case, pname_Case, params_Case);
   end glMaterialfv;

   procedure glMatrixMode (This : in out JOGL10; mode : Integer) is
   begin
        This.gl10.glMatrixMode (mode);
   end glMatrixMode;

   procedure glMultMatrixf (This : in out JOGL10; m : Float_Array_Access; offset : Integer) is
   begin
        This.gl10.glMultMatrixf (m, offset);
   end glMultMatrixf;

   procedure glMultMatrixf (This : in out JOGL10; m : FloatBuffer_Access) is
   begin
        This.gl10.glMultMatrixf (m);
   end glMultMatrixf;

   procedure glMultiTexCoord4f (This : in out JOGL10; target_Case : Integer; s : Float; t : Float; r : Float; q : Float) is
   begin
        This.gl10.glMultiTexCoord4f (target_Case, s, t, r, q);
   end glMultiTexCoord4f;

   procedure glNormal3f (This : in out JOGL10; nx : Float; ny : Float; nz : Float) is
   begin
        This.gl10.glNormal3f (nx, ny, nz);
   end glNormal3f;

   procedure glNormalPointer (This : in out JOGL10; type_Id : Integer; stride : Integer; pointer : Buffer_Access) is
   begin
        This.gl10.glNormalPointer (type_Id, stride, pointer);
   end glNormalPointer;

   procedure glOrthof (This : in out JOGL10; left : Float; right : Float; bottom : Float; top : Float; zNear : Float; zFar : Float) is
   begin
        This.gl10.glOrthof (left, right, bottom, top, zNear, zFar);
   end glOrthof;

   procedure glPixelStorei (This : in out JOGL10; pname_Case : Integer; param_Case : Integer) is
   begin
        This.gl10.glPixelStorei (pname_Case, param_Case);
   end glPixelStorei;

   procedure glPointSize (This : in out JOGL10; size : Float) is
   begin
        This.gl10.glPointSize (size);
   end glPointSize;

   procedure glPolygonOffset (This : in out JOGL10; factor : Float; units : Float) is
   begin
        This.gl10.glPolygonOffset (factor, units);
   end glPolygonOffset;

   procedure glPopMatrix (This : in out JOGL10) is
   begin
        This.gl10.glPopMatrix;
   end glPopMatrix;

   procedure glPushMatrix (This : in out JOGL10) is
   begin
        This.gl10.glPushMatrix;
   end glPushMatrix;

   procedure glReadPixels (This : in out JOGL10; x : Integer; y : Integer; width : Integer; height : Integer; format : Integer; type_Id : Integer; pixels : Buffer_Access) is
   begin
        This.gl10.glReadPixels (x, y, width, height, format, type_Id, pixels);
   end glReadPixels;

   procedure glRotatef (This : in out JOGL10; angle : Float; x : Float; y : Float; z : Float) is
   begin
        This.gl10.glRotatef (angle, x, y, z);
   end glRotatef;

   procedure glRotatex (This : in out JOGL10; angle : Integer; x : Integer; y : Integer; z : Integer) is
   begin
        This.gl10.glRotatef (angle, x, y, z);
   end glRotatex;

   procedure glSampleCoverage (This : in out JOGL10; value : Float; invert : Boolean) is
   begin
        This.gl10.glSampleCoverage (value, invert);
   end glSampleCoverage;

   procedure glScalef (This : in out JOGL10; x : Float; y : Float; z : Float) is
   begin
        This.gl10.glScalef (x, y, z);
   end glScalef;

   procedure glScalex (This : in out JOGL10; x : Integer; y : Integer; z : Integer) is
   begin
        This.gl10.glScalef (x, y, z);
   end glScalex;

   procedure glScissor (This : in out JOGL10; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        This.gl10.glScissor (x, y, width, height);
   end glScissor;

   procedure glShadeModel (This : in out JOGL10; mode : Integer) is
   begin
        This.gl10.glShadeModel (mode);
   end glShadeModel;

   procedure glStencilFunc (This : in out JOGL10; func : Integer; ref : Integer; mask : Integer) is
   begin
        This.gl10.glStencilFunc (func, ref, mask);
   end glStencilFunc;

   procedure glStencilMask (This : in out JOGL10; mask : Integer) is
   begin
        This.gl10.glStencilMask (mask);
   end glStencilMask;

   procedure glStencilOp (This : in out JOGL10; fail : Integer; zfail : Integer; zpass : Integer) is
   begin
        This.gl10.glStencilOp (fail, zfail, zpass);
   end glStencilOp;

   procedure glTexCoordPointer (This : in out JOGL10; size : Integer; type_Id : Integer; stride : Integer; pointer : Buffer_Access) is
   begin
        This.gl10.glTexCoordPointer (size, type_Id, stride, pointer);
   end glTexCoordPointer;

   procedure glTexEnvf (This : in out JOGL10; target_Case : Integer; pname_Case : Integer; param_Case : Float) is
   begin
        This.gl10.glTexEnvf (target_Case, pname_Case, param_Case);
   end glTexEnvf;

   procedure glTexEnvfv (This : in out JOGL10; target_Case : Integer; pname_Case : Integer; params_Case : Float_Array_Access; offset : Integer) is
   begin
        This.gl10.glTexEnvfv (target_Case, pname_Case, params_Case, offset);
   end glTexEnvfv;

   procedure glTexEnvfv (This : in out JOGL10; target_Case : Integer; pname_Case : Integer; params_Case : FloatBuffer_Access) is
   begin
        This.gl10.glTexEnvfv (target_Case, pname_Case, params_Case);
   end glTexEnvfv;

   procedure glTexImage2D (This : in out JOGL10; target_Case : Integer; level : Integer; internalformat : Integer; width : Integer; height : Integer; border : Integer; format : Integer; type_Id : Integer; pixels : Buffer_Access) is
   begin
        This.gl10.glTexImage2D (target_Case, level, internalformat, width, height, border, format, type_Id, pixels);
   end glTexImage2D;

   procedure glTexParameterf (This : in out JOGL10; target_Case : Integer; pname_Case : Integer; param_Case : Float) is
   begin
        This.gl10.glTexParameterf (target_Case, pname_Case, param_Case);
   end glTexParameterf;

   procedure glTexParameteri (This : in out JOGL10; target_Case : Integer; pname_Case : Integer; param_Case : Integer) is
   begin
        This.gl10.glTexParameteri (target_Case, pname_Case, param_Case);
   end glTexParameteri;

   procedure glTexSubImage2D (This : in out JOGL10; target_Case : Integer; level : Integer; xoffset : Integer; yoffset : Integer; width : Integer; height : Integer; format : Integer; type_Id : Integer; pixels : Buffer_Access) is
   begin
        This.gl10.glTexSubImage2D (target_Case, level, xoffset, yoffset, width, height, format, type_Id, pixels);
   end glTexSubImage2D;

   procedure glTranslatef (This : in out JOGL10; x : Float; y : Float; z : Float) is
   begin
        This.gl10.glTranslatef (x, y, z);
   end glTranslatef;

   procedure glVertexPointer (This : in out JOGL10; size : Integer; type_Id : Integer; stride : Integer; pointer : Buffer_Access) is
   begin
        This.gl10.glVertexPointer (size, type_Id, stride, pointer);
   end glVertexPointer;

   procedure glViewport (This : in out JOGL10; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        This.gl10.glViewport (x, y, width, height);
   end glViewport;

   procedure glBegin (This : in out JOGL10; i : Integer) is
   begin
        This.gl10.glBegin (i);
   end glBegin;

   procedure glEnd (This : in out JOGL10) is
   begin
        This.gl10.glEnd;
   end glEnd;

   procedure glVertex3f (This : in out JOGL10; f : Float; f2 : Float; f3 : Float) is
   begin
        This.gl10.glVertex3f (f, f2, f3);
   end glVertex3f;

   procedure glPolygonMode (This : in out JOGL10; i : Integer; i1 : Integer) is
   begin
        This.gl10.glPolygonMode (i, i1);
   end glPolygonMode;

   procedure getJOGLGL (This : in out JOGL10) is
      Java_Result : constant GL2_Access := JOGL10'Class (This).getJOGLGL;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getJOGLGL;

   procedure glGetError (This : in out JOGL10) is
      Java_Result : constant Integer := JOGL10'Class (This).glGetError;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end glGetError;

   procedure glGetString (This : in out JOGL10; name : Integer) is
      Java_Result : constant Unbounded_String := JOGL10'Class (This).glGetString (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end glGetString;

end org.allbinary.opengles.JOGL10_Package;


