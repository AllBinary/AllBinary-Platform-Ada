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

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;
package org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References is
   type ShaderUpdater_Access is access all org.allbinary.graphics.opengles.shader.ShaderUpdater_Package.ShaderUpdater'Class;
   type ShaderUpdater_Access_Array is array (Natural range <>) of ShaderUpdater_Access;
   type ShaderUpdater_Access_Array_Access is access all ShaderUpdater_Access_Array;
   type ShaderUpdater_Access_Array_Access_Array is array (Natural range <>) of ShaderUpdater_Access_Array_Access;
   type ShaderUpdater_Access_Array_Access_Array_Access is access all ShaderUpdater_Access_Array_Access_Array;
   type ShaderUpdater_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShaderUpdater_Access_Array_Access;
   end record;
   function Java_Box (Value : ShaderUpdater_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShaderUpdater_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShaderUpdater_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShaderUpdater_Access_Array_Access is (if Value /= null and then Value.all in ShaderUpdater_Access_Array_Object'Class then ShaderUpdater_Access_Array_Object'Class (Value.all).Value else null);
   type ShaderUpdater_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShaderUpdater_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShaderUpdater_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShaderUpdater_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShaderUpdater_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShaderUpdater_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShaderUpdater_Access_Array_Access_Array_Object'Class then ShaderUpdater_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References;

with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References;
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
limited with org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.graphics.opengles.shader.ShaderUpdater_Package is

   package EGLConfig_Package renames Standard.javax.microedition.khronos.egl.EGLConfig_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package RendererStrings_Package renames Standard.org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype RendererStrings_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access;
   use type RendererStrings_Access;
   subtype RendererStrings_Access_Array is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array;
   use type RendererStrings_Access_Array;
   subtype RendererStrings_Access_Array_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access;
   use type RendererStrings_Access_Array_Access;
   subtype RendererStrings_Access_Array_Access_Array is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access_Array;
   use type RendererStrings_Access_Array_Access_Array;
   subtype RendererStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access_Array_Access;
   use type RendererStrings_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShaderUpdater_Access is org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.ShaderUpdater_Access;
   function "=" (Left, Right : ShaderUpdater_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References."=";
   subtype ShaderUpdater_Access_Array is org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.ShaderUpdater_Access_Array;
   function "=" (Left, Right : ShaderUpdater_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References."=";
   subtype ShaderUpdater_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.ShaderUpdater_Access_Array_Access;
   function "=" (Left, Right : ShaderUpdater_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References."=";
   function Java_Box (Value : ShaderUpdater_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.Java_Box;
   function Java_Unbox_ShaderUpdater_Access_Array (Value : access Java_Object'Class) return ShaderUpdater_Access_Array_Access renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.Java_Unbox_ShaderUpdater_Access_Array;
   subtype ShaderUpdater_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.ShaderUpdater_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderUpdater_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References."=";
   subtype ShaderUpdater_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.ShaderUpdater_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderUpdater_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References."=";
   function Java_Box (Value : ShaderUpdater_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.Java_Box;
   function Java_Unbox_ShaderUpdater_Access_Array_Access_Array (Value : access Java_Object'Class) return ShaderUpdater_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.shader.ShaderUpdater_Package_References.Java_Unbox_ShaderUpdater_Access_Array_Access_Array;

   type ShaderUpdater is new Java_Object with record
      commonStrings : CommonStrings_Access;
      rendererStrings : RendererStrings_Access;
   end record;
   instance : ShaderUpdater_Access;

   procedure Initialize (This : in out ShaderUpdater'Class);
   function Create return ShaderUpdater_Access;
   function getInstance return ShaderUpdater_Access;
   procedure onSurfaceCreated (This : in out ShaderUpdater; gl_Param : access GL10_Package.GL10'Class; eglConfig_Param : access EGLConfig_Package.EGLConfig'Class);

end org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;


