--
-- AllBinary Open License Version 1
-- Copyright (c) 2023 AllBinary
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


package body org.allbinary.media.image.ImageJ2MEScaleUtil_Package is

   procedure Initialize_Fields (This : in out ImageJ2MEScaleUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ImageJ2MEScaleUtil_Access is
   begin
        return ImageJ2MEScaleUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageJ2MEScaleUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageJ2MEScaleUtil_Access is
      This : constant ImageJ2MEScaleUtil_Access := new ImageJ2MEScaleUtil;
   begin
      ImageJ2MEScaleUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) return Image_Access_Array_Access is
      scaledImages : Image_Access_Array_Access;
      index : Integer;
   begin
        scaledImages := new Image_Access_Array'(0 .. (images'Length) - 1 => null);
        index := images'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            scaledImages (index) := This.scale (images (index), width, height);
        end loop;
        return scaledImages;
   end scaleArray;

   --  throws Exception
   function scale (This : in out ImageJ2MEScaleUtil; image : Image_Access; width : Integer; height : Integer) return Image_Access is
      sourceWidth : Integer;
      sourceHeight : Integer;
      originalData : Integer_Array_Access;
      scaledData : Integer_Array_Access;
      heightRatioFactor : Integer;
      widthRatioFactor : Integer;
      scaledIndex : Integer;
      dx : Integer;
      dy : Integer;
      index2 : Integer;
      index : Integer;
      scaledImage : Image_Access;
   begin
        sourceWidth := image.getWidth;
        sourceHeight := image.getHeight;
        originalData := new Integer_Array'(0 .. ((image.getWidth) * (image.getHeight)) - 1 => 0);
        image.getRGB (originalData, 0, image.getWidth, 0, 0, image.getWidth, image.getHeight);
        scaledData := new Integer_Array'(0 .. ((width) * (height)) - 1 => 0);
        heightRatioFactor := (((8) * (sourceHeight))) / (height);
        widthRatioFactor := (((8) * (sourceWidth))) / (width);
        scaledIndex := (scaledData'Length) - (1);
        dx := 0;
        dy := 0;
        index := height;
        while (Java_Pre_Decrement (index)) >= (0) loop
            dy := Java_Shift_Right_Arithmetic (((index) * (heightRatioFactor)), 3);
            index2 := width;
            while (Java_Pre_Decrement (index2)) >= (0) loop
                dx := Java_Shift_Right_Arithmetic (((index2) * (widthRatioFactor)), 3);
                scaledData (Java_Post_Decrement (scaledIndex)) := originalData ((((sourceWidth) * (dy))) + (dx));
            end loop;
        end loop;
        scaledImage := Image_Package.createRGBImage (scaledData, width, height, True);
        return scaledImage;
   end scale;

   procedure scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) is
      Java_Result : constant Image_Access_Array_Access := ImageJ2MEScaleUtil'Class (This).scaleArray (images, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end scaleArray;

   procedure scale (This : in out ImageJ2MEScaleUtil; image : Image_Access; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageJ2MEScaleUtil'Class (This).scale (image, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end scale;

begin
   null;
   instance := ImageJ2MEScaleUtil_Package.Create;

end org.allbinary.media.image.ImageJ2MEScaleUtil_Package;


