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

package min3d.core.Renderer_Package is


   type Renderer is interface;
   type Renderer_Access is access all Renderer'Class;
   type Renderer_Access_Array is array (Natural range <>) of Renderer_Access;
   type Renderer_Access_Array_Access is access all Renderer_Access_Array;
   procedure onSurfaceCreated (This : in out Renderer; gl : GL10_Access; config : EGLConfig_Access) is abstract;
   procedure onSurfaceChanged (This : in out Renderer; gl : GL10_Access; width : Integer; height : Integer) is abstract;
   procedure onDrawFrame (This : in out Renderer; gl : GL10_Access) is abstract;

end min3d.core.Renderer_Package;


