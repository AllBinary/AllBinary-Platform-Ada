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

limited with org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package;
package org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References is
   type UniformTextureOpenGLProcessor_Access is access all org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package.UniformTextureOpenGLProcessor'Class;
   type UniformTextureOpenGLProcessor_Access_Array is array (Natural range <>) of UniformTextureOpenGLProcessor_Access;
   type UniformTextureOpenGLProcessor_Access_Array_Access is access all UniformTextureOpenGLProcessor_Access_Array;
   type UniformTextureOpenGLProcessor_Access_Array_Access_Array is array (Natural range <>) of UniformTextureOpenGLProcessor_Access_Array_Access;
   type UniformTextureOpenGLProcessor_Access_Array_Access_Array_Access is access all UniformTextureOpenGLProcessor_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References;

with org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References;
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
with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package; use org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;
limited with org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References;

package org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype UniformTextureOpenGLProcessor_Access is org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References.UniformTextureOpenGLProcessor_Access;
   function "=" (Left, Right : UniformTextureOpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References."=";
   subtype UniformTextureOpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References.UniformTextureOpenGLProcessor_Access_Array;
   function "=" (Left, Right : UniformTextureOpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References."=";
   subtype UniformTextureOpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References.UniformTextureOpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : UniformTextureOpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References."=";
   subtype UniformTextureOpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References.UniformTextureOpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : UniformTextureOpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References."=";
   subtype UniformTextureOpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References.UniformTextureOpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UniformTextureOpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package_References."=";

   type UniformTextureOpenGLProcessor is new OpenGLObject3dProcessor with null record;

   procedure Initialize (This : in out UniformTextureOpenGLProcessor'Class; shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer);
   function Create (shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer) return UniformTextureOpenGLProcessor_Access;
   procedure process (This : in out UniformTextureOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; unused_Param : access Java_Object'Class; index : Integer);

end org.allbinary.graphics.opengles.shader.UniformTextureOpenGLProcessor_Package;


