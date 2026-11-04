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
        return OpenGLVersionValidator_Access (OpenGLVersionValidator_Package.instance);
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


