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


package body org.allbinary.logic.util.cache.ImageCacheable_Package is

   procedure Initialize_Fields (This : in out ImageCacheable'Class) is
   begin
      null;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageCacheable'Class; name : Unbounded_String; anyType : Java_Object_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (name : Unbounded_String; anyType : Java_Object_Access) return ImageCacheable_Access is
      This : constant ImageCacheable_Access := new ImageCacheable;
   begin
      Initialize (This.all, name, anyType);
      return This;
   end Create;

   function getKey (This : in out ImageCacheable) return Java_Object_Access is
   begin
        return This.name;
   end getKey;

   function toString (This : in out ImageCacheable) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure getKey (This : in out ImageCacheable) is
      Java_Result : constant Java_Object_Access := ImageCacheable'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure toString (This : in out ImageCacheable) is
      Java_Result : constant Unbounded_String := ImageCacheable'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.util.cache.ImageCacheable_Package;


