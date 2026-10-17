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


package body org.allbinary.media.image.io.IIOImageCacheable_Package is

   procedure Initialize_Fields (This : in out IIOImageCacheable'Class) is
   begin
      null;
      
      This.iioImage := null;
   end Initialize_Fields;


   procedure Initialize (This : in out IIOImageCacheable'Class; key : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.key := key;
   end Initialize;

   function Create (key : Unbounded_String) return IIOImageCacheable_Access is
      This : constant IIOImageCacheable_Access := new IIOImageCacheable;
   begin
      IIOImageCacheable_Package.Initialize (This.all, key);
      return This;
   end Create;

   function getKey (This : in out IIOImageCacheable) return Java_Object_Access is
   begin
        return This.key;
   end getKey;

   procedure setBufferedImage (This : in out IIOImageCacheable; bufferedImage : BufferedImage_Access) is
   begin
        This.setIioImage (IIOImage_Package.Create (bufferedImage, null, null));
   end setBufferedImage;

   function getIioImage (This : in out IIOImageCacheable) return IIOImage_Access is
   begin
        return This.iioImage;
   end getIioImage;

   procedure setIioImage (This : in out IIOImageCacheable; iioImage : IIOImage_Access) is
   begin
        This.iioImage := iioImage;
   end setIioImage;

   function toString (This : in out IIOImageCacheable) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (To_Unbounded_String (" Reusable IIOImage"));
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.image.io.IIOImageCacheable_Package;


