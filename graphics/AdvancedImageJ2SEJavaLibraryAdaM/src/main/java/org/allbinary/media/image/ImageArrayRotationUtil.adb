-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.media.image.ImageJ2SERotationUtil_Package; use org.allbinary.media.image.ImageJ2SERotationUtil_Package;

package body org.allbinary.media.image.ImageArrayRotationUtil_Package is

   procedure Initialize_Fields (This : in out ImageArrayRotationUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.TOTAL_ANGLE := To_Unbounded_String ("totalAngle: ");
   end Initialize_Fields;

   procedure Initialize (This : in out ImageArrayRotationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageArrayRotationUtil_Access is
      This : constant ImageArrayRotationUtil_Access := new ImageArrayRotationUtil;
   begin
      ImageArrayRotationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageArrayRotationUtil_Access is
   begin
        return ImageArrayRotationUtil_Package.instance;
   end getInstance;

   --  throws IOException
   procedure process (This : in out ImageArrayRotationUtil; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class; input : Unbounded_String; visitor_Param : access ImageProcessedVisitor_Package.ImageProcessedVisitor'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
      visitor : constant ImageProcessedVisitor_Access := ImageProcessedVisitor_Access (visitor_Param);
      totalAngle : Integer;
      generatedBufferedImage : BufferedImage_Access;
      bufferedImageArray : BufferedImage_Access_Array_Access;
      index : Integer;
   begin
        totalAngle := 0;
        if (input) = (This.commonStrings.UP) then
            totalAngle := To_Unbounded_String (Java_Image (-(90)));
        elsif (input) = (This.commonStrings.DOWN) then
            totalAngle := To_Unbounded_String (Java_Image (90));
        else
            totalAngle := To_Unbounded_String (Java_Image (input));
        end if;
        generatedBufferedImage := null;
        bufferedImageArray := imageProcessorInput.getBufferedImageArray;
        for index in 0 .. (bufferedImageArray'Length) - 1 loop
            This.logUtil.putF (This.TOTAL_ANGLE & Java_Image (totalAngle), ImageArrayRotationUtil_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            generatedBufferedImage := ImageJ2SERotationUtil_Package.getInstance.getRotatedImage (bufferedImageArray (index), Integer (totalAngle));
            visitor.visit (generatedBufferedImage, input, index);
        end loop;
   end process;

begin
   null;
   instance := ImageArrayRotationUtil_Package.Create;

end org.allbinary.media.image.ImageArrayRotationUtil_Package;


