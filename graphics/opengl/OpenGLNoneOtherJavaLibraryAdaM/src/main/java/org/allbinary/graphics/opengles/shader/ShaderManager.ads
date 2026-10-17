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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.graphics.opengles.shader.ShaderManager_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type ShaderManager is tagged;
   type ShaderManager_Access is access all ShaderManager'Class;
   type ShaderManager_Access_Array is array (Natural range <>) of ShaderManager_Access;
   type ShaderManager_Access_Array_Access is access all ShaderManager_Access_Array;

   type ShaderManager is new Java_Object with record
      LOAD_SHADER : Unbounded_String;
      commonStrings : CommonStrings_Access;
      GL_VERTEX_SHADER : Integer;
      GL_FRAGMENT_SHADER : Integer;
   end record;
   instance : ShaderManager_Access;

   procedure Initialize (This : in out ShaderManager'Class; GL_VERTEX_SHADER : Integer; GL_FRAGMENT_SHADER : Integer);
   function Create (GL_VERTEX_SHADER : Integer; GL_FRAGMENT_SHADER : Integer) return ShaderManager_Access;
   function getInstance return ShaderManager_Access;
   procedure getInstance;
   function load (This : in out ShaderManager; gl : GL10_Access; resource : Unbounded_String; shaderAsStringArray : Unbounded_String_Array_Access; shaderType : Integer) return Integer;
   procedure load (This : in out ShaderManager; gl : GL10_Access; resource : Unbounded_String; shaderAsStringArray : Unbounded_String_Array_Access; shaderType : Integer);
   function loadShader (This : in out ShaderManager; gl : GL10_Access; resource : Unbounded_String; stringList : BasicArrayList_Access; shaderType : Integer) return Integer;
   procedure loadShader (This : in out ShaderManager; gl : GL10_Access; resource : Unbounded_String; stringList : BasicArrayList_Access; shaderType : Integer);

end org.allbinary.graphics.opengles.shader.ShaderManager_Package;


