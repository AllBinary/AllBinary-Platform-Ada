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


with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.graphics.opengles.shader.Shader_Package; use org.allbinary.graphics.opengles.shader.Shader_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package;

package body org.allbinary.graphics.opengles.shader.ShaderInitializer_Package is

   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype Shader_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access;
   function "=" (Left, Right : Shader_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array;
   function "=" (Left, Right : Shader_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access;
   function "=" (Left, Right : Shader_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array;
   function "=" (Left, Right : Shader_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Shader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   procedure Initialize_Fields (This : in out ShaderInitializer'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ShaderInitializer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShaderInitializer_Access is
      This : constant ShaderInitializer_Access := new ShaderInitializer;
   begin
      ShaderInitializer_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderInitializer_Access is
   begin
        return ShaderInitializer_Package.instance;
   end getInstance;

   function init (This : in out ShaderInitializer; gl_Param : access GL10_Package.GL10'Class; shader : Shader_Access_Array_Access; attributeArray : Unbounded_String_Array_Access) return Integer is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        return -(1);
   end init;

   procedure init (This : in out ShaderInitializer; gl_Param : access GL10_Package.GL10'Class; shader : Shader_Access_Array_Access; attributeArray : Unbounded_String_Array_Access) is
      Java_Result : constant Integer := ShaderInitializer'Class (This).init (gl_Param => gl_Param, shader => shader, attributeArray => attributeArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end init;

begin
   null;
   instance := ShaderInitializer_Package.Create;

end org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;


