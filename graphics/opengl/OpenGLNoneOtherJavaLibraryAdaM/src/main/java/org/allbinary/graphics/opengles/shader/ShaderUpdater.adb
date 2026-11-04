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


with javax.microedition.khronos.egl.EGLConfig_Package; use javax.microedition.khronos.egl.EGLConfig_Package;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package; use org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package;

package body org.allbinary.graphics.opengles.shader.ShaderUpdater_Package is

   subtype EGLConfig_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access;
   function "=" (Left, Right : EGLConfig_Access) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array;
   function "=" (Left, Right : EGLConfig_Access_Array) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access;
   function "=" (Left, Right : EGLConfig_Access_Array_Access) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array_Access_Array is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access_Array;
   function "=" (Left, Right : EGLConfig_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array_Access_Array_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EGLConfig_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype RendererStrings_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access;
   function "=" (Left, Right : RendererStrings_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype RendererStrings_Access_Array is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array;
   function "=" (Left, Right : RendererStrings_Access_Array) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype RendererStrings_Access_Array_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access;
   function "=" (Left, Right : RendererStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype RendererStrings_Access_Array_Access_Array is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access_Array;
   function "=" (Left, Right : RendererStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype RendererStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RendererStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out ShaderUpdater'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.rendererStrings := RendererStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ShaderUpdater'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShaderUpdater_Access is
      This : constant ShaderUpdater_Access := new ShaderUpdater;
   begin
      ShaderUpdater_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderUpdater_Access is
   begin
        return ShaderUpdater_Access (ShaderUpdater_Package.instance);
   end getInstance;

   procedure onSurfaceCreated (This : in out ShaderUpdater; gl_Param : access GL10_Package.GL10'Class; eglConfig_Param : access EGLConfig_Package.EGLConfig'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      eglConfig : constant EGLConfig_Access := EGLConfig_Access (eglConfig_Param);
   begin
        null;
   end onSurfaceCreated;

begin
   null;
   instance := ShaderUpdater_Package.Create;

end org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;


