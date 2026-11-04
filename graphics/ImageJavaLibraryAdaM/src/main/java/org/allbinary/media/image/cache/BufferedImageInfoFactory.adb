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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.cache.BufferedImageInfo_Package; use org.allbinary.media.image.cache.BufferedImageInfo_Package;
with org.allbinary.media.image.cache.BufferedImageInfo_Package;

package body org.allbinary.media.image.cache.BufferedImageInfoFactory_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype BufferedImageInfo_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access;
   function "=" (Left, Right : BufferedImageInfo_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   subtype BufferedImageInfo_Access_Array is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array;
   function "=" (Left, Right : BufferedImageInfo_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   subtype BufferedImageInfo_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access;
   function "=" (Left, Right : BufferedImageInfo_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   subtype BufferedImageInfo_Access_Array_Access_Array is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedImageInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   subtype BufferedImageInfo_Access_Array_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedImageInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   procedure Initialize_Fields (This : in out BufferedImageInfoFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BufferedImageInfoFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BufferedImageInfoFactory_Access is
      This : constant BufferedImageInfoFactory_Access := new BufferedImageInfoFactory;
   begin
      BufferedImageInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (width : Integer; height : Integer; type_Id : Integer) return BufferedImageInfo_Access is
      stringbuffer : StringMaker_Access;
      key : Unbounded_String;
      bufferedImageInfo : BufferedImageInfo_Access;
   begin
        stringbuffer := StringMaker_Package.Create;
        stringbuffer.appendint (width);
        stringbuffer.appendint (height);
        stringbuffer.appendint (type_Id);
        key := stringbuffer.toString;
        bufferedImageInfo := BufferedImageInfo_Access (BufferedImageInfoFactory_Package.hashMap.get (Java_Box (key)));
        if (bufferedImageInfo) = (null) then
            bufferedImageInfo := BufferedImageInfo_Package.Create (width, height, type_Id);
            BufferedImageInfoFactory_Package.hashMap.put (Java_Box (key), bufferedImageInfo);
        end if;
        return bufferedImageInfo;
   end getInstance;

   procedure getInstance (width : Integer; height : Integer; type_Id : Integer) is
      Java_Result : constant BufferedImageInfo_Access := getInstance (width => width, height => height, type_Id => type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   hashMap := StdUtil_Package.getInstance.createHashMap;

end org.allbinary.media.image.cache.BufferedImageInfoFactory_Package;


