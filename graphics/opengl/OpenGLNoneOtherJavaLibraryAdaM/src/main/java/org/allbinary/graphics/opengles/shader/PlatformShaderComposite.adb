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


with org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package; use org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package; use org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package_References;
with org.allbinary.graphics.opengles.shader.Shader_Package; use org.allbinary.graphics.opengles.shader.Shader_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package_References;
with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package; use org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;
with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References;
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package; use org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References;
with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package; use org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;
with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References;
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
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package;
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;
with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package is

   package NullOpenGLProcessorFactory_Package renames Standard.org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
   subtype OpenGLProcessor_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access;
   function "=" (Left, Right : OpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array;
   function "=" (Left, Right : OpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype Shader_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access;
   function "=" (Left, Right : Shader_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array;
   function "=" (Left, Right : Shader_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access;
   function "=" (Left, Right : Shader_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array;
   function "=" (Left, Right : Shader_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Shader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype CompositeShaderUpdater_Access is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access;
   function "=" (Left, Right : CompositeShaderUpdater_Access) return Boolean renames org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References."=";
   subtype CompositeShaderUpdater_Access_Array is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access_Array;
   function "=" (Left, Right : CompositeShaderUpdater_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References."=";
   subtype CompositeShaderUpdater_Access_Array_Access is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access_Array_Access;
   function "=" (Left, Right : CompositeShaderUpdater_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References."=";
   subtype CompositeShaderUpdater_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access_Array_Access_Array;
   function "=" (Left, Right : CompositeShaderUpdater_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References."=";
   subtype CompositeShaderUpdater_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompositeShaderUpdater_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References."=";
   subtype ShaderInitializer_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access;
   function "=" (Left, Right : ShaderInitializer_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   subtype ShaderInitializer_Access_Array is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array;
   function "=" (Left, Right : ShaderInitializer_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   subtype ShaderInitializer_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access;
   function "=" (Left, Right : ShaderInitializer_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   subtype ShaderInitializer_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderInitializer_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   subtype ShaderInitializer_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderInitializer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   subtype ModelViewProjection_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access;
   function "=" (Left, Right : ModelViewProjection_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   subtype ModelViewProjection_Access_Array is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array;
   function "=" (Left, Right : ModelViewProjection_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   subtype ModelViewProjection_Access_Array_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access;
   function "=" (Left, Right : ModelViewProjection_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   subtype ModelViewProjection_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access_Array;
   function "=" (Left, Right : ModelViewProjection_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   subtype ModelViewProjection_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ModelViewProjection_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   procedure Initialize_Fields (This : in out PlatformShaderComposite'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PlatformShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater_Package.CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer_Package.ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection_Package.ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class) is
      compositeShaderUpdater : constant CompositeShaderUpdater_Access := CompositeShaderUpdater_Access (compositeShaderUpdater_Param);
      shaderInitializer : constant ShaderInitializer_Access := ShaderInitializer_Access (shaderInitializer_Param);
      modelViewProjection : constant ModelViewProjection_Access := ModelViewProjection_Access (modelViewProjection_Param);
      colorOpenGLProcessor : constant OpenGLProcessor_Access := OpenGLProcessor_Access (colorOpenGLProcessor_Param);
      vertexOpenGLProcessor : constant OpenGLProcessor_Access := OpenGLProcessor_Access (vertexOpenGLProcessor_Param);
   begin
        ShaderComposite_Package.Initialize (This, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory_Package.getInstance);
   end Initialize;

   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater_Package.CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer_Package.ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection_Package.ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class) return PlatformShaderComposite_Access is
      This : constant PlatformShaderComposite_Access := new PlatformShaderComposite;
   begin
      PlatformShaderComposite_Package.Initialize (This.all, requiresOpenGLVersion, shaderArray, compositeShaderUpdater_Param, shaderInitializer_Param, modelViewProjection_Param, colorOpenGLProcessor_Param, vertexOpenGLProcessor_Param);
      return This;
   end Create;

end org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package;


