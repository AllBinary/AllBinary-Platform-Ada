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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package; use org.allbinary.graphics.opengles.shader.ShaderComposite_Package;

package org.allbinary.graphics.opengles.OpenGLVersionValidator_Package is

   package ShaderComposite_Package renames Standard.org.allbinary.graphics.opengles.shader.ShaderComposite_Package;

   type OpenGLVersionValidator is tagged;
   type OpenGLVersionValidator_Access is access all OpenGLVersionValidator'Class;
   type OpenGLVersionValidator_Access_Array is array (Natural range <>) of OpenGLVersionValidator_Access;
   type OpenGLVersionValidator_Access_Array_Access is access all OpenGLVersionValidator_Access_Array;
   type OpenGLVersionValidator_Access_Array_Access_Array is array (Natural range <>) of OpenGLVersionValidator_Access_Array_Access;
   type OpenGLVersionValidator_Access_Array_Access_Array_Access is access all OpenGLVersionValidator_Access_Array_Access_Array;

   type OpenGLVersionValidator is new Java_Object with record
      EGL_CONTEXT_CLIENT_VERSION_VALUE : Integer;
   end record;
   instance : OpenGLVersionValidator_Access;

   procedure Initialize (This : in out OpenGLVersionValidator'Class);
   function Create return OpenGLVersionValidator_Access;
   function getInstance return OpenGLVersionValidator_Access;
   function isGL31OrHigher (This : in out OpenGLVersionValidator) return Boolean;
   function isAvailable (This : in out OpenGLVersionValidator; glVersionRequired : Unbounded_String) return Boolean;
   procedure isAvailable (This : in out OpenGLVersionValidator; glVersionRequired : Unbounded_String);
   procedure setShaderComposite (This : in out OpenGLVersionValidator; shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.OpenGLVersionValidator_Package;


