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

package org.allbinary.graphics.opengles.OpenGLVUtilBase_Package is


   type OpenGLVUtilBase is tagged;
   type OpenGLVUtilBase_Access is access all OpenGLVUtilBase'Class;
   type OpenGLVUtilBase_Access_Array is array (Natural range <>) of OpenGLVUtilBase_Access;
   type OpenGLVUtilBase_Access_Array_Access is access all OpenGLVUtilBase_Access_Array;

   type OpenGLVUtilBase is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLVUtilBase'Class);
   function Create return OpenGLVUtilBase_Access;
   procedure glTexEnvix (This : in out OpenGLVUtilBase; gl_Param : access GL10'Class; target : Integer; pname : Integer; param : Integer);
   procedure glTexParameterix (This : in out OpenGLVUtilBase; gl_Param : access GL10'Class; target : Integer; pname : Integer; param : Integer);
   procedure glGenerateMipmap (This : in out OpenGLVUtilBase; gl_Param : access GL10'Class; textureId : Integer; target : Integer; generateMipMap : Boolean);

end org.allbinary.graphics.opengles.OpenGLVUtilBase_Package;


