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


with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.paint.PaintableComposite_Package; use org.allbinary.graphics.paint.PaintableComposite_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package body org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package PaintableComposite_Package renames Standard.org.allbinary.graphics.paint.PaintableComposite_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   procedure Initialize_Fields (This : in out DemoCanvasProgressUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DemoCanvasProgressUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DemoCanvasProgressUtil_Access is
      This : constant DemoCanvasProgressUtil_Access := new DemoCanvasProgressUtil;
   begin
      DemoCanvasProgressUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure showProgress (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) is
      demoCanvas : constant DemoCanvas_Access := DemoCanvas_Access (demoCanvas_Param);
   begin
        DemoCanvasProgressUtil_Package.showProgressOptionallyInTheBackground (demoCanvas, False);
   end showProgress;

   procedure showProgressOptionallyInTheBackground (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class; background : Boolean) is
      demoCanvas : constant DemoCanvas_Access := DemoCanvas_Access (demoCanvas_Param);
      progressCanvas : ProgressCanvas_Access;
      paintableArray : PaintableInterface_Access_Array_Access;
   begin
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.startBackground (background);
        paintableArray := new PaintableInterface_Access_Array'(0 .. (2) - 1 => null);
        paintableArray (0) := progressCanvas;
        paintableArray (1) := demoCanvas.getDefaultPaintableInterface;
        demoCanvas.setDefaultPaintableInterface (PaintableComposite_Package.Create (paintableArray));
        demoCanvas.setPaintableInterface (demoCanvas.getDefaultPaintableInterface);
   end showProgressOptionallyInTheBackground;

end org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package;


