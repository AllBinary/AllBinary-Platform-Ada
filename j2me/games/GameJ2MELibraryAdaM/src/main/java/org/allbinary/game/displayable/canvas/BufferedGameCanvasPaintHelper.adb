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


package body org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package is

   procedure Initialize_Fields (This : in out BufferedGameCanvasPaintHelper'Class) is
   begin
      null;
      This.gameCanvas := NullCanvas_Package.NULL_CANVAS;
      This.offScreenImage := new Image_Access_Array'(0 .. (BufferedGameCanvasPaintHelper_Package.MAX_IMAGES) - 1 => null);
      This.previousImage := NullImage_Package.NULL_IMAGE;
      This.circularIndexUtil := CircularIndexUtil_Package.createInstance (BufferedGameCanvasPaintHelper_Package.MAX_IMAGES);
      This.drawCircularIndexUtil := CircularIndexUtil_Package.createInstanceAt ((BufferedGameCanvasPaintHelper_Package.MAX_IMAGES) - (1), BufferedGameCanvasPaintHelper_Package.MAX_IMAGES);
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out BufferedGameCanvasPaintHelper'Class; gameCanvas : AllBinaryGameCanvas_Access) is
   begin
      ProcessPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Longer Used")));
   end Initialize;

   function Create (gameCanvas : AllBinaryGameCanvas_Access) return BufferedGameCanvasPaintHelper_Access is
      This : constant BufferedGameCanvasPaintHelper_Access := new BufferedGameCanvasPaintHelper;
   begin
      Initialize (This.all, gameCanvas);
      return This;
   end Create;

   procedure process (This : in out BufferedGameCanvasPaintHelper) is
      myCanvas : MyCanvas_Access;
   begin
        myCanvas := (MyCanvas_Access (This.gameCanvas));
        myCanvas.draw (This.offScreenImage (This.circularIndexUtil.getIndex).getGraphics);
        This.circularIndexUtil.next;
        This.drawCircularIndexUtil.next;
   end process;

   procedure paint (This : in out BufferedGameCanvasPaintHelper; graphics : Graphics_Access) is
   begin
        This.previousImage := This.offScreenImage (This.drawCircularIndexUtil.getIndex);
        graphics.drawImage (This.previousImage, 0, 0, This.anchor);
   end paint;

begin
   null;
   MAX_IMAGES := 4;

end org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package;


