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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageArrayRotationUtil_Access is
   begin
        return ImageArrayRotationUtil_Package.instance;
   end getInstance;

   --  throws IOException
   procedure process (This : in out ImageArrayRotationUtil; imageProcessorInput : ImageProcessorInput_Access; input : Unbounded_String; visitor : ImageProcessedVisitor_Access) is
      totalAngle : Integer;
      generatedBufferedImage : BufferedImage_Access;
      bufferedImageArray : BufferedImage_Access_Array_Access;
      index : Integer;
   begin
        totalAngle := null;
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
            This.logUtil.putF (This.TOTAL_ANGLE & Java_Image (totalAngle), This'Unchecked_Access, This.commonStrings.RUN);
            generatedBufferedImage := ImageJ2SERotationUtil_Package.getInstance.getRotatedImage (bufferedImageArray (index), totalAngle.intValue);
            visitor.visit (generatedBufferedImage, input, index);
        end loop;
   end process;

   procedure getInstance is
      Java_Result : constant ImageArrayRotationUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ImageArrayRotationUtil_Package.Create;

end org.allbinary.media.image.ImageArrayRotationUtil_Package;


