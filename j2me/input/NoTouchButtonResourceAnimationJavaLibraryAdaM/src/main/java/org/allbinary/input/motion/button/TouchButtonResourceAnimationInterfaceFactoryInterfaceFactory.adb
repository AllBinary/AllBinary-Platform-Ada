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


package body org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function createFactory return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access is
   begin
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package.Create (To_Unbounded_String ("TouchButton Animations"));
   end createFactory;

   procedure Initialize (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class; name : Unbounded_String) is
   begin
        BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.Initialize (This, name, StdUtil_Package.getInstance.createHashtable, StdUtil_Package.getInstance.createHashtable, StdUtil_Package.getInstance.createHashtable);
   end Initialize;

   function Create (name : Unbounded_String) return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access is
      This : constant TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access := new TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;
   begin
      TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package.Initialize (This.all, name);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) is
   begin
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).initImageCache (ImageCacheFactory_Package.getInstance, level);
   end init;

   --  throws Exception
   procedure initImageCache (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer) is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
   begin
        if TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).isInitialized then
            return;
        end if;
        BaseResourceAnimationInterfaceFactoryInterfaceFactory (This).init (level);
   end initImageCache;

   function isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) return Boolean is
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if (level) = (resourceLoadingLevelFactory.LOAD_TOUCH.getLevel) then
            return True;
        else
            return BaseResourceAnimationInterfaceFactoryInterfaceFactory (This).isLoadingLevel (level);
        end if;
   end isLoadingLevel;

   function isFeature (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean is
   begin
        if not (Features_Package.getInstance.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL)) then
            return True;
        else
            return False;
        end if;
   end isFeature;

   procedure isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) is
      Java_Result : constant Boolean := TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).isLoadingLevel (level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLoadingLevel;

end org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package;


