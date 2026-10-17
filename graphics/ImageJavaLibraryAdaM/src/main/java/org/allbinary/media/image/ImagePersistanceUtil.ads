-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.util.Iterator_Package; use java.util.Iterator_Package;
--  with javax.imageio.IIOImage_Package; use javax.imageio.IIOImage_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
--  with javax.imageio.ImageWriteParam_Package; use javax.imageio.ImageWriteParam_Package;
--  with javax.imageio.ImageWriter_Package; use javax.imageio.ImageWriter_Package;
--  with javax.imageio.stream.ImageOutputStream_Package; use javax.imageio.stream.ImageOutputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.apache.batik.ext.awt.image.codec.png.PNGImageWriter_Package; use org.apache.batik.ext.awt.image.codec.png.PNGImageWriter_Package;

package org.allbinary.media.image.ImagePersistanceUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PNGImageWriter_Package renames Standard.org.apache.batik.ext.awt.image.codec.png.PNGImageWriter_Package;

   type ImagePersistanceUtil is tagged;
   type ImagePersistanceUtil_Access is access all ImagePersistanceUtil'Class;
   type ImagePersistanceUtil_Access_Array is array (Natural range <>) of ImagePersistanceUtil_Access;
   type ImagePersistanceUtil_Access_Array_Access is access all ImagePersistanceUtil_Access_Array;

   type ImagePersistanceUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : ImagePersistanceUtil_Access;

   procedure Initialize (This : in out ImagePersistanceUtil'Class);
   function Create return ImagePersistanceUtil_Access;
   function getInstance return ImagePersistanceUtil_Access;
   procedure saveWithBatik (This : in out ImagePersistanceUtil; file : AbFile_Access; bufferedImage : BufferedImage_Access);
   procedure saveWithImageIO (This : in out ImagePersistanceUtil; filePath : Unbounded_String; bufferedImage : BufferedImage_Access);
   procedure saveWithImageIO (This : in out ImagePersistanceUtil; file : File_Access; bufferedImage : BufferedImage_Access);

end org.allbinary.media.image.ImagePersistanceUtil_Package;


