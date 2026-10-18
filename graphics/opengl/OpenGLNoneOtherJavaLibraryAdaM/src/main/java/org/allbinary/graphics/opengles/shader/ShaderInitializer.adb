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


