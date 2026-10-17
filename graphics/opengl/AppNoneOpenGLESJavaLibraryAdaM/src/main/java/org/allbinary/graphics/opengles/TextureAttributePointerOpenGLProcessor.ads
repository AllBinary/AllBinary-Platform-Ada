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

package org.allbinary.graphics.opengles.TextureAttributePointerOpenGLProcessor_Package is

   package ObjectThreedOpenGLProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

   type TextureAttributePointerOpenGLProcessor is tagged;
   type TextureAttributePointerOpenGLProcessor_Access is access all TextureAttributePointerOpenGLProcessor'Class;
   type TextureAttributePointerOpenGLProcessor_Access_Array is array (Natural range <>) of TextureAttributePointerOpenGLProcessor_Access;
   type TextureAttributePointerOpenGLProcessor_Access_Array_Access is access all TextureAttributePointerOpenGLProcessor_Access_Array;

   type TextureAttributePointerOpenGLProcessor is new ObjectThreedOpenGLProcessor with null record;
   instance : TextureAttributePointerOpenGLProcessor_Access;

   procedure Initialize (This : in out TextureAttributePointerOpenGLProcessor'Class);
   function Create return TextureAttributePointerOpenGLProcessor_Access;
   function getInstance return TextureAttributePointerOpenGLProcessor_Access;
   procedure process (This : in out TextureAttributePointerOpenGLProcessor; gl_Param : access GL10'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.TextureAttributePointerOpenGLProcessor_Package;


