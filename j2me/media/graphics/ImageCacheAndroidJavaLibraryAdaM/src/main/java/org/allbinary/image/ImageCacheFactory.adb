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


package body org.allbinary.image.ImageCacheFactory_Package is

   procedure Initialize_Fields (This : in out ImageCacheFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageCacheFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageCacheFactory_Access is
      This : constant ImageCacheFactory_Access := new ImageCacheFactory;
   begin
      ImageCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageCache_Access is
   begin
        return ImageCacheFactory_Package.IMAGE_CACHE;
   end getInstance;

   procedure init is
   begin
        null;
   end init;

begin
   null;
   IMAGE_CACHE := ImageCache_Package.Create;

end org.allbinary.image.ImageCacheFactory_Package;


