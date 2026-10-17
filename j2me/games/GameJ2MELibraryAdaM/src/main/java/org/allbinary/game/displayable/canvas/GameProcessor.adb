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


package body org.allbinary.game.displayable.canvas.GameProcessor_Package is

   procedure Initialize_Fields (This : in out GameProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameProcessor'Class; gameCanvas : AllBinaryGameCanvas_Access) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
   end Initialize;

   function Create (gameCanvas : AllBinaryGameCanvas_Access) return GameProcessor_Access is
      This : constant GameProcessor_Access := new GameProcessor;
   begin
      GameProcessor_Package.Initialize (This.all, gameCanvas);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out GameProcessor) is
   begin
        This.gameCanvas.processPlayingGame;
   end process;

end org.allbinary.game.displayable.canvas.GameProcessor_Package;


