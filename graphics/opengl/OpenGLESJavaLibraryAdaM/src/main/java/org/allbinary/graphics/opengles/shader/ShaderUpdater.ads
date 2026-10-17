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
--  with javax.microedition.khronos.egl.EGLConfig_Package; use javax.microedition.khronos.egl.EGLConfig_Package;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package; use org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.graphics.opengles.shader.ShaderUpdater_Package is

   package RendererStrings_Package renames Standard.org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ShaderUpdater is tagged;
   type ShaderUpdater_Access is access all ShaderUpdater'Class;
   type ShaderUpdater_Access_Array is array (Natural range <>) of ShaderUpdater_Access;
   type ShaderUpdater_Access_Array_Access is access all ShaderUpdater_Access_Array;

   type ShaderUpdater is new Java_Object with record
      commonStrings : CommonStrings_Access;
      rendererStrings : RendererStrings_Access;
   end record;
   instance : ShaderUpdater_Access;

   procedure Initialize (This : in out ShaderUpdater'Class);
   function Create return ShaderUpdater_Access;
   function getInstance return ShaderUpdater_Access;
   procedure onSurfaceCreated (This : in out ShaderUpdater; gl : GL10_Access; eglConfig : EGLConfig_Access);

end org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;


