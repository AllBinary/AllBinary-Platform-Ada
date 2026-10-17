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


package body org.allbinary.media.image.ImageProcessorInput_Package is

   procedure Initialize_Fields (This : in out ImageProcessorInput'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageProcessorInput'Class; files : File_Access_Array_Access; bufferedImageArray : BufferedImage_Access_Array_Access) is
   begin
        null;
        Initialize_Fields (This);
        This.bufferedImageArray := bufferedImageArray;
        This.files := files;
   end Initialize;

   function Create (files : File_Access_Array_Access; bufferedImageArray : BufferedImage_Access_Array_Access) return ImageProcessorInput_Access is
      This : constant ImageProcessorInput_Access := new ImageProcessorInput;
   begin
      Initialize (This.all, files, bufferedImageArray);
      return This;
   end Create;

   function getBufferedImageArray (This : in out ImageProcessorInput) return BufferedImage_Access_Array_Access is
   begin
        return This.bufferedImageArray;
   end getBufferedImageArray;

   function getFiles (This : in out ImageProcessorInput) return File_Access_Array_Access is
   begin
        return This.files;
   end getFiles;

   procedure getBufferedImageArray (This : in out ImageProcessorInput) is
      Java_Result : constant BufferedImage_Access_Array_Access := ImageProcessorInput'Class (This).getBufferedImageArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBufferedImageArray;

   procedure getFiles (This : in out ImageProcessorInput) is
      Java_Result : constant File_Access_Array_Access := ImageProcessorInput'Class (This).getFiles;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFiles;

end org.allbinary.media.image.ImageProcessorInput_Package;


