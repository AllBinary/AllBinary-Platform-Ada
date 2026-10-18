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
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.image.opengles.OpenGLImageCacheFactory_Package; use org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;

package body org.allbinary.input.motion.button.TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package OpenGLImageCacheFactory_Package renames Standard.org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
   procedure Initialize_Fields (This : in out TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory'Class) is
   begin
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package.Initialize (This, To_Unbounded_String ("OpenGL TouchButton Animations"));
   end Initialize;

   function Create return TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Access is
      This : constant TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Access := new TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory;
   begin
      TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory; level : Integer) is
   begin
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory (This).initImageCache (OpenGLImageCacheFactory_Package.getInstance, level);
   end init;

   function isFeature (This : in out TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory) return Boolean is
   begin
        if Features_Package.getInstance.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL) then
            return True;
        else
            return False;
        end if;
   end isFeature;

end org.allbinary.input.motion.button.TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Package;


