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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.microemu.device.j2se.J2SEImmutableImage_Package; use org.microemu.device.j2se.J2SEImmutableImage_Package;
with org.microemu.device.j2se.J2SEMutableImage_Package; use org.microemu.device.j2se.J2SEMutableImage_Package;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;

package body org.allbinary.media.image.ImageRotationUtil_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package J2SEImmutableImage_Package renames Standard.org.microemu.device.j2se.J2SEImmutableImage_Package;
   package J2SEMutableImage_Package renames Standard.org.microemu.device.j2se.J2SEMutableImage_Package;
   procedure Initialize_Fields (This : in out ImageRotationUtil'Class) is
   begin
      null;
      This.imageJ2SERotationUtil := ImageJ2SERotationUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageRotationUtil_Access is
   begin
        return ImageRotationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageRotationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageRotationUtil_Access is
      This : constant ImageRotationUtil_Access := new ImageRotationUtil;
   begin
      ImageRotationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure rotateImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; totalAngle : Integer) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      j2seImage : J2SEMutableImage_Access;
      newBufferedImage : BufferedImage_Access;
      originalAwtImage : Image_Access;
      originalJ2SEImage : J2SEImmutableImage_Access;
   begin
        if image.isMutable then
            j2seImage := J2SEMutableImage_Access (image);
            newBufferedImage := BufferedImage_Access (j2seImage.getImage);
            originalAwtImage := null;
            if originalImage.isMutable then
                originalJ2SEImage := J2SEMutableImage_Access (originalImage);
                originalAwtImage := Image_Access (originalJ2SEImage.getImage);
            else
                originalJ2SEImage := J2SEImmutableImage_Access (originalImage);
                originalAwtImage := Image_Access (originalJ2SEImage.getImage);
            end if;
            This.imageJ2SERotationUtil.rotateImage (originalAwtImage, newBufferedImage, totalAngle);
        else
            PreLogUtil_Package.putOE (To_Unbounded_String ("Not Mutable"), ImageRotationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getRotatedImage"), Java_New_Exception ("Exception"));
        end if;
   end rotateImage;

   --  throws Exception
   function createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : Image_Access;
      originalAwtImage : Image_Access;
      originalJ2SEImage : J2SEImmutableImage_Access;
      j2seImage : J2SEMutableImage_Access;
      newBufferedImage : BufferedImage_Access;
      bufferedImage : BufferedImage_Access;
   begin
        image := ImageCreationUtil_Package.getInstance.createImageWH (originalImage.getWidth, originalImage.getHeight);
        if image.isMutable then
            originalAwtImage := null;
            if originalImage.isMutable then
                originalJ2SEImage := J2SEMutableImage_Access (originalImage);
                originalAwtImage := Image_Access (originalJ2SEImage.getImage);
            else
                originalJ2SEImage := J2SEImmutableImage_Access (originalImage);
                originalAwtImage := Image_Access (originalJ2SEImage.getImage);
            end if;
            j2seImage := J2SEMutableImage_Access (image);
            newBufferedImage := BufferedImage_Access (j2seImage.getImage);
            bufferedImage := This.imageJ2SERotationUtil.createRotatedImage (originalAwtImage, newBufferedImage, rotationInDegrees);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end createRotatedImage;

   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).createRotatedImage (originalImage_Param, rotationInDegrees);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRotatedImage;

begin
   null;
   instance := ImageRotationUtil_Package.Create;

end org.allbinary.media.image.ImageRotationUtil_Package;


