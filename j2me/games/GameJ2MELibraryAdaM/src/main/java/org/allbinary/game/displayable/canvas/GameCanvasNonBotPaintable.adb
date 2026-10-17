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


package body org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package is

   procedure Initialize_Fields (This : in out GameCanvasNonBotPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameCanvasNonBotPaintable'Class; gameCanvas : AllBinaryGameCanvas_Access) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
   end Initialize;

   function Create (gameCanvas : AllBinaryGameCanvas_Access) return GameCanvasNonBotPaintable_Access is
      This : constant GameCanvasNonBotPaintable_Access := new GameCanvasNonBotPaintable;
   begin
      GameCanvasNonBotPaintable_Package.Initialize (This.all, gameCanvas);
      return This;
   end Create;

   procedure paint (This : in out GameCanvasNonBotPaintable; graphics : Graphics_Access) is
   begin
        This.gameCanvas.nonBotPaint (graphics);
   end paint;

end org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package;


