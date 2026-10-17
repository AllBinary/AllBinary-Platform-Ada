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

package org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package is


   type NullOpenGLTextureProcessor is tagged;
   type NullOpenGLTextureProcessor_Access is access all NullOpenGLTextureProcessor'Class;
   type NullOpenGLTextureProcessor_Access_Array is array (Natural range <>) of NullOpenGLTextureProcessor_Access;
   type NullOpenGLTextureProcessor_Access_Array_Access is access all NullOpenGLTextureProcessor_Access_Array;

   type NullOpenGLTextureProcessor is new Java_Object with null record;
   instance : OpenGLObject3dProcessor_Access;

   procedure Initialize (This : in out NullOpenGLTextureProcessor'Class);
   function Create return NullOpenGLTextureProcessor_Access;
   function getInstance return OpenGLObject3dProcessor_Access;
   procedure getInstance;

end org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package;


