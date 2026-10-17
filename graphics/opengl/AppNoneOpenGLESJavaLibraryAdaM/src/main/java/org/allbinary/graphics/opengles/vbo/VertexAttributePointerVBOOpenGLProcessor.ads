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

package org.allbinary.graphics.opengles.vbo.VertexAttributePointerVBOOpenGLProcessor_Package is

   package ObjectThreedOpenGLProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

   type VertexAttributePointerVBOOpenGLProcessor is tagged;
   type VertexAttributePointerVBOOpenGLProcessor_Access is access all VertexAttributePointerVBOOpenGLProcessor'Class;
   type VertexAttributePointerVBOOpenGLProcessor_Access_Array is array (Natural range <>) of VertexAttributePointerVBOOpenGLProcessor_Access;
   type VertexAttributePointerVBOOpenGLProcessor_Access_Array_Access is access all VertexAttributePointerVBOOpenGLProcessor_Access_Array;

   type VertexAttributePointerVBOOpenGLProcessor is new ObjectThreedOpenGLProcessor with null record;
   instance : VertexAttributePointerVBOOpenGLProcessor_Access;

   procedure Initialize (This : in out VertexAttributePointerVBOOpenGLProcessor'Class);
   function Create return VertexAttributePointerVBOOpenGLProcessor_Access;
   function getInstance return VertexAttributePointerVBOOpenGLProcessor_Access;
   procedure process (This : in out VertexAttributePointerVBOOpenGLProcessor; gl : GL10_Access; anyType : Java_Object_Access);

end org.allbinary.graphics.opengles.vbo.VertexAttributePointerVBOOpenGLProcessor_Package;


