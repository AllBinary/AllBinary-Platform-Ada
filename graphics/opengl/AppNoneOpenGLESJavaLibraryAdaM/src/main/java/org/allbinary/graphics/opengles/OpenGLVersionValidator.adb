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
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;
with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.graphics.opengles.OpenGLVersionValidator_Package is

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
   procedure Initialize_Fields (This : in out OpenGLVersionValidator'Class) is
   begin
      null;
      This.EGL_CONTEXT_CLIENT_VERSION_VALUE := -(1);
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLVersionValidator'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLVersionValidator_Access is
      This : constant OpenGLVersionValidator_Access := new OpenGLVersionValidator;
   begin
      OpenGLVersionValidator_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLVersionValidator_Access is
   begin
        return OpenGLVersionValidator_Package.instance;
   end getInstance;

   function isGL31OrHigher (This : in out OpenGLVersionValidator) return Boolean is
   begin
        return False;
   end isGL31OrHigher;

   function isAvailable (This : in out OpenGLVersionValidator; glVersionRequired : Unbounded_String) return Boolean is
   begin
        return False;
   end isAvailable;

   procedure setShaderComposite (This : in out OpenGLVersionValidator; shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; anyType_Param : access Java_Object'Class) is
      shaderComposite : constant ShaderComposite_Access := ShaderComposite_Access (shaderComposite_Param);
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end setShaderComposite;

   procedure isAvailable (This : in out OpenGLVersionValidator; glVersionRequired : Unbounded_String) is
      Java_Result : constant Boolean := OpenGLVersionValidator'Class (This).isAvailable (glVersionRequired => glVersionRequired);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAvailable;

begin
   null;
   instance := OpenGLVersionValidator_Package.Create;

end org.allbinary.graphics.opengles.OpenGLVersionValidator_Package;


