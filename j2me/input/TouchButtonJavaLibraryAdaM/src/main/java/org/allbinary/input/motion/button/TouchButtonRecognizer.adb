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


with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package; use org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References;
with org.allbinary.input.motion.button.ReleaseHelper_Package; use org.allbinary.input.motion.button.ReleaseHelper_Package;
with org.allbinary.input.motion.button.ReleaseHelper_Package_References;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package; use org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.TouchScreenFactory_Package; use org.allbinary.input.motion.button.TouchScreenFactory_Package;
with org.allbinary.input.motion.button.MultitouchReleaseHelper_Package; use org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package; use org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;
with org.allbinary.input.motion.button.ReleaseHelper_Package;
with org.allbinary.input.motion.button.TouchButton_Package;

package body org.allbinary.input.motion.button.TouchButtonRecognizer_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   subtype DownGameKeyEventHandler_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
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
   subtype RectangleCollisionUtil_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   function "=" (Left, Right : TouchButtonInput_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype ReleaseHelper_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access;
   function "=" (Left, Right : ReleaseHelper_Access) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   subtype ReleaseHelper_Access_Array is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array;
   function "=" (Left, Right : ReleaseHelper_Access_Array) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   subtype ReleaseHelper_Access_Array_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access;
   function "=" (Left, Right : ReleaseHelper_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   subtype ReleaseHelper_Access_Array_Access_Array is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access_Array;
   function "=" (Left, Right : ReleaseHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   subtype ReleaseHelper_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.ReleaseHelper_Package_References.ReleaseHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ReleaseHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.ReleaseHelper_Package_References."=";
   procedure Initialize_Fields (This : in out TouchButtonRecognizer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.rectangleCollisionUtil := RectangleCollisionUtil_Package.getInstance;
      This.upGameKeyEventHandler := UpGameKeyEventHandler_Package.getInstance;
      This.downGameKeyEventHandler := DownGameKeyEventHandler_Package.getInstance;
      This.lastPressedTouchButtonInput := TouchButtonInput_Access (BasicTouchInputFactory_Package.getInstance.NONE);
      This.currentlyPressedTouchButtonSingleton := CurrentlyPressedTouchButtonSingleton_Package.getInstance;
      This.releaseHelper_Var := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonRecognizer'Class) is
   begin
      Initialize_Fields (This);
        if TouchScreenFactory_Package.getInstance.isMultiTouch then
            This.releaseHelper_Var := ReleaseHelper_Access (MultitouchReleaseHelper_Package.Create (TouchButtonRecognizer_Access'(This'Unchecked_Access)));
        else
            This.releaseHelper_Var := ReleaseHelper_Package.Create (TouchButtonRecognizer_Access'(This'Unchecked_Access));
        end if;
   end Initialize;

   function Create return TouchButtonRecognizer_Access is
      This : constant TouchButtonRecognizer_Access := new TouchButtonRecognizer;
   begin
      TouchButtonRecognizer_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processRelease (This : in out TouchButtonRecognizer; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      gameKeyEvent : GameKeyEvent_Access;
   begin
        This.releaseHelper_Var.release (touchButtonInput, deviceId);
        gameKeyEvent := touchButtonInput.getGameKeyEvent;
        This.upGameKeyEventHandler.fireEvent (gameKeyEvent);
        This.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
        This.currentlyPressedTouchButtonSingleton.remove (touchButtonInput);
   end processRelease;

   --  throws Exception
   function releaseTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) return Boolean is
      touchButtonInput : TouchButtonInput_Access;
      list : BasicArrayList_Access;
      rectangle : Rectangle_Access;
      point : GPoint_Access;
      touchButton : TouchButton_Access;
      index : Integer;
   begin
        touchButtonInput := This.lastPressedTouchButtonInput;
        if This.currentlyPressedTouchButtonSingleton.contains (touchButtonInput) then
            This.lastPressedTouchButtonInput := TouchButtonInput_Access (BasicTouchInputFactory_Package.getInstance.NONE);
            TouchButtonRecognizer'Class (This).processRelease (touchButtonInput, deviceId);
            return True;
        else
            list := TouchButtonFactory_Package.getInstance.getList;
            rectangle := null;
            point := null;
            touchButton := null;
            for index in reverse 0 .. (list.size) - (1) loop
                touchButton := TouchButton_Access (list.objectArray (index));
                rectangle := touchButton.getRectangle;
                point := rectangle.getPoint;
                if This.rectangleCollisionUtil.isInside (point.getX, point.getY, rectangle.getMaxX, rectangle.getMaxY, x, y) then
                    touchButtonInput := touchButton.getTouchButtonInput;
                    TouchButtonRecognizer'Class (This).processRelease (touchButtonInput, deviceId);
                    return True;
                end if;
            end loop;
        end if;
        return False;
   end releaseTouchButtonInput;

   --  throws Exception
   function pressTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) return Boolean is
      list : BasicArrayList_Access;
      rectangle : Rectangle_Access;
      point : GPoint_Access;
      touchButton : TouchButton_Access;
      touchButtonInput : TouchButtonInput_Access;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        list := TouchButtonFactory_Package.getInstance.getList;
        rectangle := null;
        point := null;
        touchButton := null;
        touchButtonInput := null;
        gameKeyEvent := null;
        for index in reverse 0 .. (list.size) - (1) loop
            touchButton := TouchButton_Access (list.objectArray (index));
            rectangle := touchButton.getRectangle;
            point := rectangle.getPoint;
            if This.rectangleCollisionUtil.isInside (point.getX, point.getY, rectangle.getMaxX, rectangle.getMaxY, x, y) then
                touchButtonInput := touchButton.getTouchButtonInput;
                if not (This.currentlyPressedTouchButtonSingleton.contains (touchButtonInput)) then
                    This.releaseHelper_Var.release (touchButtonInput, deviceId);
                    This.lastPressedTouchButtonInput := touchButtonInput;
                    This.currentlyPressedTouchButtonSingleton.add (touchButtonInput);
                    gameKeyEvent := touchButtonInput.getGameKeyEvent;
                    This.downGameKeyEventHandler.fireEvent (gameKeyEvent);
                    This.downGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
                end if;
                return True;
            end if;
        end loop;
        return False;
   end pressTouchButtonInput;

   procedure releaseTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) is
      Java_Result : constant Boolean := TouchButtonRecognizer'Class (This).releaseTouchButtonInput (x => x, y => y, deviceId => deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end releaseTouchButtonInput;

   procedure pressTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) is
      Java_Result : constant Boolean := TouchButtonRecognizer'Class (This).pressTouchButtonInput (x => x, y => y, deviceId => deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end pressTouchButtonInput;

end org.allbinary.input.motion.button.TouchButtonRecognizer_Package;


with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package; use org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package; use org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package; use org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.TouchScreenFactory_Package; use org.allbinary.input.motion.button.TouchScreenFactory_Package;
with org.allbinary.input.motion.button.MultitouchReleaseHelper_Package; use org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package; use org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;
with org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package;

package body org.allbinary.input.motion.button.ReleaseHelper_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   subtype DownGameKeyEventHandler_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
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
   subtype RectangleCollisionUtil_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   function "=" (Left, Right : TouchButtonInput_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype TouchButtonRecognizer_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   procedure Initialize_Fields (This : in out ReleaseHelper'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ReleaseHelper'Class; touchButtonRecognizer_Var_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class) is
      touchButtonRecognizer_Var : constant TouchButtonRecognizer_Access := TouchButtonRecognizer_Access (touchButtonRecognizer_Var_Param);
   begin
      Initialize_Fields (This);
            This.touchButtonRecognizer_Var := touchButtonRecognizer_Var;
   end Initialize;

   function Create (touchButtonRecognizer_Var_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class) return ReleaseHelper_Access is
      This : constant ReleaseHelper_Access := new ReleaseHelper;
   begin
      ReleaseHelper_Package.Initialize (This.all, touchButtonRecognizer_Var_Param);
      return This;
   end Create;
    
   --  throws Exception
   procedure release (This : in out ReleaseHelper; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      nextTouchButtonInput : TouchButtonInput_Access;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
            nextTouchButtonInput := null;
            gameKeyEvent := null;
            for index in reverse 0 .. (This.touchButtonRecognizer_Var.currentlyPressedTouchButtonSingleton.size) - (1) loop
                nextTouchButtonInput := This.touchButtonRecognizer_Var.currentlyPressedTouchButtonSingleton.get (index);
                gameKeyEvent := nextTouchButtonInput.getGameKeyEvent;
                This.touchButtonRecognizer_Var.upGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.touchButtonRecognizer_Var.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
                This.touchButtonRecognizer_Var.currentlyPressedTouchButtonSingleton.removeAt (index);
            end loop;
   end release;

end org.allbinary.input.motion.button.ReleaseHelper_Package;


with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package; use org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package; use org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package; use org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.TouchScreenFactory_Package; use org.allbinary.input.motion.button.TouchScreenFactory_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package; use org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package;

package body org.allbinary.input.motion.button.MultitouchReleaseHelper_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   subtype DownGameKeyEventHandler_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
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
   subtype RectangleCollisionUtil_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   function "=" (Left, Right : TouchButtonInput_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References.CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CurrentlyPressedTouchButtonSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package_References."=";
   subtype TouchButtonRecognizer_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   procedure Initialize_Fields (This : in out MultitouchReleaseHelper'Class) is
   begin
      null;
   end Initialize_Fields;

    
   procedure Initialize (This : in out MultitouchReleaseHelper'Class; touchButtonRecognizer_Var_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class) is
      touchButtonRecognizer_Var : constant TouchButtonRecognizer_Access := TouchButtonRecognizer_Access (touchButtonRecognizer_Var_Param);
   begin
            ReleaseHelper_Package.Initialize (This, touchButtonRecognizer_Var);
   end Initialize;

   function Create (touchButtonRecognizer_Var_Param : access TouchButtonRecognizer_Package.TouchButtonRecognizer'Class) return MultitouchReleaseHelper_Access is
      This : constant MultitouchReleaseHelper_Access := new MultitouchReleaseHelper;
   begin
      MultitouchReleaseHelper_Package.Initialize (This.all, touchButtonRecognizer_Var_Param);
      return This;
   end Create;
    
   --  throws Exception
   procedure release (This : in out MultitouchReleaseHelper; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; deviceId : Integer) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      cancelTouchButtonInput : TouchButtonInput_Access;
      nextTouchButtonInput : TouchButtonInput_Access;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
            cancelTouchButtonInput := CancelTouchButtonInputFactory_Package.getInstance.getCancel (touchButtonInput);
            nextTouchButtonInput := null;
            gameKeyEvent := null;
            for index in reverse 0 .. (This.touchButtonRecognizer_Var.currentlyPressedTouchButtonSingleton.size) - (1) loop
                nextTouchButtonInput := This.touchButtonRecognizer_Var.currentlyPressedTouchButtonSingleton.get (index);
                if (cancelTouchButtonInput) = (nextTouchButtonInput) then
                    gameKeyEvent := nextTouchButtonInput.getGameKeyEvent;
                    This.touchButtonRecognizer_Var.upGameKeyEventHandler.fireEvent (gameKeyEvent);
                    This.touchButtonRecognizer_Var.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
                    This.touchButtonRecognizer_Var.currentlyPressedTouchButtonSingleton.removeAt (index);
                end if;
            end loop;
   end release;

end org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;


