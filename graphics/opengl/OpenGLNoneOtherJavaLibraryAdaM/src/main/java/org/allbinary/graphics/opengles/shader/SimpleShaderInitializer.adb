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


package body org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package is

   procedure Initialize_Fields (This : in out SimpleShaderInitializer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SimpleShaderInitializer'Class) is
   begin
      ShaderInitializer_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return SimpleShaderInitializer_Access is
      This : constant SimpleShaderInitializer_Access := new SimpleShaderInitializer;
   begin
      SimpleShaderInitializer_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SimpleShaderInitializer_Access is
   begin
        return SimpleShaderInitializer_Package.instanceC;
   end getInstance;

begin
   null;
   instanceC := SimpleShaderInitializer_Package.Create;

end org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package;


