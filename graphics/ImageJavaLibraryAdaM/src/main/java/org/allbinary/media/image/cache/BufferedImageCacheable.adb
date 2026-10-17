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


package body org.allbinary.media.image.cache.BufferedImageCacheable_Package is

   procedure Initialize_Fields (This : in out BufferedImageCacheable'Class) is
   begin
      null;
      
      This.bufferedImage := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BufferedImageCacheable'Class; key : BufferedImageInfo_Access) is
   begin
      Initialize_Fields (This);
        This.key := key;
        This.setBufferedImage (BufferedImage_Package.Create (key.getWidth, key.getHeight, key.getType));
   end Initialize;

   function Create (key : BufferedImageInfo_Access) return BufferedImageCacheable_Access is
      This : constant BufferedImageCacheable_Access := new BufferedImageCacheable;
   begin
      Initialize (This.all, key);
      return This;
   end Create;

   function getKey (This : in out BufferedImageCacheable) return Java_Object_Access is
   begin
        return This.key;
   end getKey;

   function getBufferedImage (This : in out BufferedImageCacheable) return BufferedImage_Access is
   begin
        return This.bufferedImage;
   end getBufferedImage;

   procedure setBufferedImage (This : in out BufferedImageCacheable; bufferedImage : BufferedImage_Access) is
   begin
        This.bufferedImage := bufferedImage;
   end setBufferedImage;

   function toString (This : in out BufferedImageCacheable) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (To_Unbounded_String (" "));
        stringBuffer.append (This.getKey.toString);
        return stringBuffer.toString;
   end toString;

   procedure getKey (This : in out BufferedImageCacheable) is
      Java_Result : constant Java_Object_Access := BufferedImageCacheable'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure getBufferedImage (This : in out BufferedImageCacheable) is
      Java_Result : constant BufferedImage_Access := BufferedImageCacheable'Class (This).getBufferedImage;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBufferedImage;

   procedure toString (This : in out BufferedImageCacheable) is
      Java_Result : constant Unbounded_String := BufferedImageCacheable'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.media.image.cache.BufferedImageCacheable_Package;


