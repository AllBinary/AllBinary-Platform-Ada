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


package body org.allbinary.device.NullGL10_Package is

   procedure Initialize_Fields (This : in out NullGL10'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullGL10'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullGL10_Access is
      This : constant NullGL10_Access := new NullGL10;
   begin
      NullGL10_Package.Initialize (This.all);
      return This;
   end Create;


   procedure glActiveTexture (This : in out NullGL10; texture : Integer) is
   begin
        return;
   end glActiveTexture;

   procedure glAlphaFunc (This : in out NullGL10; func : Integer; ref : Float) is
   begin
        return;
   end glAlphaFunc;

   procedure glAlphaFuncx (This : in out NullGL10; func : Integer; ref : Integer) is
   begin
        null;
   end glAlphaFuncx;

   procedure glBindTexture (This : in out NullGL10; target : Integer; texture : Integer) is
   begin
        return;
   end glBindTexture;

   procedure glBlendFunc (This : in out NullGL10; sfactor : Integer; dfactor : Integer) is
   begin
        return;
   end glBlendFunc;

   procedure glClear (This : in out NullGL10; mask : Integer) is
   begin
        return;
   end glClear;

   procedure glClearColor (This : in out NullGL10; red : Float; green : Float; blue : Float; alpha : Float) is
   begin
        return;
   end glClearColor;

   procedure glClearColorx (This : in out NullGL10; red : Integer; green : Integer; blue : Integer; alpha : Integer) is
   begin
        null;
   end glClearColorx;

   procedure glClearDepthf (This : in out NullGL10; depth : Float) is
   begin
        return;
   end glClearDepthf;

   procedure glClearDepthx (This : in out NullGL10; depth : Integer) is
   begin
        null;
   end glClearDepthx;

   procedure glClearStencil (This : in out NullGL10; s : Integer) is
   begin
        return;
   end glClearStencil;

   procedure glClientActiveTexture (This : in out NullGL10; texture : Integer) is
   begin
        return;
   end glClientActiveTexture;

   procedure glColor4f (This : in out NullGL10; red : Float; green : Float; blue : Float; alpha : Float) is
   begin
        return;
   end glColor4f;

   procedure glColor4x (This : in out NullGL10; red : Integer; green : Integer; blue : Integer; alpha : Integer) is
   begin
        null;
   end glColor4x;

   procedure glColorMask (This : in out NullGL10; red : Boolean; green : Boolean; blue : Boolean; alpha : Boolean) is
   begin
        return;
   end glColorMask;

   procedure glColorPointer (This : in out NullGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer'Class) is
      pointer : Buffer_Access := Buffer_Access (pointer_Param);
   begin
        return;
   end glColorPointer;

   procedure glCompressedTexImage2D (This : in out NullGL10; target : Integer; level : Integer; internalformat : Integer; width : Integer; height : Integer; border : Integer; imageSize : Integer; data_Param : access Buffer'Class) is
      data : Buffer_Access := Buffer_Access (data_Param);
   begin
        return;
   end glCompressedTexImage2D;

   procedure glCompressedTexSubImage2D (This : in out NullGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; width : Integer; height : Integer; format : Integer; imageSize : Integer; data_Param : access Buffer'Class) is
      data : Buffer_Access := Buffer_Access (data_Param);
   begin
        return;
   end glCompressedTexSubImage2D;

   procedure glCopyTexImage2D (This : in out NullGL10; target : Integer; level : Integer; internalformat : Integer; x : Integer; y : Integer; width : Integer; height : Integer; border : Integer) is
   begin
        return;
   end glCopyTexImage2D;

   procedure glCopyTexSubImage2D (This : in out NullGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        return;
   end glCopyTexSubImage2D;

   procedure glCullFace (This : in out NullGL10; mode : Integer) is
   begin
        return;
   end glCullFace;

   procedure glDeleteTextures (This : in out NullGL10; n : Integer; textures : Integer_Array_Access; offset : Integer) is
   begin
        return;
   end glDeleteTextures;

   procedure glDeleteTextures (This : in out NullGL10; n : Integer; textures_Param : access IntBuffer'Class) is
      textures : IntBuffer_Access := IntBuffer_Access (textures_Param);
   begin
        return;
   end glDeleteTextures;

   procedure glDepthFunc (This : in out NullGL10; func : Integer) is
   begin
        return;
   end glDepthFunc;

   procedure glDepthMask (This : in out NullGL10; flag : Boolean) is
   begin
        return;
   end glDepthMask;

   procedure glDepthRangef (This : in out NullGL10; zNear : Float; zFar : Float) is
   begin
        return;
   end glDepthRangef;

   procedure glDepthRangex (This : in out NullGL10; zNear : Integer; zFar : Integer) is
   begin
        null;
   end glDepthRangex;

   procedure glDisable (This : in out NullGL10; cap : Integer) is
   begin
        return;
   end glDisable;

   procedure glDisableClientState (This : in out NullGL10; array_Id : Integer) is
   begin
        return;
   end glDisableClientState;

   procedure glDrawArrays (This : in out NullGL10; mode : Integer; first : Integer; count : Integer) is
   begin
        return;
   end glDrawArrays;

   procedure glDrawElements (This : in out NullGL10; mode : Integer; count : Integer; type_Id : Integer; indices_Param : access Buffer'Class) is
      indices : Buffer_Access := Buffer_Access (indices_Param);
   begin
        return;
   end glDrawElements;

   procedure glEnable (This : in out NullGL10; cap : Integer) is
   begin
        return;
   end glEnable;

   procedure glEnableClientState (This : in out NullGL10; array_Id : Integer) is
   begin
        return;
   end glEnableClientState;

   procedure glFinish (This : in out NullGL10) is
   begin
        return;
   end glFinish;

   procedure glFlush (This : in out NullGL10) is
   begin
        return;
   end glFlush;

   procedure glFogf (This : in out NullGL10; pname : Integer; param : Float) is
   begin
        return;
   end glFogf;

   procedure glFogfv (This : in out NullGL10; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        return;
   end glFogfv;

   procedure glFogfv (This : in out NullGL10; pname : Integer; params_Param : access FloatBuffer'Class) is
      params : FloatBuffer_Access := FloatBuffer_Access (params_Param);
   begin
        return;
   end glFogfv;

   procedure glFogx (This : in out NullGL10; pname : Integer; param : Integer) is
   begin
        null;
   end glFogx;

   procedure glFogxv (This : in out NullGL10; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        null;
   end glFogxv;

   procedure glFogxv (This : in out NullGL10; pname : Integer; params_Param : access IntBuffer'Class) is
      params : IntBuffer_Access := IntBuffer_Access (params_Param);
   begin
        null;
   end glFogxv;

   procedure glFrontFace (This : in out NullGL10; mode : Integer) is
   begin
        return;
   end glFrontFace;

   procedure glFrustumf (This : in out NullGL10; left : Float; right : Float; bottom : Float; top : Float; zNear : Float; zFar : Float) is
   begin
        return;
   end glFrustumf;

   procedure glFrustumx (This : in out NullGL10; left : Integer; right : Integer; bottom : Integer; top : Integer; zNear : Integer; zFar : Integer) is
   begin
        null;
   end glFrustumx;

   procedure glGenTextures (This : in out NullGL10; n : Integer; textures : Integer_Array_Access; offset : Integer) is
   begin
        return;
   end glGenTextures;

   procedure glGenTextures (This : in out NullGL10; n : Integer; textures_Param : access IntBuffer'Class) is
      textures : IntBuffer_Access := IntBuffer_Access (textures_Param);
   begin
        return;
   end glGenTextures;

   function glGetError (This : in out NullGL10) return Integer is
   begin
        return 0;
   end glGetError;

   procedure glGetIntegerv (This : in out NullGL10; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        return;
   end glGetIntegerv;

   procedure glGetIntegerv (This : in out NullGL10; pname : Integer; params_Param : access IntBuffer'Class) is
      params : IntBuffer_Access := IntBuffer_Access (params_Param);
   begin
        return;
   end glGetIntegerv;

   function glGetString (This : in out NullGL10; name : Integer) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end glGetString;

   procedure glHint (This : in out NullGL10; target : Integer; mode : Integer) is
   begin
        return;
   end glHint;

   procedure glLightModelf (This : in out NullGL10; pname : Integer; param : Float) is
   begin
        return;
   end glLightModelf;

   procedure glLightModelfv (This : in out NullGL10; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        return;
   end glLightModelfv;

   procedure glLightModelfv (This : in out NullGL10; pname : Integer; params_Param : access FloatBuffer'Class) is
      params : FloatBuffer_Access := FloatBuffer_Access (params_Param);
   begin
        return;
   end glLightModelfv;

   procedure glLightModelx (This : in out NullGL10; pname : Integer; param : Integer) is
   begin
        null;
   end glLightModelx;

   procedure glLightModelxv (This : in out NullGL10; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        null;
   end glLightModelxv;

   procedure glLightModelxv (This : in out NullGL10; pname : Integer; params_Param : access IntBuffer'Class) is
      params : IntBuffer_Access := IntBuffer_Access (params_Param);
   begin
        null;
   end glLightModelxv;

   procedure glLightf (This : in out NullGL10; light : Integer; pname : Integer; param : Float) is
   begin
        return;
   end glLightf;

   procedure glLightfv (This : in out NullGL10; light : Integer; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        return;
   end glLightfv;

   procedure glLightfv (This : in out NullGL10; light : Integer; pname : Integer; params_Param : access FloatBuffer'Class) is
      params : FloatBuffer_Access := FloatBuffer_Access (params_Param);
   begin
        return;
   end glLightfv;

   procedure glLightx (This : in out NullGL10; light : Integer; pname : Integer; param : Integer) is
   begin
        null;
   end glLightx;

   procedure glLightxv (This : in out NullGL10; light : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        null;
   end glLightxv;

   procedure glLightxv (This : in out NullGL10; light : Integer; pname : Integer; params_Param : access IntBuffer'Class) is
      params : IntBuffer_Access := IntBuffer_Access (params_Param);
   begin
        null;
   end glLightxv;

   procedure glLineWidth (This : in out NullGL10; width : Float) is
   begin
        return;
   end glLineWidth;

   procedure glLineWidthx (This : in out NullGL10; width : Integer) is
   begin
        null;
   end glLineWidthx;

   procedure glLoadIdentity (This : in out NullGL10) is
   begin
        return;
   end glLoadIdentity;

   procedure glLoadMatrixf (This : in out NullGL10; m : Float_Array_Access; offset : Integer) is
   begin
        return;
   end glLoadMatrixf;

   procedure glLoadMatrixf (This : in out NullGL10; m_Param : access FloatBuffer'Class) is
      m : FloatBuffer_Access := FloatBuffer_Access (m_Param);
   begin
        return;
   end glLoadMatrixf;

   procedure glLoadMatrixx (This : in out NullGL10; m : Integer_Array_Access; offset : Integer) is
   begin
        null;
   end glLoadMatrixx;

   procedure glLoadMatrixx (This : in out NullGL10; m_Param : access IntBuffer'Class) is
      m : IntBuffer_Access := IntBuffer_Access (m_Param);
   begin
        null;
   end glLoadMatrixx;

   procedure glLogicOp (This : in out NullGL10; opcode : Integer) is
   begin
        return;
   end glLogicOp;

   procedure glMaterialf (This : in out NullGL10; face : Integer; pname : Integer; param : Float) is
   begin
        return;
   end glMaterialf;

   procedure glMaterialfv (This : in out NullGL10; face : Integer; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        return;
   end glMaterialfv;

   procedure glMaterialfv (This : in out NullGL10; face : Integer; pname : Integer; params_Param : access FloatBuffer'Class) is
      params : FloatBuffer_Access := FloatBuffer_Access (params_Param);
   begin
        return;
   end glMaterialfv;

   procedure glMaterialx (This : in out NullGL10; face : Integer; pname : Integer; param : Integer) is
   begin
        null;
   end glMaterialx;

   procedure glMaterialxv (This : in out NullGL10; face : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        null;
   end glMaterialxv;

   procedure glMaterialxv (This : in out NullGL10; face : Integer; pname : Integer; params_Param : access IntBuffer'Class) is
      params : IntBuffer_Access := IntBuffer_Access (params_Param);
   begin
        null;
   end glMaterialxv;

   procedure glMatrixMode (This : in out NullGL10; mode : Integer) is
   begin
        return;
   end glMatrixMode;

   procedure glMultMatrixf (This : in out NullGL10; m : Float_Array_Access; offset : Integer) is
   begin
        return;
   end glMultMatrixf;

   procedure glMultMatrixf (This : in out NullGL10; m_Param : access FloatBuffer'Class) is
      m : FloatBuffer_Access := FloatBuffer_Access (m_Param);
   begin
        return;
   end glMultMatrixf;

   procedure glMultMatrixx (This : in out NullGL10; m : Integer_Array_Access; offset : Integer) is
   begin
        null;
   end glMultMatrixx;

   procedure glMultMatrixx (This : in out NullGL10; m_Param : access IntBuffer'Class) is
      m : IntBuffer_Access := IntBuffer_Access (m_Param);
   begin
        null;
   end glMultMatrixx;

   procedure glMultiTexCoord4f (This : in out NullGL10; target : Integer; s : Float; t : Float; r : Float; q : Float) is
   begin
        return;
   end glMultiTexCoord4f;

   procedure glMultiTexCoord4x (This : in out NullGL10; target : Integer; s : Integer; t : Integer; r : Integer; q : Integer) is
   begin
        null;
   end glMultiTexCoord4x;

   procedure glNormal3f (This : in out NullGL10; nx : Float; ny : Float; nz : Float) is
   begin
        return;
   end glNormal3f;

   procedure glNormal3x (This : in out NullGL10; nx : Integer; ny : Integer; nz : Integer) is
   begin
        null;
   end glNormal3x;

   procedure glNormalPointer (This : in out NullGL10; type_Id : Integer; stride : Integer; pointer_Param : access Buffer'Class) is
      pointer : Buffer_Access := Buffer_Access (pointer_Param);
   begin
        return;
   end glNormalPointer;

   procedure glOrthof (This : in out NullGL10; left : Float; right : Float; bottom : Float; top : Float; zNear : Float; zFar : Float) is
   begin
        return;
   end glOrthof;

   procedure glOrthox (This : in out NullGL10; left : Integer; right : Integer; bottom : Integer; top : Integer; zNear : Integer; zFar : Integer) is
   begin
        null;
   end glOrthox;

   procedure glPixelStorei (This : in out NullGL10; pname : Integer; param : Integer) is
   begin
        return;
   end glPixelStorei;

   procedure glPointSize (This : in out NullGL10; size : Float) is
   begin
        return;
   end glPointSize;

   procedure glPointSizex (This : in out NullGL10; size : Integer) is
   begin
        null;
   end glPointSizex;

   procedure glPolygonOffset (This : in out NullGL10; factor : Float; units : Float) is
   begin
        return;
   end glPolygonOffset;

   procedure glPolygonOffsetx (This : in out NullGL10; factor : Integer; units : Integer) is
   begin
        null;
   end glPolygonOffsetx;

   procedure glPopMatrix (This : in out NullGL10) is
   begin
        return;
   end glPopMatrix;

   procedure glPushMatrix (This : in out NullGL10) is
   begin
        return;
   end glPushMatrix;

   procedure glReadPixels (This : in out NullGL10; x : Integer; y : Integer; width : Integer; height : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer'Class) is
      pixels : Buffer_Access := Buffer_Access (pixels_Param);
   begin
        return;
   end glReadPixels;

   procedure glRotatef (This : in out NullGL10; angle : Float; x : Float; y : Float; z : Float) is
   begin
        return;
   end glRotatef;

   procedure glRotatex (This : in out NullGL10; angle : Integer; x : Integer; y : Integer; z : Integer) is
   begin
        return;
   end glRotatex;

   procedure glSampleCoverage (This : in out NullGL10; value : Float; invert : Boolean) is
   begin
        return;
   end glSampleCoverage;

   procedure glSampleCoveragex (This : in out NullGL10; value : Integer; invert : Boolean) is
   begin
        null;
   end glSampleCoveragex;

   procedure glScalef (This : in out NullGL10; x : Float; y : Float; z : Float) is
   begin
        return;
   end glScalef;

   procedure glScalex (This : in out NullGL10; x : Integer; y : Integer; z : Integer) is
   begin
        return;
   end glScalex;

   procedure glScissor (This : in out NullGL10; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        return;
   end glScissor;

   procedure glShadeModel (This : in out NullGL10; mode : Integer) is
   begin
        return;
   end glShadeModel;

   procedure glStencilFunc (This : in out NullGL10; func : Integer; ref : Integer; mask : Integer) is
   begin
        return;
   end glStencilFunc;

   procedure glStencilMask (This : in out NullGL10; mask : Integer) is
   begin
        return;
   end glStencilMask;

   procedure glStencilOp (This : in out NullGL10; fail : Integer; zfail : Integer; zpass : Integer) is
   begin
        return;
   end glStencilOp;

   procedure glTexCoordPointer (This : in out NullGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer'Class) is
      pointer : Buffer_Access := Buffer_Access (pointer_Param);
   begin
        return;
   end glTexCoordPointer;

   procedure glTexEnvf (This : in out NullGL10; target : Integer; pname : Integer; param : Float) is
   begin
        return;
   end glTexEnvf;

   procedure glTexEnvfv (This : in out NullGL10; target : Integer; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        return;
   end glTexEnvfv;

   procedure glTexEnvfv (This : in out NullGL10; target : Integer; pname : Integer; params_Param : access FloatBuffer'Class) is
      params : FloatBuffer_Access := FloatBuffer_Access (params_Param);
   begin
        return;
   end glTexEnvfv;

   procedure glTexEnvx (This : in out NullGL10; target : Integer; pname : Integer; param : Integer) is
   begin
        null;
   end glTexEnvx;

   procedure glTexEnvxv (This : in out NullGL10; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        null;
   end glTexEnvxv;

   procedure glTexEnvxv (This : in out NullGL10; target : Integer; pname : Integer; params_Param : access IntBuffer'Class) is
      params : IntBuffer_Access := IntBuffer_Access (params_Param);
   begin
        null;
   end glTexEnvxv;

   procedure glTexImage2D (This : in out NullGL10; target : Integer; level : Integer; internalformat : Integer; width : Integer; height : Integer; border : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer'Class) is
      pixels : Buffer_Access := Buffer_Access (pixels_Param);
   begin
        return;
   end glTexImage2D;

   procedure glTexParameterf (This : in out NullGL10; target : Integer; pname : Integer; param : Float) is
   begin
        return;
   end glTexParameterf;

   procedure glTexParameterx (This : in out NullGL10; target : Integer; pname : Integer; param : Integer) is
   begin
        null;
   end glTexParameterx;

   procedure glTexSubImage2D (This : in out NullGL10; target : Integer; level : Integer; xoffset : Integer; yoffset : Integer; width : Integer; height : Integer; format : Integer; type_Id : Integer; pixels_Param : access Buffer'Class) is
      pixels : Buffer_Access := Buffer_Access (pixels_Param);
   begin
        return;
   end glTexSubImage2D;

   procedure glTranslatef (This : in out NullGL10; x : Float; y : Float; z : Float) is
   begin
        return;
   end glTranslatef;

   procedure glTranslatex (This : in out NullGL10; x : Integer; y : Integer; z : Integer) is
   begin
        null;
   end glTranslatex;

   procedure glVertexPointer (This : in out NullGL10; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer'Class) is
      pointer : Buffer_Access := Buffer_Access (pointer_Param);
   begin
        return;
   end glVertexPointer;

   procedure glViewport (This : in out NullGL10; x : Integer; y : Integer; width : Integer; height : Integer) is
   begin
        return;
   end glViewport;

   procedure glGetString (This : in out NullGL10; name : Integer) is
      Java_Result : constant Unbounded_String := NullGL10'Class (This).glGetString (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end glGetString;

begin
   null;
   NULL_GL10 := NullGL10_Package.Create;

end org.allbinary.device.NullGL10_Package;


