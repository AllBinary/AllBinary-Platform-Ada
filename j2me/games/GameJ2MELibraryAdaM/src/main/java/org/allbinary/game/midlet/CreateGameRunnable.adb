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


package body org.allbinary.game.midlet.CreateGameRunnable_Package is

   procedure Initialize_Fields (This : in out CreateGameRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CreateGameRunnable'Class; demoGameMidlet : DemoGameMidlet_Access; hashtable : ABHashtable_Access) is
   begin
      Initialize_Fields (This);
        This.demoGameMidlet := demoGameMidlet;
        This.hashtable := hashtable;
        This.startGameMidletEvent := DemoGameMidletEvent_Package.Create (This'Unchecked_Access, DemoGameMidletStateFactory_Package.getInstance.START_GAME);
   end Initialize;

   function Create (demoGameMidlet : DemoGameMidlet_Access; hashtable : ABHashtable_Access) return CreateGameRunnable_Access is
      This : constant CreateGameRunnable_Access := new CreateGameRunnable;
   begin
      Initialize (This.all, demoGameMidlet, hashtable);
      return This;
   end Create;

   procedure run (This : in out CreateGameRunnable) is
      progressCanvas : ProgressCanvas_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            This.demoGameMidlet.commandAction (MyCommandsFactory_Package.getInstance.SET_DISPLAYABLE, progressCanvas);
            This.demoGameMidlet.stopGameCanvasRunnableInterface;
            This.demoGameMidlet.setGameCanvasRunnableInterface (This.demoGameMidlet.createGameCanvasRunnableInterface);
            This.demoGameMidlet.getGameCanvasRunnableInterface.setLoadStateHashtable (This.hashtable);
            This.demoGameMidlet.startGameCanvasRunnableInterface;
            DemoGameMidletEventHandler_Package.getInstance.fireEvent (This.startGameMidletEvent);
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.game.midlet.CreateGameRunnable_Package;


