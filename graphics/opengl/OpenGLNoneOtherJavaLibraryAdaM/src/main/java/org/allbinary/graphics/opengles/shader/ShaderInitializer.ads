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
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package; use org.allbinary.graphics.opengles.shader.Shader_Package;

package org.allbinary.graphics.opengles.shader.ShaderInitializer_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ShaderInitializer is tagged;
   type ShaderInitializer_Access is access all ShaderInitializer'Class;
   type ShaderInitializer_Access_Array is array (Natural range <>) of ShaderInitializer_Access;
   type ShaderInitializer_Access_Array_Access is access all ShaderInitializer_Access_Array;

   type ShaderInitializer is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;
   instance : ShaderInitializer_Access;

   procedure Initialize (This : in out ShaderInitializer'Class);
   function Create return ShaderInitializer_Access;
   function getInstance return ShaderInitializer_Access;
   function init (This : in out ShaderInitializer; gl_Param : access GL10_Package.GL10'Class; shader : Shader_Access_Array_Access; attributeArray : Unbounded_String_Array_Access) return Integer;
   procedure init (This : in out ShaderInitializer; gl_Param : access GL10_Package.GL10'Class; shader : Shader_Access_Array_Access; attributeArray : Unbounded_String_Array_Access);

end org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;


