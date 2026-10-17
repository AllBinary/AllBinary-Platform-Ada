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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.graphics.opengles.OpenGLCapabilities_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type OpenGLCapabilities is tagged;
   type OpenGLCapabilities_Access is access all OpenGLCapabilities'Class;
   type OpenGLCapabilities_Access_Array is array (Natural range <>) of OpenGLCapabilities_Access;
   type OpenGLCapabilities_Access_Array_Access is access all OpenGLCapabilities_Access_Array;

   type OpenGLCapabilities is new Java_Object with record
      VERSION_1_0 : Unbounded_String;
      VERSION_1_1 : Unbounded_String;
      VERSION_2_0 : Unbounded_String;
      VERSION_3_0 : Unbounded_String;
      VERSION_3_1 : Unbounded_String;
      VERSION_3_2 : Unbounded_String;
      VERSION_HIGHER_THAN_EXISTS : Unbounded_String;
      glVersion : Unbounded_String;
      shaderVersion : Integer;
      glInstanceVersion : Unbounded_String;
      maxTextureSize : Integer;
   end record;
   instance : OpenGLCapabilities_Access;

   procedure Initialize (This : in out OpenGLCapabilities'Class);
   function Create return OpenGLCapabilities_Access;
   function getInstance return OpenGLCapabilities_Access;
   procedure initCapabilities (This : in out OpenGLCapabilities; gl : Java_Object_Access);
   function isGlExtensionDrawTexture (This : in out OpenGLCapabilities) return Boolean;
   function getGlVersion (This : in out OpenGLCapabilities) return Unbounded_String;
   function isVertexBufferObjectSupport (This : in out OpenGLCapabilities) return Boolean;
   function isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) return Boolean;
   procedure isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer);

end org.allbinary.graphics.opengles.OpenGLCapabilities_Package;


