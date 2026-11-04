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


with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.Graphics_Package; use org.allbinary.image.gui.Graphics_Package;

package body org.allbinary.image.gui.ImageJPanel_Package is

   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   function "=" (Left, Right : CanvasStrings_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   function "=" (Left, Right : CanvasStrings_Access_Array) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype Graphics_Access is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames org.allbinary.image.gui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames org.allbinary.image.gui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames org.allbinary.image.gui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.Graphics_Package_References."=";
   procedure Initialize_Fields (This : in out ImageJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.isDrawn := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageJPanel'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        ImageJPanel'Class (This).initComponents;
        This.bufferedImage := bufferedImage;
        ImageJPanel'Class (This).setSize (This.bufferedImage.getWidth (null), This.bufferedImage.getHeight (null));
   end Initialize;

   function Create (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return ImageJPanel_Access is
      This : constant ImageJPanel_Access := new ImageJPanel;
   begin
      ImageJPanel_Package.Initialize (This.all, bufferedImage_Param);
      return This;
   end Create;

   procedure paint (This : in out ImageJPanel; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        if not (This.isDrawn) then
            This.logUtil.putF (This.commonStrings.START, ImageJPanel_Access'(This'Unchecked_Access), This.canvasStrings.PAINT);
            graphics.drawImage (This.bufferedImage, 0, 0, This.bufferedImage.getWidth (null), This.bufferedImage.getHeight (null), null);
            This.isDrawn := True;
        end if;
   end paint;

   procedure initComponents (This : in out ImageJPanel) is
      layout : GroupLayout_Access;
   begin
        layout := GroupLayout_Package.Create (ImageJPanel_Access'(This'Unchecked_Access));
        ImageJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 400, Short_Integer'Last));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 300, Short_Integer'Last));
   end initComponents;

end org.allbinary.image.gui.ImageJPanel_Package;


