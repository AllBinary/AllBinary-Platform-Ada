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



package body org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package is

   procedure Initialize_Fields (This : in out LoadedShaderManager'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LoadedShaderManager'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LoadedShaderManager_Access is
      This : constant LoadedShaderManager_Access := new LoadedShaderManager;
   begin
      LoadedShaderManager_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderManager_Access is
   begin
        return LoadedShaderManager_Package.instance;
   end getInstance;

begin
   null;
   instance := ShaderManager_Package.Create (-(1), -(1));

end org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package;


