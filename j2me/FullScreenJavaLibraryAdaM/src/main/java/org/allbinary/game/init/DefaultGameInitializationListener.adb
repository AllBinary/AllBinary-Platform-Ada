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


package body org.allbinary.game.init.DefaultGameInitializationListener_Package is

   procedure Initialize_Fields (This : in out DefaultGameInitializationListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.swtJOGLProcessor := SWTJOGLProcessor_Package.getInstance;
      This.firstTime := True;
   end Initialize_Fields;


   procedure Initialize (This : in out DefaultGameInitializationListener'Class) is
      gameInitializedEventHandler : GameInitializedEventHandler_Access;
   begin
      Initialize_Fields (This);
        gameInitializedEventHandler := GameInitializedEventHandler_Package.getInstance;
        gameInitializedEventHandler.removeAllListeners;
        gameInitializedEventHandler.addListenerInterface (GameInitializedListenerInterface_Access (This'Unchecked_Access));
   end Initialize;

   function Create return DefaultGameInitializationListener_Access is
      This : constant DefaultGameInitializationListener_Access := new DefaultGameInitializationListener;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure onEvent (This : in out DefaultGameInitializationListener; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onGameInitialized (This : in out DefaultGameInitializationListener; gameInitializedEvent : GameInitializedEvent_Access) is
      ON_GAME_INITIALIZED : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        ON_GAME_INITIALIZED := To_Unbounded_String ("onGameInitialized");
        commonStrings := CommonStrings_Package.getInstance;
        begin
            This.logUtil.putF (commonStrings.START, This'Unchecked_Access, ON_GAME_INITIALIZED);
            while not (This.swtJOGLProcessor.isHolderCreated) loop
                This.logUtil.putF (commonStrings.UPDATE, This'Unchecked_Access, ON_GAME_INITIALIZED);
                Java_Sleep (20);
            end loop;
            FeatureResourceInitializationUtil_Package.getInstance.init (gameInitializedEvent.getLevel);
            if This.firstTime then
                This.firstTime := False;
            else
                This.swtJOGLProcessor.onSurfaceChanged;
            end if;
        exception
            when e : others =>
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, ON_GAME_INITIALIZED, e);
        end;
   end onGameInitialized;

end org.allbinary.game.init.DefaultGameInitializationListener_Package;


