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

limited with org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
package org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References is
   type ShaderComposite_Access is access all org.allbinary.graphics.opengles.shader.ShaderComposite_Package.ShaderComposite'Class;
   type ShaderComposite_Access_Array is array (Natural range <>) of ShaderComposite_Access;
   type ShaderComposite_Access_Array_Access is access all ShaderComposite_Access_Array;
   type ShaderComposite_Access_Array_Access_Array is array (Natural range <>) of ShaderComposite_Access_Array_Access;
   type ShaderComposite_Access_Array_Access_Array_Access is access all ShaderComposite_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References;

with org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package_References;
limited with org.allbinary.graphics.opengles.shader.Shader_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package_References;
limited with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References;
limited with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;
with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References;
limited with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;
with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References;
limited with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;
with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References;

package org.allbinary.graphics.opengles.shader.ShaderComposite_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package OpenGLProcessor_Package renames Standard.org.allbinary.graphics.opengles.OpenGLProcessor_Package;
   package Reference_Types is
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
   subtype OpenGLProcessor_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access;
   use type OpenGLProcessor_Access;
   subtype OpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array;
   use type OpenGLProcessor_Access_Array;
   subtype OpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access;
   use type OpenGLProcessor_Access_Array_Access;
   subtype OpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array;
   use type OpenGLProcessor_Access_Array_Access_Array;
   subtype OpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array_Access;
   use type OpenGLProcessor_Access_Array_Access_Array_Access;
   subtype Shader_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access;
   use type Shader_Access;
   subtype Shader_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array;
   use type Shader_Access_Array;
   subtype Shader_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access;
   use type Shader_Access_Array_Access;
   subtype Shader_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array;
   use type Shader_Access_Array_Access_Array;
   subtype Shader_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array_Access;
   use type Shader_Access_Array_Access_Array_Access;
   subtype ShaderInitializer_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access;
   use type ShaderInitializer_Access;
   subtype ShaderInitializer_Access_Array is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array;
   use type ShaderInitializer_Access_Array;
   subtype ShaderInitializer_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access;
   use type ShaderInitializer_Access_Array_Access;
   subtype ShaderInitializer_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access_Array;
   use type ShaderInitializer_Access_Array_Access_Array;
   subtype ShaderInitializer_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access_Array_Access;
   use type ShaderInitializer_Access_Array_Access_Array_Access;
   subtype CompositeShaderUpdater_Access is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access;
   use type CompositeShaderUpdater_Access;
   subtype CompositeShaderUpdater_Access_Array is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access_Array;
   use type CompositeShaderUpdater_Access_Array;
   subtype CompositeShaderUpdater_Access_Array_Access is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access_Array_Access;
   use type CompositeShaderUpdater_Access_Array_Access;
   subtype CompositeShaderUpdater_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access_Array_Access_Array;
   use type CompositeShaderUpdater_Access_Array_Access_Array;
   subtype CompositeShaderUpdater_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References.CompositeShaderUpdater_Access_Array_Access_Array_Access;
   use type CompositeShaderUpdater_Access_Array_Access_Array_Access;
   subtype ModelViewProjection_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access;
   use type ModelViewProjection_Access;
   subtype ModelViewProjection_Access_Array is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array;
   use type ModelViewProjection_Access_Array;
   subtype ModelViewProjection_Access_Array_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access;
   use type ModelViewProjection_Access_Array_Access;
   subtype ModelViewProjection_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access_Array;
   use type ModelViewProjection_Access_Array_Access_Array;
   subtype ModelViewProjection_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access_Array_Access;
   use type ModelViewProjection_Access_Array_Access_Array_Access;
   subtype OpenGLObject3dProcessor_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access;
   use type OpenGLObject3dProcessor_Access;
   subtype OpenGLObject3dProcessor_Access_Array is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array;
   use type OpenGLObject3dProcessor_Access_Array;
   subtype OpenGLObject3dProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access;
   use type OpenGLObject3dProcessor_Access_Array_Access;
   subtype OpenGLObject3dProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access_Array;
   use type OpenGLObject3dProcessor_Access_Array_Access_Array;
   subtype OpenGLObject3dProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access_Array_Access;
   use type OpenGLObject3dProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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

   type ShaderComposite is new Java_Object with record
      disableProgramShaderOpenGLProcessor : OpenGLProcessor_Access;
      requiresOpenGLVersion : Unbounded_String;
      shaderArray : Shader_Access_Array_Access;
      shaderInitializer : ShaderInitializer_Access;
      compositeShaderUpdater : CompositeShaderUpdater_Access;
      modelViewProjection : ModelViewProjection_Access;
      colorOpenGLProcessor : OpenGLProcessor_Access;
      vertexOpenGLProcessor : OpenGLProcessor_Access;
      useProgramShaderOpenGLProcessor : OpenGLProcessor_Access;
      shaderMatrixOpenGLProcessor : OpenGLProcessor_Access;
      colorEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      normalEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      vertexEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      textureEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      colorDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      normalDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      vertexDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      textureDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor_Access;
      uniformLightPositionOpenGLProcessor : OpenGLObject3dProcessor_Access;
      uniformLightColorOpenGLProcessor : OpenGLObject3dProcessor_Access;
      uniformCameraPositionOpenGLProcessor : OpenGLObject3dProcessor_Access;
      uniformTextureUnitOpenGLProcessor : OpenGLObject3dProcessor_Access;
      programHandle : Integer;
   end record;

   procedure Initialize (This : in out ShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater_Package.CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer_Package.ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection_Package.ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class; disableProgramShaderOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class);
   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater_Package.CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer_Package.ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection_Package.ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class; disableProgramShaderOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class) return ShaderComposite_Access;
   procedure init (This : in out ShaderComposite; gl_Param : access GL10_Package.GL10'Class);

end org.allbinary.graphics.opengles.shader.ShaderComposite_Package;


