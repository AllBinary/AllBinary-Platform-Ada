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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.logic.util.cache.ImageCacheable_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out ImageCacheable'Class) is
   begin
      null;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageCacheable'Class; name : Unbounded_String; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (name : Unbounded_String; anyType_Param : access Java_Object'Class) return ImageCacheable_Access is
      This : constant ImageCacheable_Access := new ImageCacheable;
   begin
      ImageCacheable_Package.Initialize (This.all, name, anyType_Param);
      return This;
   end Create;

   function getKey (This : in out ImageCacheable) return Java_Object_Access is
   begin
        return Java_Box (This.name);
   end getKey;

   function toString (This : in out ImageCacheable) return Unbounded_String is
   begin
        return This.name;
   end toString;

end org.allbinary.logic.util.cache.ImageCacheable_Package;


