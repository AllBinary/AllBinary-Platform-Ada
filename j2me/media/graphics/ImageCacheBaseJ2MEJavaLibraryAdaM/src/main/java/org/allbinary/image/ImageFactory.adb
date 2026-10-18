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
      ImageFactory_Package.Initialize (This.all);
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
        return Image_Package.createImage (width, height);
   end createImage;

   --  throws Exception
   function createImageFromInputStream (This : in out ImageFactory; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      image : Image_Access;
   begin
        image := Image_Package.createImage (inputStream);
        return image;
   end createImageFromInputStream;

   --  throws Exception
   function createImageFromInputStream (This : in out ImageFactory; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        return Image_Package.createImage (inputStream);
   end createImageFromInputStream;

   procedure createImageUrl (This : in out ImageFactory; url : Unbounded_String) is
      Java_Result : constant Image_Access := ImageFactory'Class (This).createImageUrl (url => url);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageUrl;

   procedure createImage (This : in out ImageFactory; caller : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageFactory'Class (This).createImage (caller => caller, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageFromInputStream (This : in out ImageFactory; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) is
      Java_Result : constant Image_Access := ImageFactory'Class (This).createImageFromInputStream (key_Param => key_Param, inputStream_Param => inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

   procedure createImageFromInputStream (This : in out ImageFactory; inputStream_Param : access InputStream_Package.InputStream'Class) is
      Java_Result : constant Image_Access := ImageFactory'Class (This).createImageFromInputStream (inputStream_Param => inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

begin
   null;
   instance := ImageFactory_Package.Create;

end org.allbinary.image.ImageFactory_Package;


