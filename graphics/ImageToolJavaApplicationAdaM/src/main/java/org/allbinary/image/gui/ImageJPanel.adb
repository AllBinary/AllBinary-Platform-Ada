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


package body org.allbinary.image.gui.ImageJPanel_Package is

   procedure Initialize_Fields (This : in out ImageJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.isDrawn := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageJPanel'Class; bufferedImage : BufferedImage_Access) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
        This.bufferedImage := bufferedImage;
        This.setSize (This.bufferedImage.getWidth (null), This.bufferedImage.getHeight (null));
   end Initialize;

   function Create (bufferedImage : BufferedImage_Access) return ImageJPanel_Access is
      This : constant ImageJPanel_Access := new ImageJPanel;
   begin
      Initialize (This.all, bufferedImage);
      return This;
   end Create;

   procedure paint (This : in out ImageJPanel; graphics : Graphics_Access) is
   begin
        if not (This.isDrawn) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.canvasStrings.PAINT);
            graphics.drawImage (This.bufferedImage, 0, 0, This.bufferedImage.getWidth (null), This.bufferedImage.getHeight (null), null);
            This.isDrawn := True;
        end if;
   end paint;

   procedure initComponents (This : in out ImageJPanel) is
      layout : GroupLayout_Access;
   begin
        layout := GroupLayout_Package.Create (This'Unchecked_Access);
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 400, Short_Package.MAX_VALUE));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 300, Short_Package.MAX_VALUE));
   end initComponents;

end org.allbinary.image.gui.ImageJPanel_Package;


