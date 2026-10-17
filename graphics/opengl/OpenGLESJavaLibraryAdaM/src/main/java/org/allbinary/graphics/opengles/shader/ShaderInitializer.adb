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


package body org.allbinary.graphics.opengles.shader.ShaderInitializer_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderInitializer_Access is
   begin
        return ShaderInitializer_Package.instance;
   end getInstance;

   function init (This : in out ShaderInitializer; gl : GL10_Access; shader : Shader_Access_Array_Access; attributeArray : Unbounded_String_Array_Access) return Integer is
   begin
        return -(1);
   end init;

   procedure getInstance is
      Java_Result : constant ShaderInitializer_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure init (This : in out ShaderInitializer; gl : GL10_Access; shader : Shader_Access_Array_Access; attributeArray : Unbounded_String_Array_Access) is
      Java_Result : constant Integer := ShaderInitializer'Class (This).init (gl, shader, attributeArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end init;

begin
   null;
   instance := ShaderInitializer_Package.Create;

end org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;


