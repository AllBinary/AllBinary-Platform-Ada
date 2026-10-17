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


package body org.allbinary.image.opengles.OpenGLImageUtilBase_Package is

   procedure Initialize_Fields (This : in out OpenGLImageUtilBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLImageUtilBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLImageUtilBase_Access is
      This : constant OpenGLImageUtilBase_Access := new OpenGLImageUtilBase;
   begin
      OpenGLImageUtilBase_Package.Initialize (This.all);
      return This;
   end Create;


   function paint (This : in out OpenGLImageUtilBase; alphaBitmap_Param : access OpenGLBitmap'Class; originalBitmap_Param : access OpenGLBitmap'Class; index : Integer) return OpenGLBitmap_Access is
      alphaBitmap : OpenGLBitmap_Access := OpenGLBitmap_Access (alphaBitmap_Param);
      originalBitmap : OpenGLBitmap_Access := OpenGLBitmap_Access (originalBitmap_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end paint;

   function paint (This : in out OpenGLImageUtilBase; colorBitmap_Param : access OpenGLBitmap'Class; originalBitmap_Param : access OpenGLBitmap'Class; alpha : Integer; basicColor_Param : access BasicColor'Class) return OpenGLBitmap_Access is
      colorBitmap : OpenGLBitmap_Access := OpenGLBitmap_Access (colorBitmap_Param);
      originalBitmap : OpenGLBitmap_Access := OpenGLBitmap_Access (originalBitmap_Param);
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end paint;

   --  throws IOException
   function createImage (This : in out OpenGLImageUtilBase; name : Unbounded_String) return OpenGLBitmap_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end createImage;

   --  throws Exception
   function createImageFromInputStream (This : in out OpenGLImageUtilBase; inputStream_Param : access InputStream'Class) return OpenGLBitmap_Access is
      inputStream : InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end createImageFromInputStream;

   procedure paint (This : in out OpenGLImageUtilBase; alphaBitmap_Param : access OpenGLBitmap'Class; originalBitmap_Param : access OpenGLBitmap'Class; index : Integer) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLImageUtilBase'Class (This).paint (alphaBitmap_Param, originalBitmap_Param, index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

   procedure paint (This : in out OpenGLImageUtilBase; colorBitmap_Param : access OpenGLBitmap'Class; originalBitmap_Param : access OpenGLBitmap'Class; alpha : Integer; basicColor_Param : access BasicColor'Class) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLImageUtilBase'Class (This).paint (colorBitmap_Param, originalBitmap_Param, alpha, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

   procedure createImage (This : in out OpenGLImageUtilBase; name : Unbounded_String) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLImageUtilBase'Class (This).createImage (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageFromInputStream (This : in out OpenGLImageUtilBase; inputStream_Param : access InputStream'Class) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLImageUtilBase'Class (This).createImageFromInputStream (inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

end org.allbinary.image.opengles.OpenGLImageUtilBase_Package;


