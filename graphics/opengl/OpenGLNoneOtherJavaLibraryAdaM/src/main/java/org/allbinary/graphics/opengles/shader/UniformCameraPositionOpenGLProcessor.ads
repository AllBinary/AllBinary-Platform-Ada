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

limited with org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package;
package org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References is
   type UniformCameraPositionOpenGLProcessor_Access is access all org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package.UniformCameraPositionOpenGLProcessor'Class;
   type UniformCameraPositionOpenGLProcessor_Access_Array is array (Natural range <>) of UniformCameraPositionOpenGLProcessor_Access;
   type UniformCameraPositionOpenGLProcessor_Access_Array_Access is access all UniformCameraPositionOpenGLProcessor_Access_Array;
   type UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array is array (Natural range <>) of UniformCameraPositionOpenGLProcessor_Access_Array_Access;
   type UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array_Access is access all UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References;

with org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References;
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

package org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package is

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


   subtype UniformCameraPositionOpenGLProcessor_Access is org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References.UniformCameraPositionOpenGLProcessor_Access;
   function "=" (Left, Right : UniformCameraPositionOpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References."=";
   subtype UniformCameraPositionOpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References.UniformCameraPositionOpenGLProcessor_Access_Array;
   function "=" (Left, Right : UniformCameraPositionOpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References."=";
   subtype UniformCameraPositionOpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References.UniformCameraPositionOpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : UniformCameraPositionOpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References."=";
   subtype UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References.UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References."=";
   subtype UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References.UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UniformCameraPositionOpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package_References."=";

   type UniformCameraPositionOpenGLProcessor is new OpenGLObject3dProcessor with null record;

   procedure Initialize (This : in out UniformCameraPositionOpenGLProcessor'Class; shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer);
   function Create (shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; handleIndex : Integer) return UniformCameraPositionOpenGLProcessor_Access;
   procedure process (This : in out UniformCameraPositionOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor_Package;


