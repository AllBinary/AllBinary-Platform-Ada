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
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package; use org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

package org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package is

   package ObjectThreedOpenGLProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

   type ColorAttributePointerOpenGLProcessor is tagged;
   type ColorAttributePointerOpenGLProcessor_Access is access all ColorAttributePointerOpenGLProcessor'Class;
   type ColorAttributePointerOpenGLProcessor_Access_Array is array (Natural range <>) of ColorAttributePointerOpenGLProcessor_Access;
   type ColorAttributePointerOpenGLProcessor_Access_Array_Access is access all ColorAttributePointerOpenGLProcessor_Access_Array;

   type ColorAttributePointerOpenGLProcessor is new ObjectThreedOpenGLProcessor with null record;
   instance : ColorAttributePointerOpenGLProcessor_Access;

   procedure Initialize (This : in out ColorAttributePointerOpenGLProcessor'Class);
   function Create return ColorAttributePointerOpenGLProcessor_Access;
   function getInstance return ColorAttributePointerOpenGLProcessor_Access;
   procedure process (This : in out ColorAttributePointerOpenGLProcessor; gl : GL10_Access; anyType : Java_Object_Access);

end org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package;


