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


package body org.allbinary.input.motion.button.TouchButtonRecognizer_Package is

   procedure Initialize_Fields (This : in out TouchButtonRecognizer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.rectangleCollisionUtil := RectangleCollisionUtil_Package.getInstance;
      This.upGameKeyEventHandler := UpGameKeyEventHandler_Package.getInstance;
      This.downGameKeyEventHandler := DownGameKeyEventHandler_Package.getInstance;
      This.lastPressedTouchButtonInput := BasicTouchInputFactory_Package.getInstance.NONE;
      This.currentlyPressedTouchButtonSingleton := CurrentlyPressedTouchButtonSingleton_Package.getInstance;
      This.releaseHelper := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonRecognizer'Class) is
   begin
      Initialize_Fields (This);
        if TouchScreenFactory_Package.getInstance.isMultiTouch then
            This.releaseHelper := MultitouchReleaseHelper_Package.Create (This'Unchecked_Access);
        else
            This.releaseHelper := ReleaseHelper_Package.Create (This'Unchecked_Access);
        end if;
   end Initialize;

   function Create return TouchButtonRecognizer_Access is
      This : constant TouchButtonRecognizer_Access := new TouchButtonRecognizer;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processRelease (This : in out TouchButtonRecognizer; touchButtonInput : TouchButtonInput_Access; deviceId : Integer) is
      gameKeyEvent : GameKeyEvent_Access;
   begin
        This.releaseHelper.release (touchButtonInput, deviceId);
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
            This.lastPressedTouchButtonInput := BasicTouchInputFactory_Package.getInstance.NONE;
            This.processRelease (touchButtonInput, deviceId);
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
                    This.processRelease (touchButtonInput, deviceId);
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
                    This.releaseHelper.release (touchButtonInput, deviceId);
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
      Java_Result : constant Boolean := TouchButtonRecognizer'Class (This).releaseTouchButtonInput (x, y, deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end releaseTouchButtonInput;

   procedure pressTouchButtonInput (This : in out TouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer) is
      Java_Result : constant Boolean := TouchButtonRecognizer'Class (This).pressTouchButtonInput (x, y, deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end pressTouchButtonInput;

end org.allbinary.input.motion.button.TouchButtonRecognizer_Package;


package body org.allbinary.input.motion.button.ReleaseHelper_Package is

   procedure Initialize_Fields (This : in out ReleaseHelper'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ReleaseHelper'Class; touchButtonRecognizer : TouchButtonRecognizer_Access) is
   begin
      Initialize_Fields (This);
            This.touchButtonRecognizer := touchButtonRecognizer;
   end Initialize;

   function Create (touchButtonRecognizer : TouchButtonRecognizer_Access) return ReleaseHelper_Access is
      This : constant ReleaseHelper_Access := new ReleaseHelper;
   begin
      Initialize (This.all, touchButtonRecognizer);
      return This;
   end Create;
    
   --  throws Exception
   procedure release (This : in out ReleaseHelper; touchButtonInput : TouchButtonInput_Access; deviceId : Integer) is
      nextTouchButtonInput : TouchButtonInput_Access;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
            nextTouchButtonInput := null;
            gameKeyEvent := null;
            for index in reverse 0 .. (This.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size) - (1) loop
                nextTouchButtonInput := This.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get (index);
                gameKeyEvent := nextTouchButtonInput.getGameKeyEvent;
                This.touchButtonRecognizer.upGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
                This.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt (index);
            end loop;
   end release;

end org.allbinary.input.motion.button.ReleaseHelper_Package;


package body org.allbinary.input.motion.button.MultitouchReleaseHelper_Package is

   procedure Initialize_Fields (This : in out MultitouchReleaseHelper'Class) is
   begin
      null;
   end Initialize_Fields;

    
   procedure Initialize (This : in out MultitouchReleaseHelper'Class; touchButtonRecognizer : TouchButtonRecognizer_Access) is
   begin
            null;
   end Initialize;

   function Create (touchButtonRecognizer : TouchButtonRecognizer_Access) return MultitouchReleaseHelper_Access is
      This : constant MultitouchReleaseHelper_Access := new MultitouchReleaseHelper;
   begin
      Initialize (This.all, touchButtonRecognizer);
      return This;
   end Create;
    
   --  throws Exception
   procedure release (This : in out MultitouchReleaseHelper; touchButtonInput : TouchButtonInput_Access; deviceId : Integer) is
      cancelTouchButtonInput : TouchButtonInput_Access;
      nextTouchButtonInput : TouchButtonInput_Access;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
            cancelTouchButtonInput := CancelTouchButtonInputFactory_Package.getInstance.getCancel (touchButtonInput);
            nextTouchButtonInput := null;
            gameKeyEvent := null;
            for index in reverse 0 .. (This.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size) - (1) loop
                nextTouchButtonInput := This.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get (index);
                if (cancelTouchButtonInput) = (nextTouchButtonInput) then
                    gameKeyEvent := nextTouchButtonInput.getGameKeyEvent;
                    This.touchButtonRecognizer.upGameKeyEventHandler.fireEvent (gameKeyEvent);
                    This.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
                    This.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt (index);
                end if;
            end loop;
   end release;

end org.allbinary.input.motion.button.MultitouchReleaseHelper_Package;


