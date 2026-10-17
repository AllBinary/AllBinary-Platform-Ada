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


package body org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package is

   procedure Initialize_Fields (This : in out GameCanvasRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gameTickDisplayInfoSingleton := GameTickDisplayInfoSingleton_Package.getInstance;
      
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GameCanvasRunnable'Class; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
      GameRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allBinaryGameCanvas := allBinaryGameCanvas;
   end Initialize;

   function Create (allBinaryGameCanvas : AllBinaryGameCanvas_Access) return GameCanvasRunnable_Access is
      This : constant GameCanvasRunnable_Access := new GameCanvasRunnable;
   begin
      Initialize (This.all, allBinaryGameCanvas);
      return This;
   end Create;

   procedure run (This : in out GameCanvasRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.allBinaryGameCanvas.getLoopTimeHelperP.setStartTime (This.gameTickTimeDelayHelper.setStartTime);
            This.gameTickDisplayInfoSingleton.update;
            This.allBinaryGameCanvas.processGame;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
                end;
        end;
   end run;

   --  throws Exception
   procedure processLoopSleep (This : in out GameCanvasRunnable) is
   begin
        This.allBinaryGameCanvas.processLoopSleep;
   end processLoopSleep;

end org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;


