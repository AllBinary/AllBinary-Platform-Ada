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


package body org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package is

   procedure Initialize_Fields (This : in out GameCanvasInputProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.downGameKeyEventHandler := DownGameKeyEventHandler_Package.getInstance;
      This.upGameKeyEventHandler := UpGameKeyEventHandler_Package.getInstance;
      This.downKeyEventHandler := DownKeyEventHandler_Package.getInstance;
      This.smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
      This.inputToGameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping;
      This.NONE := GameKeyFactory_Package.getInstance.NONE;
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GameCanvasInputProcessor'Class; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
      InputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.allBinaryGameCanvas := allBinaryGameCanvas;
        This.inputToGameKeyMapping.init (This.allBinaryGameCanvas);
   end Initialize;

   function Create (allBinaryGameCanvas : AllBinaryGameCanvas_Access) return GameCanvasInputProcessor_Access is
      This : constant GameCanvasInputProcessor_Access := new GameCanvasInputProcessor;
   begin
      Initialize (This.all, allBinaryGameCanvas);
      return This;
   end Create;

   procedure keyPressedByDevice (This : in out GameCanvasInputProcessor; keyCode : Integer; deviceId : Integer) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
      keyCodeAsInteger : Integer;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (This.allBinaryGameCanvas, keyCode);
            if (gameKey) /= (This.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (This.allBinaryGameCanvas, gameKey);
                This.downGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.downGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, This'Unchecked_Access, This.gameInputStrings.ADD_KEY_EVENT);
            end if;
            keyCodeAsInteger := This.smallIntegerSingletonFactory.getAtNoThrow (keyCode);
            This.downKeyEventHandler.fireEventI (keyCodeAsInteger);
            This.downKeyEventHandler.getInstanceForDevice (deviceId).fireEventI (keyCodeAsInteger);
        exception
            when e : others =>
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), This'Unchecked_Access, This.gameInputStrings.ADD_KEY_EVENT, e);
        end;
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out GameCanvasInputProcessor; canvas : Canvas_Access; keyCode : Integer; deviceId : Integer) is
   begin
        This.removeGameKeyEvent (canvas, keyCode, deviceId, False);
   end keyReleasedByDevice;

   procedure removeGameKeyEvent (This : in out GameCanvasInputProcessor; canvas : Canvas_Access; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEventSourceInterface : GameKeyEventSourceInterface_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (canvas, keyCode);
            if (gameKey) /= (This.NONE) then
                gameKeyEventSourceInterface := GameKeyEventSourceInterface_Access (canvas);
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (gameKeyEventSourceInterface, gameKey);
                This.upGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, This'Unchecked_Access, This.gameInputStrings.REMOVE_KEY_EVENT);
            end if;
        exception
            when e : others =>
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), This'Unchecked_Access, This.gameInputStrings.REMOVE_KEY_EVENT, e);
        end;
   end removeGameKeyEvent;

end org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package;


