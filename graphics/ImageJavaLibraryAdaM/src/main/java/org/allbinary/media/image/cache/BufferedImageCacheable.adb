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


   procedure Initialize (This : in out BufferedImageCacheable'Class; key_Param : access BufferedImageInfo_Package.BufferedImageInfo'Class) is
      key : constant BufferedImageInfo_Access := BufferedImageInfo_Access (key_Param);
   begin
      Initialize_Fields (This);
        This.key := key;
        BufferedImageCacheable'Class (This).setBufferedImage (BufferedImage_Package.Create (key.getWidth, key.getHeight, key.getType));
   end Initialize;

   function Create (key_Param : access BufferedImageInfo_Package.BufferedImageInfo'Class) return BufferedImageCacheable_Access is
      This : constant BufferedImageCacheable_Access := new BufferedImageCacheable;
   begin
      BufferedImageCacheable_Package.Initialize (This.all, key_Param);
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

   procedure setBufferedImage (This : in out BufferedImageCacheable; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        This.bufferedImage := bufferedImage;
   end setBufferedImage;

   function toString (This : in out BufferedImageCacheable) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (To_Unbounded_String (" "));
        stringBuffer.append (BufferedImageCacheable'Class (This).getKey.toString);
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.image.cache.BufferedImageCacheable_Package;


