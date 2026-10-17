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


package body org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package is

   procedure Initialize_Fields (This : in out OrthogonalLightingOpenGLProcessorFactory'Class) is
   begin
      null;
      This.sceneLightingOrthogonalModeOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.sceneLightsOrthogonalModeOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out OrthogonalLightingOpenGLProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OrthogonalLightingOpenGLProcessorFactory_Access is
      This : constant OrthogonalLightingOpenGLProcessorFactory_Access := new OrthogonalLightingOpenGLProcessorFactory;
   begin
      OrthogonalLightingOpenGLProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OrthogonalLightingOpenGLProcessorFactory_Access is
   begin
        return OrthogonalLightingOpenGLProcessorFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := OrthogonalLightingOpenGLProcessorFactory_Package.Create;

end org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package;


