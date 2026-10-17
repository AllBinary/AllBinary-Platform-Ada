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


package body org.allbinary.graphics.opengles.shader.Shader_Package is

   procedure Initialize_Fields (This : in out Shader'Class) is
   begin
      null;
      This.shaderName := Null_Unbounded_String;
      This.shaderStringList := null;
      This.shaderAsString := Null_Unbounded_String;
      This.shaderHandle := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out Shader'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Shader_Access is
      This : constant Shader_Access := new Shader;
   begin
      Shader_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.graphics.opengles.shader.Shader_Package;


