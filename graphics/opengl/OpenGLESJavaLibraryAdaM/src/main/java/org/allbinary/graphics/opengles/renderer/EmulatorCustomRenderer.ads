--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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

limited with org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package;
package org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References is
   type EmulatorCustomRenderer_Access is access all org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package.EmulatorCustomRenderer'Class;
   type EmulatorCustomRenderer_Access_Array is array (Natural range <>) of EmulatorCustomRenderer_Access;
   type EmulatorCustomRenderer_Access_Array_Access is access all EmulatorCustomRenderer_Access_Array;
   type EmulatorCustomRenderer_Access_Array_Access_Array is array (Natural range <>) of EmulatorCustomRenderer_Access_Array_Access;
   type EmulatorCustomRenderer_Access_Array_Access_Array_Access is access all EmulatorCustomRenderer_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References;

with org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References;

package org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package is

   package EGLConfig_Package renames Standard.javax.microedition.khronos.egl.EGLConfig_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype EmulatorCustomRenderer_Access is org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References.EmulatorCustomRenderer_Access;
   function "=" (Left, Right : EmulatorCustomRenderer_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References."=";
   subtype EmulatorCustomRenderer_Access_Array is org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References.EmulatorCustomRenderer_Access_Array;
   function "=" (Left, Right : EmulatorCustomRenderer_Access_Array) return Boolean renames org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References."=";
   subtype EmulatorCustomRenderer_Access_Array_Access is org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References.EmulatorCustomRenderer_Access_Array_Access;
   function "=" (Left, Right : EmulatorCustomRenderer_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References."=";
   subtype EmulatorCustomRenderer_Access_Array_Access_Array is org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References.EmulatorCustomRenderer_Access_Array_Access_Array;
   function "=" (Left, Right : EmulatorCustomRenderer_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References."=";
   subtype EmulatorCustomRenderer_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References.EmulatorCustomRenderer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmulatorCustomRenderer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package_References."=";

   type EmulatorCustomRenderer is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      renderStrings : RendererStrings_Access;
   end record;

   procedure Initialize (This : in out EmulatorCustomRenderer'Class);
   function Create return EmulatorCustomRenderer_Access;
   procedure onSurfaceCreated (This : in out EmulatorCustomRenderer; gl_Param : access GL10_Package.GL10'Class; eglConfig_Param : access EGLConfig_Package.EGLConfig'Class);

end org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package;


