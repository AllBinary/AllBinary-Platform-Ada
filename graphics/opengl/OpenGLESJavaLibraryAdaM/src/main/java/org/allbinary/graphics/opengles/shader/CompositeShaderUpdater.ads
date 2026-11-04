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

limited with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;
package org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References is
   type CompositeShaderUpdater_Access is access all org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package.CompositeShaderUpdater'Class;
   type CompositeShaderUpdater_Access_Array is array (Natural range <>) of CompositeShaderUpdater_Access;
   type CompositeShaderUpdater_Access_Array_Access is access all CompositeShaderUpdater_Access_Array;
   type CompositeShaderUpdater_Access_Array_Access_Array is array (Natural range <>) of CompositeShaderUpdater_Access_Array_Access;
   type CompositeShaderUpdater_Access_Array_Access_Array_Access is access all CompositeShaderUpdater_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References;

with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.egl.EGLConfig_Package;
with javax.microedition.khronos.egl.EGLConfig_Package_References;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package; use org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;
limited with org.allbinary.graphics.opengles.shader.ShaderStrings_Package;
with org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References;

package org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package is

   package EGLConfig_Package renames Standard.javax.microedition.khronos.egl.EGLConfig_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Reference_Types is
   subtype EGLConfig_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access;
   use type EGLConfig_Access;
   subtype EGLConfig_Access_Array is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array;
   use type EGLConfig_Access_Array;
   subtype EGLConfig_Access_Array_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access;
   use type EGLConfig_Access_Array_Access;
   subtype EGLConfig_Access_Array_Access_Array is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access_Array;
   use type EGLConfig_Access_Array_Access_Array;
   subtype EGLConfig_Access_Array_Access_Array_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access_Array_Access;
   use type EGLConfig_Access_Array_Access_Array_Access;
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
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   subtype ShaderStrings_Access is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access;
   use type ShaderStrings_Access;
   subtype ShaderStrings_Access_Array is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access_Array;
   use type ShaderStrings_Access_Array;
   subtype ShaderStrings_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access_Array_Access;
   use type ShaderStrings_Access_Array_Access;
   subtype ShaderStrings_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access_Array_Access_Array;
   use type ShaderStrings_Access_Array_Access_Array;
   subtype ShaderStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access_Array_Access_Array_Access;
   use type ShaderStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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


