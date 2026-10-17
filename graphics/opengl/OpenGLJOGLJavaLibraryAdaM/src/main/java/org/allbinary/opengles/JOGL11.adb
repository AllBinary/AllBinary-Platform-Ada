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


package body org.allbinary.opengles.JOGL11_Package is

   procedure Initialize_Fields (This : in out JOGL11'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out JOGL11'Class; gl : GL_Access) is
   begin
        Initialize (This, gl, GL2_Access (gl));
   end Initialize;

   function Create (gl : GL_Access) return JOGL11_Access is
      This : constant JOGL11_Access := new JOGL11;
   begin
      JOGL11_Package.Initialize (This.all, gl);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out JOGL11'Class; gl : GL_Access; gl2 : GL2_Access) is
   begin
        JOGL10_Package.Initialize (This, gl, gl2);
        Initialize_Fields (This);
        This.gl11 := This.getJOGLGL;
   end Initialize;

   function Create (gl : GL_Access; gl2 : GL2_Access) return JOGL11_Access is
      This : constant JOGL11_Access := new JOGL11;
   begin
      JOGL11_Package.Initialize (This.all, gl, gl2);
      return This;
   end Create;

   procedure glBindBuffer (This : in out JOGL11; target : Integer; buffer : Integer) is
   begin
        This.gl11.glBindBuffer (target, buffer);
   end glBindBuffer;

   procedure glBufferData (This : in out JOGL11; target : Integer; size : Integer; data : Buffer_Access; usage : Integer) is
   begin
        This.gl11.glBufferData (target, size, data, usage);
   end glBufferData;

   procedure glBufferSubData (This : in out JOGL11; target : Integer; offset : Integer; size : Integer; data : Buffer_Access) is
   begin
        This.gl11.glBufferSubData (target, offset, size, data);
   end glBufferSubData;

   procedure glClipPlanef (This : in out JOGL11; plane : Integer; equation : Float_Array_Access; offset : Integer) is
   begin
        This.gl11.glClipPlanef (plane, equation, offset);
   end glClipPlanef;

   procedure glClipPlanef (This : in out JOGL11; plane : Integer; equation : FloatBuffer_Access) is
   begin
        This.gl11.glClipPlanef (plane, equation);
   end glClipPlanef;

   procedure glColor4ub (This : in out JOGL11; red : Short_Short_Integer; green : Short_Short_Integer; blue : Short_Short_Integer; alpha : Short_Short_Integer) is
   begin
        This.gl11.glColor4ub (red, green, blue, alpha);
   end glColor4ub;

   procedure glColorPointer (This : in out JOGL11; size : Integer; type_Id : Integer; stride : Integer; offset : Integer) is
   begin
        This.gl11.glColorPointer (size, type_Id, stride, offset);
   end glColorPointer;

   procedure glDeleteBuffers (This : in out JOGL11; n : Integer; buffers : Integer_Array_Access; offset : Integer) is
   begin
        This.gl11.glDeleteBuffers (n, buffers, offset);
   end glDeleteBuffers;

   procedure glDeleteBuffers (This : in out JOGL11; n : Integer; buffers : IntBuffer_Access) is
   begin
        This.gl11.glDeleteBuffers (n, buffers);
   end glDeleteBuffers;

   procedure glDrawElements (This : in out JOGL11; mode : Integer; count : Integer; type_Id : Integer; offset : Integer) is
   begin
        This.gl11.glDrawElements (mode, count, type_Id, offset);
   end glDrawElements;

   procedure glGenBuffers (This : in out JOGL11; n : Integer; buffers : Integer_Array_Access; offset : Integer) is
   begin
        This.gl11.glGenBuffers (n, buffers, offset);
   end glGenBuffers;

   procedure glGenBuffers (This : in out JOGL11; n : Integer; buffers : IntBuffer_Access) is
   begin
        This.gl11.glGenBuffers (n, buffers);
   end glGenBuffers;

   procedure glGetBufferParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        This.gl11.glGetBufferParameteriv (target, pname, params, offset);
   end glGetBufferParameteriv;

   procedure glGetBufferParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : IntBuffer_Access) is
   begin
        This.gl11.glGetBufferParameteriv (target, pname, params);
   end glGetBufferParameteriv;

   procedure glGetClipPlanef (This : in out JOGL11; pname : Integer; eqn : Float_Array_Access; offset : Integer) is
   begin
        This.gl11.glGetClipPlanef (pname, eqn, offset);
   end glGetClipPlanef;

   procedure glGetClipPlanef (This : in out JOGL11; pname : Integer; eqn : FloatBuffer_Access) is
   begin
        This.gl11.glGetClipPlanef (pname, eqn);
   end glGetClipPlanef;

   procedure glGetFloatv (This : in out JOGL11; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        This.gl11.glGetFloatv (pname, params, offset);
   end glGetFloatv;

   procedure glGetFloatv (This : in out JOGL11; pname : Integer; params : FloatBuffer_Access) is
   begin
        This.gl11.glGetFloatv (pname, params);
   end glGetFloatv;

   procedure glGetLightfv (This : in out JOGL11; light : Integer; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        This.gl11.glGetLightfv (light, pname, params, offset);
   end glGetLightfv;

   procedure glGetLightfv (This : in out JOGL11; light : Integer; pname : Integer; params : FloatBuffer_Access) is
   begin
        This.gl11.glGetLightfv (light, pname, params);
   end glGetLightfv;

   procedure glGetMaterialfv (This : in out JOGL11; face : Integer; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        This.gl11.glGetMaterialfv (face, pname, params, offset);
   end glGetMaterialfv;

   procedure glGetMaterialfv (This : in out JOGL11; face : Integer; pname : Integer; params : FloatBuffer_Access) is
   begin
        This.gl11.glGetMaterialfv (face, pname, params);
   end glGetMaterialfv;

   procedure glGetTexEnviv (This : in out JOGL11; env : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        This.gl11.glGetTexEnviv (env, pname, params, offset);
   end glGetTexEnviv;

   procedure glGetTexEnviv (This : in out JOGL11; env : Integer; pname : Integer; params : IntBuffer_Access) is
   begin
        This.gl11.glGetTexEnviv (env, pname, params);
   end glGetTexEnviv;

   procedure glGetTexParameterfv (This : in out JOGL11; target : Integer; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        This.gl11.glGetTexParameterfv (target, pname, params, offset);
   end glGetTexParameterfv;

   procedure glGetTexParameterfv (This : in out JOGL11; target : Integer; pname : Integer; params : FloatBuffer_Access) is
   begin
        This.gl11.glGetTexParameterfv (target, pname, params);
   end glGetTexParameterfv;

   procedure glGetTexParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        This.gl11.glGetTexParameteriv (target, pname, params, offset);
   end glGetTexParameteriv;

   procedure glGetTexParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : IntBuffer_Access) is
   begin
        This.gl11.glGetTexParameteriv (target, pname, params);
   end glGetTexParameteriv;

   function glIsBuffer (This : in out JOGL11; buffer : Integer) return Boolean is
   begin
        return This.gl11.glIsBuffer (buffer);
   end glIsBuffer;

   function glIsEnabled (This : in out JOGL11; cap : Integer) return Boolean is
   begin
        return This.gl11.glIsEnabled (cap);
   end glIsEnabled;

   function glIsTexture (This : in out JOGL11; texture : Integer) return Boolean is
   begin
        return This.gl11.glIsTexture (texture);
   end glIsTexture;

   procedure glNormalPointer (This : in out JOGL11; type_Id : Integer; stride : Integer; offset : Integer) is
   begin
        This.gl11.glNormalPointer (type_Id, stride, offset);
   end glNormalPointer;

   procedure glPointParameterf (This : in out JOGL11; pname : Integer; param : Float) is
   begin
        This.gl11.glPointParameterf (pname, param);
   end glPointParameterf;

   procedure glPointParameterfv (This : in out JOGL11; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        This.gl11.glPointParameterfv (pname, params, offset);
   end glPointParameterfv;

   procedure glPointParameterfv (This : in out JOGL11; pname : Integer; params : FloatBuffer_Access) is
   begin
        This.gl11.glPointParameterfv (pname, params);
   end glPointParameterfv;

   procedure glTexCoordPointer (This : in out JOGL11; size : Integer; type_Id : Integer; stride : Integer; offset : Integer) is
   begin
        This.gl11.glTexCoordPointer (size, type_Id, stride, offset);
   end glTexCoordPointer;

   procedure glTexEnvi (This : in out JOGL11; target : Integer; pname : Integer; param : Integer) is
   begin
        This.gl11.glTexEnvi (target, pname, param);
   end glTexEnvi;

   procedure glTexEnviv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        This.gl11.glTexEnviv (target, pname, params, offset);
   end glTexEnviv;

   procedure glTexEnviv (This : in out JOGL11; target : Integer; pname : Integer; params : IntBuffer_Access) is
   begin
        This.gl11.glTexEnviv (target, pname, params);
   end glTexEnviv;

   procedure glTexParameterfv (This : in out JOGL11; target : Integer; pname : Integer; params : Float_Array_Access; offset : Integer) is
   begin
        This.gl11.glTexParameterfv (target, pname, params, offset);
   end glTexParameterfv;

   procedure glTexParameterfv (This : in out JOGL11; target : Integer; pname : Integer; params : FloatBuffer_Access) is
   begin
        This.gl11.glTexParameterfv (target, pname, params);
   end glTexParameterfv;

   procedure glTexParameteri (This : in out JOGL11; target : Integer; pname : Integer; param : Integer) is
   begin
        This.gl11.glTexParameteri (target, pname, param);
   end glTexParameteri;

   procedure glTexParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        This.gl11.glTexParameteriv (target, pname, params, offset);
   end glTexParameteriv;

   procedure glTexParameteriv (This : in out JOGL11; target : Integer; pname : Integer; params : IntBuffer_Access) is
   begin
        This.gl11.glTexParameteriv (target, pname, params);
   end glTexParameteriv;

   procedure glTexParameterxv (This : in out JOGL11; target : Integer; pname : Integer; params : Integer_Array_Access; offset : Integer) is
   begin
        This.gl11.glTexParameteriv (target, pname, params, offset);
   end glTexParameterxv;

   procedure glVertexPointer (This : in out JOGL11; size : Integer; type_Id : Integer; stride : Integer; offset : Integer) is
   begin
        This.gl11.glVertexPointer (size, type_Id, stride, offset);
   end glVertexPointer;

   procedure glIsBuffer (This : in out JOGL11; buffer : Integer) is
      Java_Result : constant Boolean := JOGL11'Class (This).glIsBuffer (buffer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end glIsBuffer;

   procedure glIsEnabled (This : in out JOGL11; cap : Integer) is
      Java_Result : constant Boolean := JOGL11'Class (This).glIsEnabled (cap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end glIsEnabled;

   procedure glIsTexture (This : in out JOGL11; texture : Integer) is
      Java_Result : constant Boolean := JOGL11'Class (This).glIsTexture (texture);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end glIsTexture;

end org.allbinary.opengles.JOGL11_Package;


