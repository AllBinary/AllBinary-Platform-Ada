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


package body org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package is

   procedure Initialize_Fields (This : in out GameCanvasPaintHelper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameCanvasPaintHelper'Class; gameCanvas : AllBinaryGameCanvas_Access) is
   begin
      ProcessPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
   end Initialize;

   function Create (gameCanvas : AllBinaryGameCanvas_Access) return GameCanvasPaintHelper_Access is
      This : constant GameCanvasPaintHelper_Access := new GameCanvasPaintHelper;
   begin
      Initialize (This.all, gameCanvas);
      return This;
   end Create;

   procedure process (This : in out GameCanvasPaintHelper) is
   begin
        null;
   end process;

   procedure paint (This : in out GameCanvasPaintHelper; graphics : Graphics_Access) is
   begin
        This.gameCanvas.draw (graphics);
   end paint;

end org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package;


