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


package body org.allbinary.image.opengles.OpenGLImageCacheFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLImageCacheFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLImageCacheFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLImageCacheFactory_Access is
      This : constant OpenGLImageCacheFactory_Access := new OpenGLImageCacheFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageCache_Access is
   begin
        return OpenGLImageCacheFactory_Package.IMAGE_CACHE;
   end getInstance;

   procedure init is
   begin
        if (OpenGLImageCacheFactory_Package.IMAGE_CACHE) = (null) then
            null;
        end if;
   end init;

   procedure getInstance is
      Java_Result : constant ImageCache_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   IMAGE_CACHE := ImageCache_Package.NULL_IMAGE_CACHE;

end org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;


