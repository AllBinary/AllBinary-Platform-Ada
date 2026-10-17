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


package body org.allbinary.graphics.opengles.shader.ShaderUpdater_Package is

   procedure Initialize_Fields (This : in out ShaderUpdater'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.rendererStrings := RendererStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ShaderUpdater'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShaderUpdater_Access is
      This : constant ShaderUpdater_Access := new ShaderUpdater;
   begin
      ShaderUpdater_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderUpdater_Access is
   begin
        return ShaderUpdater_Package.instance;
   end getInstance;

   procedure onSurfaceCreated (This : in out ShaderUpdater; gl : GL10_Access; eglConfig : EGLConfig_Access) is
   begin
        null;
   end onSurfaceCreated;

begin
   null;
   instance := ShaderUpdater_Package.Create;

end org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;


