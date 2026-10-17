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


   function paint (This : in out OpenGLImageUtilBase; alphaBitmap : OpenGLBitmap_Access; originalBitmap : OpenGLBitmap_Access; index : Integer) return OpenGLBitmap_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end paint;

   function paint (This : in out OpenGLImageUtilBase; colorBitmap : OpenGLBitmap_Access; originalBitmap : OpenGLBitmap_Access; alpha : Integer; basicColor : BasicColor_Access) return OpenGLBitmap_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end paint;

   --  throws IOException
   function createImage (This : in out OpenGLImageUtilBase; name : Unbounded_String) return OpenGLBitmap_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end createImage;

   --  throws Exception
   function createImageFromInputStream (This : in out OpenGLImageUtilBase; inputStream : InputStream_Access) return OpenGLBitmap_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end createImageFromInputStream;

   procedure paint (This : in out OpenGLImageUtilBase; alphaBitmap : OpenGLBitmap_Access; originalBitmap : OpenGLBitmap_Access; index : Integer) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLImageUtilBase'Class (This).paint (alphaBitmap, originalBitmap, index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

   procedure paint (This : in out OpenGLImageUtilBase; colorBitmap : OpenGLBitmap_Access; originalBitmap : OpenGLBitmap_Access; alpha : Integer; basicColor : BasicColor_Access) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLImageUtilBase'Class (This).paint (colorBitmap, originalBitmap, alpha, basicColor);
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

   procedure createImageFromInputStream (This : in out OpenGLImageUtilBase; inputStream : InputStream_Access) is
      Java_Result : constant OpenGLBitmap_Access := OpenGLImageUtilBase'Class (This).createImageFromInputStream (inputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

end org.allbinary.image.opengles.OpenGLImageUtilBase_Package;


