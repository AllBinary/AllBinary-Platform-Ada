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


package body org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package is

   procedure Initialize_Fields (This : in out BufferedImageCacheableFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BufferedImageCacheableFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BufferedImageCacheableFactory_Access is
      This : constant BufferedImageCacheableFactory_Access := new BufferedImageCacheableFactory;
   begin
      BufferedImageCacheableFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out BufferedImageCacheableFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return BufferedImageCacheable_Package.Create (BufferedImageInfo_Access (key));
   end getInstance;

   procedure getInstance (This : in out BufferedImageCacheableFactory; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := BufferedImageCacheableFactory'Class (This).getInstance (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package;


