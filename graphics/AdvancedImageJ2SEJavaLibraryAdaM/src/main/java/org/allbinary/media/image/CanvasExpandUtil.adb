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


package body org.allbinary.media.image.CanvasExpandUtil_Package is

   procedure Initialize_Fields (This : in out CanvasExpandUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CanvasExpandUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CanvasExpandUtil_Access is
      This : constant CanvasExpandUtil_Access := new CanvasExpandUtil;
   begin
      CanvasExpandUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CanvasExpandUtil_Access is
   begin
        return CanvasExpandUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure process (This : in out CanvasExpandUtil; imageProcessorInput : ImageProcessorInput_Access; increaseX : Integer; increaseY : Integer; visitor : ImageProcessedVisitor_Access) is
      imageUtil : ImageUtil_Access;
      bufferedImageArray : BufferedImage_Access_Array_Access;
      subBufferedImageArray : BufferedImage_Access_Array_Access;
      size : Integer;
      bufferedImage : BufferedImage_Access;
      index : Integer;
   begin
        imageUtil := ImageUtil_Package.getInstance;
        bufferedImageArray := imageProcessorInput.getBufferedImageArray;
        subBufferedImageArray := new BufferedImage_Access_Array'(0 .. (bufferedImageArray'Length) - 1 => null);
        size := bufferedImageArray'Length;
        bufferedImage := null;
        for index in 0 .. (size) - 1 loop
            bufferedImage := bufferedImageArray (index);
            subBufferedImageArray (index) := imageUtil.createBufferedImage (bufferedImage, (bufferedImage.getWidth) + (increaseX), (bufferedImage.getHeight) + (increaseY), False);
            visitor.visit (subBufferedImageArray (index), This.stringUtil.EMPTY_STRING, index);
        end loop;
   end process;

begin
   null;
   instance := CanvasExpandUtil_Package.Create;

end org.allbinary.media.image.CanvasExpandUtil_Package;


