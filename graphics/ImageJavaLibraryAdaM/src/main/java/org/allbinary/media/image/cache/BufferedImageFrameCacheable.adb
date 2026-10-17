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


package body org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package is

   procedure Initialize_Fields (This : in out BufferedImageFrameCacheable'Class) is
   begin
      null;
      
      This.bufferedImage := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BufferedImageFrameCacheable'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; frame : Long_Long_Integer) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
      Initialize_Fields (This);
        This.frame := frame;
        This.setBufferedImage (bufferedImage);
   end Initialize;

   function Create (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; frame : Long_Long_Integer) return BufferedImageFrameCacheable_Access is
      This : constant BufferedImageFrameCacheable_Access := new BufferedImageFrameCacheable;
   begin
      BufferedImageFrameCacheable_Package.Initialize (This.all, bufferedImage_Param, frame);
      return This;
   end Create;

   function getKey (This : in out BufferedImageFrameCacheable) return Java_Object_Access is
   begin
        return This.frame;
   end getKey;

   function getBufferedImage (This : in out BufferedImageFrameCacheable) return BufferedImage_Access is
   begin
        return This.bufferedImage;
   end getBufferedImage;

   procedure setBufferedImage (This : in out BufferedImageFrameCacheable; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        This.bufferedImage := bufferedImage;
   end setBufferedImage;

   function getFrame (This : in out BufferedImageFrameCacheable) return Long_Long_Integer is
   begin
        return This.frame;
   end getFrame;

   procedure setFrame (This : in out BufferedImageFrameCacheable; frame : Long_Long_Integer) is
   begin
        This.frame := frame;
   end setFrame;

   function toString (This : in out BufferedImageFrameCacheable) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (To_Unbounded_String (" Frame: "));
        stringBuffer.appendlong (This.getFrame);
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;


