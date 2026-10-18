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
with org.allbinary.emulator.InitEmulatorFactory_Package; use org.allbinary.emulator.InitEmulatorFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package; use org.allbinary.graphics.opengles.renderer.RendererStrings_Package;

package org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package is

   package EGLConfig_Package renames Standard.javax.microedition.khronos.egl.EGLConfig_Package;
   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package InitEmulatorFactory_Package renames Standard.org.allbinary.emulator.InitEmulatorFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;

   type EmulatorCustomRenderer is tagged;
   type EmulatorCustomRenderer_Access is access all EmulatorCustomRenderer'Class;
   type EmulatorCustomRenderer_Access_Array is array (Natural range <>) of EmulatorCustomRenderer_Access;
   type EmulatorCustomRenderer_Access_Array_Access is access all EmulatorCustomRenderer_Access_Array;

   type EmulatorCustomRenderer is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      renderStrings : RendererStrings_Access;
   end record;

   procedure Initialize (This : in out EmulatorCustomRenderer'Class);
   function Create return EmulatorCustomRenderer_Access;
   procedure onSurfaceCreated (This : in out EmulatorCustomRenderer; gl_Param : access GL10_Package.GL10'Class; eglConfig_Param : access EGLConfig_Package.EGLConfig'Class);

end org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package;


