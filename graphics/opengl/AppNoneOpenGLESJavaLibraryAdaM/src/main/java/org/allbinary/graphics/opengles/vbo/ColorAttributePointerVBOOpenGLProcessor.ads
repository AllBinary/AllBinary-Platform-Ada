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

package org.allbinary.graphics.opengles.vbo.ColorAttributePointerVBOOpenGLProcessor_Package is

   package ObjectThreedOpenGLProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

   type ColorAttributePointerVBOOpenGLProcessor is tagged;
   type ColorAttributePointerVBOOpenGLProcessor_Access is access all ColorAttributePointerVBOOpenGLProcessor'Class;
   type ColorAttributePointerVBOOpenGLProcessor_Access_Array is array (Natural range <>) of ColorAttributePointerVBOOpenGLProcessor_Access;
   type ColorAttributePointerVBOOpenGLProcessor_Access_Array_Access is access all ColorAttributePointerVBOOpenGLProcessor_Access_Array;

   type ColorAttributePointerVBOOpenGLProcessor is new ObjectThreedOpenGLProcessor with null record;
   instance : ColorAttributePointerVBOOpenGLProcessor_Access;

   procedure Initialize (This : in out ColorAttributePointerVBOOpenGLProcessor'Class);
   function Create return ColorAttributePointerVBOOpenGLProcessor_Access;
   function getInstance return ColorAttributePointerVBOOpenGLProcessor_Access;
   procedure getInstance;
   procedure process (This : in out ColorAttributePointerVBOOpenGLProcessor; gl : GL10_Access; anyType : Java_Object_Access);

end org.allbinary.graphics.opengles.vbo.ColorAttributePointerVBOOpenGLProcessor_Package;


