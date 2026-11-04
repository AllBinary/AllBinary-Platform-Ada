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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package; use org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;

package body org.allbinary.media.image.CanvasTrimUtil_Package is

   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   function "=" (Left, Right : StringUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype ImageProcessorInput_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access;
   function "=" (Left, Right : ImageProcessorInput_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessorInput_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array;
   function "=" (Left, Right : ImageProcessorInput_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessorInput_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access;
   function "=" (Left, Right : ImageProcessorInput_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessorInput_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array;
   function "=" (Left, Right : ImageProcessorInput_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessorInput_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageProcessorInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessedVisitor_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access;
   function "=" (Left, Right : ImageProcessedVisitor_Access) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   subtype ImageProcessedVisitor_Access_Array is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array;
   function "=" (Left, Right : ImageProcessedVisitor_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   subtype ImageProcessedVisitor_Access_Array_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access;
   function "=" (Left, Right : ImageProcessedVisitor_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   subtype ImageProcessedVisitor_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : ImageProcessedVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   subtype ImageProcessedVisitor_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageProcessedVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
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
      CanvasTrimUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CanvasTrimUtil_Access is
   begin
        return CanvasTrimUtil_Access (CanvasTrimUtil_Package.instance);
   end getInstance;

   --  throws IOException
   procedure process (This : in out CanvasTrimUtil; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class; cutCanvasFromLeftReduction : Integer; cutCanvasFromTopReduction : Integer; cutCanvasFromRightReduction : Integer; cutCanvasFromBottomReduction : Integer; visitor_Param : access ImageProcessedVisitor_Package.ImageProcessedVisitor'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
      visitor : constant ImageProcessedVisitor_Access := ImageProcessedVisitor_Access (visitor_Param);
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

begin
   null;
   instance := CanvasTrimUtil_Package.Create;

end org.allbinary.media.image.CanvasTrimUtil_Package;


