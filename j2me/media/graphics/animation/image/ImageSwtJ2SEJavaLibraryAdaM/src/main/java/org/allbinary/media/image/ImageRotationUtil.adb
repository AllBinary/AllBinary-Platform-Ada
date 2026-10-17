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


package body org.allbinary.media.image.ImageRotationUtil_Package is

   procedure Initialize_Fields (This : in out ImageRotationUtil'Class) is
   begin
      null;
      This.imageSwtRotationUtil := ImageSwtRotationUtil_Package.getInstance;
      This.features := Features_Package.getInstance;
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

   procedure rotateImage (This : in out ImageRotationUtil; originalImage : Image_Access; image : Image_Access; totalAngle : Integer) is
      originalImage2 : Image_Access;
      openGLESImage : OpenGLESImage_Access;
      originalSwtImage : Image_Access;
      gc : GC_Access;
      copySwtImage : Image_Access;
      swtImage : SwtMutableImage_Access;
   begin
        originalImage2 := originalImage;
        if This.features.isFeature (OpenGLFeatureFactory_Package.getInstance.OPENGL) then
            if (image.getType) >= (OpenGLESImage_Package.TYPE_Id) then
                openGLESImage := (OpenGLESImage_Access (image));
                openGLESImage.openGLESImageProperties.angle := totalAngle;
                return;
            else
                PreLogUtil_Package.put (To_Unbounded_String ("OpenGL but image is: ") & Java_Image (image) & To_Unbounded_String (" type: ") & Java_Image (image.getType), This'Unchecked_Access, To_Unbounded_String ("rotateImage"));
            end if;
        end if;
        originalSwtImage := (Image_Access (originalImage2.getImage));
        gc := null;
        copySwtImage := null;
        if image.isMutable then
            swtImage := SwtMutableImage_Access (image);
            copySwtImage := Image_Access (swtImage.getImage);
            gc := swtImage.getGc;
            This.imageSwtRotationUtil.rotateImage (originalSwtImage, copySwtImage, gc, totalAngle);
        else
            PreLogUtil_Package.put (To_Unbounded_String ("No rotation for: ") & image.toString, This'Unchecked_Access, To_Unbounded_String ("rotateImage"));
        end if;
   end rotateImage;

   --  throws Exception
   function createRotatedImage (This : in out ImageRotationUtil; originalImage : Image_Access; rotationInDegrees : Integer) return Image_Access is
   begin
        return originalImage;
   end createRotatedImage;

   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage : Image_Access; rotationInDegrees : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).createRotatedImage (originalImage, rotationInDegrees);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRotatedImage;

begin
   null;
   instance := ImageRotationUtil_Package.Create;

end org.allbinary.media.image.ImageRotationUtil_Package;


