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
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;

package body org.allbinary.image.GameFeatureImageCacheFactory_Package is

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


