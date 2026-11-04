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

limited with org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package;
package org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References is
   type PlatformShaderComposite_Access is access all org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package.PlatformShaderComposite'Class;
   type PlatformShaderComposite_Access_Array is array (Natural range <>) of PlatformShaderComposite_Access;
   type PlatformShaderComposite_Access_Array_Access is access all PlatformShaderComposite_Access_Array;
   type PlatformShaderComposite_Access_Array_Access_Array is array (Natural range <>) of PlatformShaderComposite_Access_Array_Access;
   type PlatformShaderComposite_Access_Array_Access_Array_Access is access all PlatformShaderComposite_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References;

with org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package_References;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package; use org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
limited with org.allbinary.graphics.opengles.shader.Shader_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package_References;
limited with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;
with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References;
limited with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References;
limited with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;
with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References;

package org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package is

   package OpenGLProcessor_Package renames Standard.org.allbinary.graphics.opengles.OpenGLProcessor_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype PlatformShaderComposite_Access is org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References.PlatformShaderComposite_Access;
   function "=" (Left, Right : PlatformShaderComposite_Access) return Boolean renames org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References."=";
   subtype PlatformShaderComposite_Access_Array is org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References.PlatformShaderComposite_Access_Array;
   function "=" (Left, Right : PlatformShaderComposite_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References."=";
   subtype PlatformShaderComposite_Access_Array_Access is org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References.PlatformShaderComposite_Access_Array_Access;
   function "=" (Left, Right : PlatformShaderComposite_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References."=";
   subtype PlatformShaderComposite_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References.PlatformShaderComposite_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformShaderComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References."=";
   subtype PlatformShaderComposite_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References.PlatformShaderComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformShaderComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package_References."=";

   type PlatformShaderComposite is new ShaderComposite with null record;

   procedure Initialize (This : in out PlatformShaderComposite'Class; requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater_Package.CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer_Package.ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection_Package.ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class);
   function Create (requiresOpenGLVersion : Unbounded_String; shaderArray : Shader_Access_Array_Access; compositeShaderUpdater_Param : access CompositeShaderUpdater_Package.CompositeShaderUpdater'Class; shaderInitializer_Param : access ShaderInitializer_Package.ShaderInitializer'Class; modelViewProjection_Param : access ModelViewProjection_Package.ModelViewProjection'Class; colorOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class; vertexOpenGLProcessor_Param : access OpenGLProcessor_Package.OpenGLProcessor'Class) return PlatformShaderComposite_Access;

end org.allbinary.graphics.opengles.shader.PlatformShaderComposite_Package;


