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

limited with org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package;
package org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References is
   type AppRendererShaderUpdaterFactory_Access is access all org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package.AppRendererShaderUpdaterFactory'Class;
   type AppRendererShaderUpdaterFactory_Access_Array is array (Natural range <>) of AppRendererShaderUpdaterFactory_Access;
   type AppRendererShaderUpdaterFactory_Access_Array_Access is access all AppRendererShaderUpdaterFactory_Access_Array;
   type AppRendererShaderUpdaterFactory_Access_Array_Access_Array is array (Natural range <>) of AppRendererShaderUpdaterFactory_Access_Array_Access;
   type AppRendererShaderUpdaterFactory_Access_Array_Access_Array_Access is access all AppRendererShaderUpdaterFactory_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References;

with org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package; use org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;
limited with org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References;
limited with org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package;
with org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References;

package org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package is

   package Reference_Types is
   subtype ShaderComposite_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access;
   use type ShaderComposite_Access;
   subtype ShaderComposite_Access_Array is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array;
   use type ShaderComposite_Access_Array;
   subtype ShaderComposite_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access;
   use type ShaderComposite_Access_Array_Access;
   subtype ShaderComposite_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access_Array;
   use type ShaderComposite_Access_Array_Access_Array;
   subtype ShaderComposite_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access_Array_Access;
   use type ShaderComposite_Access_Array_Access_Array_Access;
   subtype ShaderOpenGLProcessor_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access;
   use type ShaderOpenGLProcessor_Access;
   subtype ShaderOpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array;
   use type ShaderOpenGLProcessor_Access_Array;
   subtype ShaderOpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access;
   use type ShaderOpenGLProcessor_Access_Array_Access;
   subtype ShaderOpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access_Array;
   use type ShaderOpenGLProcessor_Access_Array_Access_Array;
   subtype ShaderOpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access_Array_Access;
   use type ShaderOpenGLProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AppRendererShaderUpdaterFactory_Access is org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References.AppRendererShaderUpdaterFactory_Access;
   function "=" (Left, Right : AppRendererShaderUpdaterFactory_Access) return Boolean renames org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References."=";
   subtype AppRendererShaderUpdaterFactory_Access_Array is org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References.AppRendererShaderUpdaterFactory_Access_Array;
   function "=" (Left, Right : AppRendererShaderUpdaterFactory_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References."=";
   subtype AppRendererShaderUpdaterFactory_Access_Array_Access is org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References.AppRendererShaderUpdaterFactory_Access_Array_Access;
   function "=" (Left, Right : AppRendererShaderUpdaterFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References."=";
   subtype AppRendererShaderUpdaterFactory_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References.AppRendererShaderUpdaterFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AppRendererShaderUpdaterFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References."=";
   subtype AppRendererShaderUpdaterFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References.AppRendererShaderUpdaterFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AppRendererShaderUpdaterFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package_References."=";

   type AppRendererShaderUpdaterFactory is new ShaderUpdater with record
      NULL_SHADER_COMPOSITE_ARRAY : ShaderComposite_Access_Array_Access;
      shaderCompositeArray : ShaderComposite_Access_Array_Access;
      shaderOpenGLProcessorArray : ShaderOpenGLProcessor_Access_Array_Access;
   end record;
   instanceC : AppRendererShaderUpdaterFactory_Access;

   procedure Initialize (This : in out AppRendererShaderUpdaterFactory'Class);
   function Create return AppRendererShaderUpdaterFactory_Access;
   function getInstance return AppRendererShaderUpdaterFactory_Access;
   function getTestShaders (This : in out AppRendererShaderUpdaterFactory) return ShaderOpenGLProcessor_Access_Array_Access;
   procedure setShaderComposite (This : in out AppRendererShaderUpdaterFactory; object3d_Param : access Java_Object'Class);
   procedure setShaderComposite (This : in out AppRendererShaderUpdaterFactory; Value : Unbounded_String);

end org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory_Package;


