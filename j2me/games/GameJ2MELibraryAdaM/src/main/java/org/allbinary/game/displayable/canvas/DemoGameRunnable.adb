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

package body org.allbinary.game.displayable.canvas.DemoGameRunnable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   procedure Initialize_Fields (This : in out DemoGameRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameRunnable'Class; demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) is
      demoCanvas : constant DemoCanvas_Access := DemoCanvas_Access (demoCanvas_Param);
   begin
      GameRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.demoCanvas := demoCanvas;
   end Initialize;

   function Create (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) return DemoGameRunnable_Access is
      This : constant DemoGameRunnable_Access := new DemoGameRunnable;
   begin
      DemoGameRunnable_Package.Initialize (This.all, demoCanvas_Param);
      return This;
   end Create;

   procedure run (This : in out DemoGameRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.demoCanvas.getLoopTimeHelperP.setStartTime (This.gameTickTimeDelayHelper.setStartTime);
            This.demoCanvas.processGame;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, DemoGameRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                end;
        end;
   end run;

   --  throws Exception
   procedure processLoopSleep (This : in out DemoGameRunnable) is
   begin
        This.demoCanvas.processLoopSleep;
   end processLoopSleep;

end org.allbinary.game.displayable.canvas.DemoGameRunnable_Package;


