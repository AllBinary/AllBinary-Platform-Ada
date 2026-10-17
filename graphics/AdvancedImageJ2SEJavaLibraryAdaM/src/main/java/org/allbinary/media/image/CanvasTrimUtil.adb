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


package body org.allbinary.media.image.CanvasTrimUtil_Package is

   procedure Initialize_Fields (This : in out CanvasTrimUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CanvasTrimUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CanvasTrimUtil_Access is
      This : constant CanvasTrimUtil_Access := new CanvasTrimUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return CanvasTrimUtil_Access is
   begin
        return CanvasTrimUtil_Package.instance;
   end getInstance;

   --  throws IOException
   procedure process (This : in out CanvasTrimUtil; imageProcessorInput : ImageProcessorInput_Access; cutCanvasFromLeftReduction : Integer; cutCanvasFromTopReduction : Integer; cutCanvasFromRightReduction : Integer; cutCanvasFromBottomReduction : Integer; visitor : ImageProcessedVisitor_Access) is
      bufferedImageArray : BufferedImage_Access_Array_Access;
      subBufferedImageArray : BufferedImage_Access_Array_Access;
      size : Integer;
      bufferedImage : BufferedImage_Access;
      index : Integer;
   begin
        bufferedImageArray := imageProcessorInput.getBufferedImageArray;
        subBufferedImageArray := new BufferedImage_Access_Array'(0 .. (bufferedImageArray'Length) - 1 => null);
        size := bufferedImageArray'Length;
        bufferedImage := null;
        for index in 0 .. (size) - 1 loop
            bufferedImage := bufferedImageArray (index);
            subBufferedImageArray (index) := bufferedImage.getSubimage (cutCanvasFromLeftReduction, cutCanvasFromTopReduction, ((bufferedImage.getWidth) - (cutCanvasFromLeftReduction)) - (cutCanvasFromRightReduction), ((bufferedImage.getHeight) - (cutCanvasFromTopReduction)) - (cutCanvasFromBottomReduction));
            visitor.visit (subBufferedImageArray (index), This.stringUtil.EMPTY_STRING, index);
        end loop;
   end process;

   procedure getInstance is
      Java_Result : constant CanvasTrimUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := CanvasTrimUtil_Package.Create;

end org.allbinary.media.image.CanvasTrimUtil_Package;


