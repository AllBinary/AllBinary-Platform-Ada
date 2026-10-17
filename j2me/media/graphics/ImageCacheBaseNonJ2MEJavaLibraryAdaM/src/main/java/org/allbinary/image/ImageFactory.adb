-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.image.ImageFactory_Package is

   procedure Initialize_Fields (This : in out ImageFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageFactory_Access is
      This : constant ImageFactory_Access := new ImageFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageFactory_Access is
   begin
        return ImageFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function createImageUrl (This : in out ImageFactory; url : Unbounded_String) return Image_Access is
   begin
        return Image_Package.createImage (url);
   end createImageUrl;

   --  throws Exception
   function createImage (This : in out ImageFactory; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access is
   begin
        return Image_Package.createImageWH (width, height);
   end createImage;

   --  throws Exception
   function createImageFromInputStream (This : in out ImageFactory; key : Java_Object_Access; inputStream : InputStream_Access) return Image_Access is
      image : Image_Access;
   begin
        image := Image_Package.createImageFromInputStream (inputStream);
        return image;
   end createImageFromInputStream;

   --  throws Exception
   function createImageFromInputStream (This : in out ImageFactory; inputStream : InputStream_Access) return Image_Access is
   begin
        return Image_Package.createImageFromInputStream (inputStream);
   end createImageFromInputStream;

   procedure getInstance is
      Java_Result : constant ImageFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createImageUrl (This : in out ImageFactory; url : Unbounded_String) is
      Java_Result : constant Image_Access := ImageFactory'Class (This).createImageUrl (url);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageUrl;

   procedure createImage (This : in out ImageFactory; caller : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageFactory'Class (This).createImage (caller, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageFromInputStream (This : in out ImageFactory; key : Java_Object_Access; inputStream : InputStream_Access) is
      Java_Result : constant Image_Access := ImageFactory'Class (This).createImageFromInputStream (key, inputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

   procedure createImageFromInputStream (This : in out ImageFactory; inputStream : InputStream_Access) is
      Java_Result : constant Image_Access := ImageFactory'Class (This).createImageFromInputStream (inputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

begin
   null;
   instance := ImageFactory_Package.Create;

end org.allbinary.image.ImageFactory_Package;


