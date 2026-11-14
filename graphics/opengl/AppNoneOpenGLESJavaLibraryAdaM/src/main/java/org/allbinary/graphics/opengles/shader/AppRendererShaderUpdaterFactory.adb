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


with org.allbinary.graphics.opengles.shader.ShaderComposite_Package; use org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References;
with org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package; use org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package;
with org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;
with javax.microedition.khronos.egl.EGLConfig_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;
with org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package is

   subtype ShaderComposite_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access;
   function "=" (Left, Right : ShaderComposite_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References."=";
   subtype ShaderComposite_Access_Array is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array;
   function "=" (Left, Right : ShaderComposite_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References."=";
   subtype ShaderComposite_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access;
   function "=" (Left, Right : ShaderComposite_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References."=";
   subtype ShaderComposite_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References."=";
   subtype ShaderComposite_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References."=";
   subtype ShaderOpenGLProcessor_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   subtype ShaderOpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   subtype ShaderOpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   subtype ShaderOpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   subtype ShaderOpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out AppRendererShaderUpdaterFactory'Class) is
   begin
      null;
      This.NULL_SHADER_COMPOSITE_ARRAY := new ShaderComposite_Access_Array'(0 .. (0) - 1 => null);
      This.shaderCompositeArray := This.NULL_SHADER_COMPOSITE_ARRAY;
      This.shaderOpenGLProcessorArray := new ShaderOpenGLProcessor_Access_Array'(0 .. (0) - 1 => null);
   end Initialize_Fields;

   procedure Initialize (This : in out AppRendererShaderUpdaterFactory'Class) is
   begin
      ShaderUpdater_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AppRendererShaderUpdaterFactory_Access is
      This : constant AppRendererShaderUpdaterFactory_Access := new AppRendererShaderUpdaterFactory;
   begin
      AppRendererShaderUpdaterFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AppRendererShaderUpdaterFactory_Access is
   begin
        return AppRendererShaderUpdaterFactory_Package.instanceC;
   end getInstance;

   function getTestShaders (This : in out AppRendererShaderUpdaterFactory) return ShaderOpenGLProcessor_Access_Array_Access is
   begin
        return This.shaderOpenGLProcessorArray;
   end getTestShaders;

   procedure setShaderComposite (This : in out AppRendererShaderUpdaterFactory; object3d_Param : access Java_Object'Class) is
      object3d : constant Java_Object_Access := Java_Object_Access (object3d_Param);
   begin
        null;
   end setShaderComposite;

   procedure setShaderComposite (This : in out AppRendererShaderUpdaterFactory; Value : Unbounded_String) is
   begin
      AppRendererShaderUpdaterFactory'Class (This).setShaderComposite (Java_Box (Value));
   end setShaderComposite;

begin
   null;
   instanceC := AppRendererShaderUpdaterFactory_Package.Create;

end org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package;


