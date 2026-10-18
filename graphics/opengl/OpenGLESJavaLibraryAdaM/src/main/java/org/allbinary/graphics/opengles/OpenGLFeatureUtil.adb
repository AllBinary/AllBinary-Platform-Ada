--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLConfiguration_Package; use org.allbinary.graphics.opengles.OpenGLConfiguration_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;

package body org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   procedure Initialize_Fields (This : in out OpenGLFeatureUtil'Class) is
   begin
      null;
      
   end Initialize_Fields;


   function getInstance return OpenGLFeatureUtil_Access is
   begin
        return OpenGLFeatureUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OpenGLFeatureUtil'Class) is
      openGLConfiguration : OpenGLConfiguration_Access;
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
   begin
      Initialize_Fields (This);
        openGLConfiguration := OpenGLConfiguration_Package.getInstance;
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        This.anyThreed := (openGLConfiguration.isOpenGL) and then (((features.isFeature (openGLFeatureFactory.OPENGL_2D_AND_3D)) or else (features.isFeature (openGLFeatureFactory.OPENGL_3D))));
   end Initialize;

   function Create return OpenGLFeatureUtil_Access is
      This : constant OpenGLFeatureUtil_Access := new OpenGLFeatureUtil;
   begin
      OpenGLFeatureUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isAnyThreed (This : in out OpenGLFeatureUtil) return Boolean is
   begin
        return This.anyThreed;
   end isAnyThreed;

begin
   null;
   instance := OpenGLFeatureUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;


