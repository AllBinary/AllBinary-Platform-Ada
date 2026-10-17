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


package body org.allbinary.game.midlet.DemoRunnable_Package is

   procedure Initialize_Fields (This : in out DemoRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out DemoRunnable'Class; demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class) is
      demoGameMidlet : constant DemoGameMidlet_Access := DemoGameMidlet_Access (demoGameMidlet_Param);
   begin
      Initialize_Fields (This);
        This.demoGameMidlet := demoGameMidlet;
        This.startDemoGameMidletEvent := DemoGameMidletEvent_Package.Create (This.demoGameMidlet, DemoGameMidletStateFactory_Package.getInstance.START_DEMO);
   end Initialize;

   function Create (demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class) return DemoRunnable_Access is
      This : constant DemoRunnable_Access := new DemoRunnable;
   begin
      DemoRunnable_Package.Initialize (This.all, demoGameMidlet_Param);
      return This;
   end Create;

   procedure run (This : in out DemoRunnable) is
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (To_Unbounded_String ("GameCanvasRunnableInterface")).toString, DemoRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.demoGameMidlet.commandAction (MyCommandsFactory_Package.getInstance.SET_DISPLAYABLE, ProgressCanvasFactory_Package.getInstance);
            This.demoGameMidlet.setGameCanvasRunnableInterface (This.demoGameMidlet.createDemoGameCanvasRunnableInterface);
            This.demoGameMidlet.demoSetup;
            DemoGameMidletEventHandler_Package.getInstance.fireEvent (This.startDemoGameMidletEvent);
            This.demoGameMidlet.startGameCanvasRunnableInterface;
            This.demoGameMidlet.postDemoSetup;
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, DemoRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, DemoRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.game.midlet.DemoRunnable_Package;


