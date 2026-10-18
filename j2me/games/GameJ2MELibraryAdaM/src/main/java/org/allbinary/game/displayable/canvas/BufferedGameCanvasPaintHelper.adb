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


with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;

package body org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package is

   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
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


   procedure Initialize (This : in out BufferedGameCanvasPaintHelper'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
   begin
      ProcessPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Longer Used")));
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return BufferedGameCanvasPaintHelper_Access is
      This : constant BufferedGameCanvasPaintHelper_Access := new BufferedGameCanvasPaintHelper;
   begin
      BufferedGameCanvasPaintHelper_Package.Initialize (This.all, gameCanvas_Param);
      return This;
   end Create;

   procedure process (This : in out BufferedGameCanvasPaintHelper) is
      myCanvas : MyCanvas_Access;
   begin
        myCanvas := (MyCanvas_Access (This.gameCanvas));
        myCanvas.draw (This.offScreenImage (This.circularIndexUtil.getIndex).getGraphics);
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
        declare Java_Result renames This.drawCircularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
   end process;

   procedure paint (This : in out BufferedGameCanvasPaintHelper; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.previousImage := This.offScreenImage (This.drawCircularIndexUtil.getIndex);
        graphics.drawImage (This.previousImage, 0, 0, This.anchor);
   end paint;

begin
   null;
   MAX_IMAGES := 4;

end org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package;


