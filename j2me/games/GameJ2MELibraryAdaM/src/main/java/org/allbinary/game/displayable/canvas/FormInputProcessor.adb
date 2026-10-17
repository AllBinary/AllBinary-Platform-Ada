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


package body org.allbinary.game.displayable.canvas.FormInputProcessor_Package is

   procedure Initialize_Fields (This : in out FormInputProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      This.downKeyEventHandler := DownKeyEventHandler_Package.getInstance;
      This.upGameKeyEventHandler := UpGameKeyEventHandler_Package.getInstance;
      This.inputFactory := InputFactory_Package.getInstance;
      This.platformKeyFactory := PlatformKeyFactory_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FormInputProcessor'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
      InputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.allBinaryGameCanvas := allBinaryGameCanvas;
   end Initialize;

   function Create (allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return FormInputProcessor_Access is
      This : constant FormInputProcessor_Access := new FormInputProcessor;
   begin
      FormInputProcessor_Package.Initialize (This.all, allBinaryGameCanvas_Param);
      return This;
   end Create;

   procedure keyPressedByDevice (This : in out FormInputProcessor; keyCode : Integer; deviceId : Integer) is
      input : Input_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.inputFactory.KEY_CODE_LABEL).appendint (keyCode).append (CommonSeps_Package.getInstance.SPACE).append (This.inputFactory.DEVICE_ID_LABEL).appendint (deviceId).toString, FormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.KEY_PRESSED);
            input := This.inputFactory.getInstanceById (keyCode);
            gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (This.allBinaryGameCanvas, input);
            This.downKeyEventHandler.fireEventForGameKeyEvent (gameKeyEvent);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, FormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT, e);
                end;
        end;
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out FormInputProcessor; canvas_Param : access Canvas_Package.Canvas'Class; keyCode : Integer; deviceId : Integer) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
      input : Input_Access;
      gameKey : GameKey_Access;
      gameKeyEventSourceInterface : GameKeyEventSourceInterface_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            input := This.inputFactory.getInstanceById (keyCode);
            if This.platformKeyFactory.isEnter (input) then
                PreLogUtil_Package.put (StringMaker_Package.Create.append (This.inputFactory.KEY_CODE_LABEL).appendint (keyCode).append (CommonSeps_Package.getInstance.SPACE).append (This.inputFactory.DEVICE_ID_LABEL).appendint (deviceId).toString, FormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.KEY_RELEASED);
                gameKey := GameKeyFactory_Package.getInstance.KEY_NUM0;
                gameKeyEventSourceInterface := GameKeyEventSourceInterface_Access (canvas);
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (gameKeyEventSourceInterface, gameKey);
                This.upGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, FormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT, e);
                end;
        end;
   end keyReleasedByDevice;

end org.allbinary.game.displayable.canvas.FormInputProcessor_Package;


