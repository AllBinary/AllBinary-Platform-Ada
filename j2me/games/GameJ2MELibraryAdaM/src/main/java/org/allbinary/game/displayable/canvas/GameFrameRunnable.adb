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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;

package body org.allbinary.game.displayable.canvas.GameFrameRunnable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   procedure Initialize_Fields (This : in out GameFrameRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gameTickDisplayInfoSingleton := GameTickDisplayInfoSingleton_Package.getInstance;
      
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GameFrameRunnable'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
      GameRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allBinaryGameCanvas := allBinaryGameCanvas;
   end Initialize;

   function Create (allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameFrameRunnable_Access is
      This : constant GameFrameRunnable_Access := new GameFrameRunnable;
   begin
      GameFrameRunnable_Package.Initialize (This.all, allBinaryGameCanvas_Param);
      return This;
   end Create;

   procedure run (This : in out GameFrameRunnable) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            allBinaryGameCanvas := This.allBinaryGameCanvas;
            allBinaryGameCanvas.getLoopTimeHelperP.setStartTime (This.gameTickTimeDelayHelper.setStartTime);
            This.gameTickDisplayInfoSingleton.update;
            allBinaryGameCanvas.processGame;
            if (not (allBinaryGameCanvas.isRunning)) or else (allBinaryGameCanvas.isPaused) then
                allBinaryGameCanvas.notifyDonePainting;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameFrameRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.game.displayable.canvas.GameFrameRunnable_Package;


