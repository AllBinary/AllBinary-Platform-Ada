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



package body org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package is

   procedure Initialize_Fields (This : in out ShaderManagerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ShaderManagerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShaderManagerFactory_Access is
      This : constant ShaderManagerFactory_Access := new ShaderManagerFactory;
   begin
      ShaderManagerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderManagerFactory_Access is
   begin
        return ShaderManagerFactory_Package.instance;
   end getInstance;

   function create (This : in out ShaderManagerFactory) return ShaderManager_Access is
   begin
        return ShaderManager_Package.getInstance;
   end create;

begin
   null;
   instance := ShaderManagerFactory_Package.Create;

end org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package;


