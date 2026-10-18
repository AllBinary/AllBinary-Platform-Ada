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
with javax.microedition.khronos.egl.EGLConfig_Package; use javax.microedition.khronos.egl.EGLConfig_Package;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package; use org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;
with org.allbinary.graphics.opengles.shader.ShaderStrings_Package; use org.allbinary.graphics.opengles.shader.ShaderStrings_Package;

package org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package is

   package EGLConfig_Package renames Standard.javax.microedition.khronos.egl.EGLConfig_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type CompositeShaderUpdater is tagged;
   type CompositeShaderUpdater_Access is access all CompositeShaderUpdater'Class;
   type CompositeShaderUpdater_Access_Array is array (Natural range <>) of CompositeShaderUpdater_Access;
   type CompositeShaderUpdater_Access_Array_Access is access all CompositeShaderUpdater_Access_Array;

   type CompositeShaderUpdater is new ShaderUpdater with record
      commonSeps : CommonSeps_Access;
      shaderStrings : ShaderStrings_Access;
      uniformBlockHandleArray : Integer_Array_Access;
      uniformBlockArray : Unbounded_String_Array_Access;
      uniformHandleArray : Integer_Array_Access;
      uniformArray : Unbounded_String_Array_Access;
      attributeHandleArray : Integer_Array_Access;
      attributeArray : Unbounded_String_Array_Access;
   end record;
   instanceC : CompositeShaderUpdater_Access;

   procedure Initialize (This : in out CompositeShaderUpdater'Class; uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access);
   function Create (uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access) return CompositeShaderUpdater_Access;
   function getInstance return CompositeShaderUpdater_Access;
   procedure onSurfaceCreated (This : in out CompositeShaderUpdater; gl_Param : access GL10_Package.GL10'Class; eglConfig_Param : access EGLConfig_Package.EGLConfig'Class; programHandle : Integer);
   procedure onSurfaceDestroyed (This : in out CompositeShaderUpdater; gl_Param : access GL10_Package.GL10'Class);

end org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;


