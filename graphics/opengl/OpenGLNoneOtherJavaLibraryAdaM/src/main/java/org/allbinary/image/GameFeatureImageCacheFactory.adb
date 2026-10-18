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


with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;

package body org.allbinary.image.GameFeatureImageCacheFactory_Package is

   procedure Initialize_Fields (This : in out GameFeatureImageCacheFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameFeatureImageCacheFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameFeatureImageCacheFactory_Access is
      This : constant GameFeatureImageCacheFactory_Access := new GameFeatureImageCacheFactory;
   begin
      GameFeatureImageCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageCache_Access is
   begin
        return ImageCacheFactory_Package.getInstance;
   end getInstance;

   procedure init is
   begin
        ImageCacheFactory_Package.init;
   end init;

   procedure releaseAll is
   begin
        ImageCacheFactory_Package.getInstance.releaseAll;
   end releaseAll;

end org.allbinary.image.GameFeatureImageCacheFactory_Package;


