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


with org.allbinary.graphics.color.ColorCacheable_Package; use org.allbinary.graphics.color.ColorCacheable_Package;

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

   function getInstance (This : in out ColorCacheableFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return CacheableInterface_Access (ColorCacheable_Package.Create (key));
   end getInstance;

   procedure getInstance (This : in out ColorCacheableFactory; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := ColorCacheableFactory'Class (This).getInstance (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   function getInstance (This : in out ColorCacheableFactory; Value : Unbounded_String) return CacheableInterface_Access is
   begin
      return ColorCacheableFactory'Class (This).getInstance (Java_Box (Value));
   end getInstance;

   procedure getInstance (This : in out ColorCacheableFactory; Value : Unbounded_String) is
      Java_Result : constant CacheableInterface_Access := ColorCacheableFactory'Class (This).getInstance (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.color.ColorCacheableFactory_Package;


