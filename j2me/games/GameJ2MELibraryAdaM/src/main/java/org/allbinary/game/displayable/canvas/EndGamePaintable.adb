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


package body org.allbinary.game.displayable.canvas.EndGamePaintable_Package is

   procedure Initialize_Fields (This : in out EndGamePaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EndGamePaintable'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return EndGamePaintable_Access is
      This : constant EndGamePaintable_Access := new EndGamePaintable;
   begin
      EndGamePaintable_Package.Initialize (This.all, gameCanvas_Param);
      return This;
   end Create;

   procedure paint (This : in out EndGamePaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.gameCanvas.paintGameOver (graphics);
   end paint;

end org.allbinary.game.displayable.canvas.EndGamePaintable_Package;


