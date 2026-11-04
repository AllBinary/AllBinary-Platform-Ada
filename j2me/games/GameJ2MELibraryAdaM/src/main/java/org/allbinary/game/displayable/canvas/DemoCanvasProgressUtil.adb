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
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.thread.ThreadFactoryUtil_Package;

package body org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package PaintableComposite_Package renames Standard.org.allbinary.graphics.paint.PaintableComposite_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   subtype DemoCanvas_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access;
   function "=" (Left, Right : DemoCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   subtype DemoCanvas_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array;
   function "=" (Left, Right : DemoCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   subtype DemoCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access;
   function "=" (Left, Right : DemoCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   subtype DemoCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : DemoCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   subtype DemoCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
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
        paintableArray (0) := PaintableInterface_Access (progressCanvas);
        paintableArray (1) := PaintableInterface_Access (demoCanvas.getDefaultPaintableInterface);
        demoCanvas.setDefaultPaintableInterface (PaintableComposite_Package.Create (paintableArray));
        demoCanvas.setPaintableInterface (demoCanvas.getDefaultPaintableInterface);
   end showProgressOptionallyInTheBackground;

end org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package;


