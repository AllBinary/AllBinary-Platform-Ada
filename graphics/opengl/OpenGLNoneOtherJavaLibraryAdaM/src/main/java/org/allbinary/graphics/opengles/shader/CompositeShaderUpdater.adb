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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out CompositeShaderUpdater'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
   end Initialize_Fields;


   function getInstance return CompositeShaderUpdater_Access is
   begin
        return CompositeShaderUpdater_Package.instanceC;
   end getInstance;

   procedure Initialize (This : in out CompositeShaderUpdater'Class; uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access) is
   begin
      ShaderUpdater_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access) return CompositeShaderUpdater_Access is
      This : constant CompositeShaderUpdater_Access := new CompositeShaderUpdater;
   begin
      CompositeShaderUpdater_Package.Initialize (This.all, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray);
      return This;
   end Create;

   procedure onSurfaceCreated (This : in out CompositeShaderUpdater; gl_Param : access GL10_Package.GL10'Class; eglConfig_Param : access EGLConfig_Package.EGLConfig'Class; programHandle : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      eglConfig : constant EGLConfig_Access := EGLConfig_Access (eglConfig_Param);
   begin
        null;
   end onSurfaceCreated;

   procedure onSurfaceDestroyed (This : in out CompositeShaderUpdater; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end onSurfaceDestroyed;

begin
   null;
   instanceC := CompositeShaderUpdater_Package.Create (StringUtil_Package.getInstance.getArrayInstance, StringUtil_Package.getInstance.getArrayInstance, StringUtil_Package.getInstance.getArrayInstance, NullUtil_Package.getInstance.NULL_INT_ARRAY);

end org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;


