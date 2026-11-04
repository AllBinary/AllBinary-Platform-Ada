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


with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
with org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.image.ImageCache_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package;

package body org.allbinary.image.ImageCacheFactory_Package is

   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
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
        return ImageCache_Access (ImageCacheFactory_Package.IMAGE_CACHE);
   end getInstance;

   procedure init is
   begin
        null;
   end init;

begin
   null;
   IMAGE_CACHE := ImageCache_Package.Create;

end org.allbinary.image.ImageCacheFactory_Package;


