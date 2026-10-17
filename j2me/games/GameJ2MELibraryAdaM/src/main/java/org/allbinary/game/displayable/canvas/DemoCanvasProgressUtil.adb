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


package body org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   procedure showProgress (demoCanvas : DemoCanvas_Access) is
   begin
        DemoCanvasProgressUtil_Package.showProgressOptionallyInTheBackground (demoCanvas, False);
   end showProgress;

   procedure showProgressOptionallyInTheBackground (demoCanvas : DemoCanvas_Access; background : Boolean) is
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


