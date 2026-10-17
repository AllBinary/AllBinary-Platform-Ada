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


package body org.allbinary.graphics.color.ColorCacheableFactory_Package is

   procedure Initialize_Fields (This : in out ColorCacheableFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorCacheableFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorCacheableFactory_Access is
      This : constant ColorCacheableFactory_Access := new ColorCacheableFactory;
   begin
      ColorCacheableFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out ColorCacheableFactory; key : Java_Object_Access) return CacheableInterface_Access is
   begin
        return ColorCacheable_Package.Create (key);
   end getInstance;

   procedure getInstance (This : in out ColorCacheableFactory; key : Java_Object_Access) is
      Java_Result : constant CacheableInterface_Access := ColorCacheableFactory'Class (This).getInstance (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.color.ColorCacheableFactory_Package;


