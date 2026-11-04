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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.InputProcessor_Package; use org.allbinary.game.input.InputProcessor_Package;
with org.allbinary.game.input.PlatformKeyFactory_Package; use org.allbinary.game.input.PlatformKeyFactory_Package;
with org.allbinary.game.input.event.DownKeyEventHandler_Package; use org.allbinary.game.input.event.DownKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;

package body org.allbinary.game.displayable.canvas.FormInputProcessor_Package is

   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   function "=" (Left, Right : Canvas_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype InputFactory_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access;
   function "=" (Left, Right : InputFactory_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array;
   function "=" (Left, Right : InputFactory_Access_Array) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access;
   function "=" (Left, Right : InputFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype PlatformKeyFactory_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access;
   function "=" (Left, Right : PlatformKeyFactory_Access) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   subtype PlatformKeyFactory_Access_Array is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array;
   function "=" (Left, Right : PlatformKeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   subtype PlatformKeyFactory_Access_Array_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformKeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   subtype PlatformKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformKeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   subtype PlatformKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformKeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   subtype DownKeyEventHandler_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access;
   function "=" (Left, Right : DownKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   subtype DownKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array;
   function "=" (Left, Right : DownKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   subtype DownKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : DownKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   subtype DownKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : DownKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   subtype DownKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   subtype GameKeyEventFactory_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype UpGameKeyEventHandler_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
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
                gameKey := GameKey_Access (GameKeyFactory_Package.getInstance.KEY_NUM0);
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


