-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with min3d.core.Renderer_Package;
package min3d.core.Renderer_Package_References is
   type Renderer_Access is access all min3d.core.Renderer_Package.Renderer'Class;
   type Renderer_Access_Array is array (Natural range <>) of Renderer_Access;
   type Renderer_Access_Array_Access is access all Renderer_Access_Array;
   type Renderer_Access_Array_Access_Array is array (Natural range <>) of Renderer_Access_Array_Access;
   type Renderer_Access_Array_Access_Array_Access is access all Renderer_Access_Array_Access_Array;
end min3d.core.Renderer_Package_References;

with min3d.core.Renderer_Package_References;
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

package min3d.core.Renderer_Package is

   package EGLConfig_Package renames Standard.javax.microedition.khronos.egl.EGLConfig_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
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
   end Reference_Types;
   use Reference_Types;


   type Renderer is interface;
   subtype Renderer_Access is min3d.core.Renderer_Package_References.Renderer_Access;
   function "=" (Left, Right : Renderer_Access) return Boolean renames min3d.core.Renderer_Package_References."=";
   subtype Renderer_Access_Array is min3d.core.Renderer_Package_References.Renderer_Access_Array;
   function "=" (Left, Right : Renderer_Access_Array) return Boolean renames min3d.core.Renderer_Package_References."=";
   subtype Renderer_Access_Array_Access is min3d.core.Renderer_Package_References.Renderer_Access_Array_Access;
   function "=" (Left, Right : Renderer_Access_Array_Access) return Boolean renames min3d.core.Renderer_Package_References."=";
   subtype Renderer_Access_Array_Access_Array is min3d.core.Renderer_Package_References.Renderer_Access_Array_Access_Array;
   function "=" (Left, Right : Renderer_Access_Array_Access_Array) return Boolean renames min3d.core.Renderer_Package_References."=";
   subtype Renderer_Access_Array_Access_Array_Access is min3d.core.Renderer_Package_References.Renderer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Renderer_Access_Array_Access_Array_Access) return Boolean renames min3d.core.Renderer_Package_References."=";
   function Java_Object_Access_From_Renderer (Value : Renderer_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onSurfaceCreated (This : in out Renderer; gl_Param : access GL10_Package.GL10'Class; config_Param : access EGLConfig_Package.EGLConfig'Class) is abstract;
   procedure onSurfaceChanged (This : in out Renderer; gl_Param : access GL10_Package.GL10'Class; width : Integer; height : Integer) is abstract;
   procedure onDrawFrame (This : in out Renderer; gl_Param : access GL10_Package.GL10'Class) is abstract;

end min3d.core.Renderer_Package;


