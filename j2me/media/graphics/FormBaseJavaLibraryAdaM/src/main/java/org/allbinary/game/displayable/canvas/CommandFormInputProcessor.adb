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


package body org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package is

   procedure Initialize_Fields (This : in out CommandFormInputProcessor'Class) is
   begin
      null;
      This.MOTION_GESTURE_SOURCE_ID := GameKeyEventFactory_Package.getInstance.MOTION_GESTURE_SOURCE_ID;
      This.CLICK_DELAY := 150;
      This.clickTimeHelper := TimeDelayHelper_Package.Create (This.CLICK_DELAY);
      This.DOUBLE_CLICK_DELAY := 1200;
      This.doubleClickTimeHelper := TimeDelayHelper_Package.Create (This.DOUBLE_CLICK_DELAY);
      This.isSingleKeyProcessing := InputFeatureFactory_Package.getInstance.isSingleKeyProcessing;
      
      This.hasPressed := False;
      This.PROCESS_COMMAND := To_Unbounded_String ("processCommand");
      This.NAME_LABEL := To_Unbounded_String (" ScrollSelectionForm: ");
   end Initialize_Fields;


   procedure Initialize (This : in out CommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is
      gameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : constant MyCanvas_Access := MyCanvas_Access (gameCanvas_Param);
      form : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (form_Param);
   begin
        BasicMenuInputProcessor_Package.Initialize (This, gameKeyEventList, playerInputId, gameCanvas);
        Initialize_Fields (This);
        This.form := form;
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return CommandFormInputProcessor_Access is
      This : constant CommandFormInputProcessor_Access := new CommandFormInputProcessor;
   begin
      CommandFormInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, playerInputId, gameCanvas_Param, form_Param);
      return This;
   end Create;

   --  throws Exception
   function processInput (This : in out CommandFormInputProcessor; key : Integer) return Integer is
   begin
        if ((((key) = (Canvas_Package.LEFT)) or else ((key) = (Canvas_Package.RIGHT))) or else ((key) = (Canvas_Package.UP))) or else ((key) = (Canvas_Package.DOWN)) then
            PrimaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
            This.form.processInputKey (key);
            return 1;
        elsif (key) = (Canvas_Package.FIRE) then
            PrimaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
            return CommandFormInputProcessor'Class (This).processCommand;
        end if;
        return 0;
   end processInput;

   function processCommand (This : in out CommandFormInputProcessor) return Integer is
      commandCurrentSelectionForm : CommandCurrentSelectionForm_Access;
      command : Command_Access;
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
   begin
        commandCurrentSelectionForm := CommandCurrentSelectionForm_Access (This.form);
        command := commandCurrentSelectionForm.getSelectedCommand;
        This.logUtil.putF (command.toString, CommandFormInputProcessor_Access'(This'Unchecked_Access), This.PROCESS_COMMAND);
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        if ((SWTUtil_Package.isSWT) and then (features.isFeature (openGLFeatureFactory.OPENGL))) and then ((command) /= (GameCommandsFactory_Package.getInstance.EXIT_COMMAND)) then
            CommandRunnable_Package.Create (CommandFormInputProcessor_Access'(This'Unchecked_Access), command).run;
        else
            PrimaryThreadPool_Package.getInstance.runTask (CommandRunnable_Package.Create (CommandFormInputProcessor_Access'(This'Unchecked_Access), command));
        end if;
        if (command) = (GameCommandsFactory_Package.getInstance.QUIT_COMMAND) then
            return -(1);
        else
            return 1;
        end if;
   end processCommand;

   --  throws Exception
   function processInputList (This : in out CommandFormInputProcessor) return Integer is
      motionInputsIndex : Integer;
      list : BasicArrayList_Access;
      size : Integer;
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        begin
            motionInputsIndex := CommandFormInputProcessor'Class (This).processMotionInputs;
            list := CommandFormInputProcessor'Class (This).getGameKeyEventList;
            size := list.size;
            key := 0;
            gameKeyEvent := null;
            for index in 0 .. (size) - 1 loop
                gameKeyEvent := GameKeyEvent_Access (list.objectArray (index));
                key := gameKeyEvent.getKey;
                if (gameKeyEvent.getSourceId) /= (This.MOTION_GESTURE_SOURCE_ID) then
                    if (CommandFormInputProcessor'Class (This).processInput (key)) = (1) then
                        exit;
                    end if;
                end if;
            end loop;
            CommandFormInputProcessor'Class (This).clear;
            if ((size) > (0)) or else ((motionInputsIndex) >= (0)) then
                return 1;
            else
                return -(1);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CommandFormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.PROCESS_INPUT, e);
            return -(1);
                end;
        end;
   end processInputList;

   --  throws Exception
   function processMotionInputs (This : in out CommandFormInputProcessor) return Integer is
      lastIndex : Integer;
      motionGestureEvent : MotionGestureEvent_Access;
   begin
        lastIndex := (This.motionGestureEventList.size) - (1);
        if (lastIndex) >= (0) then
            motionGestureEvent := MotionGestureEvent_Access (This.motionGestureEventList.objectArray (lastIndex));
            CommandFormInputProcessor'Class (This).processMotionInput (motionGestureEvent);
        end if;
        This.motionGestureEventList.clear;
        return lastIndex;
   end processMotionInputs;

   --  throws Exception
   procedure processMotionInput (This : in out CommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      motionGestureInput : MotionGestureInput_Access;
      point : GPoint_Access;
      index : Integer;
   begin
        touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
        motionGestureInput := motionGestureEvent.getMotionGesture;
        if (motionGestureInput) = (touchMotionGestureFactory.RELEASED) then
            point := motionGestureEvent.getCurrentPoint;
            if This.form.isInForm (point) then
                index := This.form.getSelectedIndexForPoint (point);
                if (index) /= (-(1)) then
                    PrimaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
                    if (index) = (This.form.getSelectedIndex) then
                        if This.clickTimeHelper.isTimeTNT then
                            CommandFormInputProcessor'Class (This).processCommand;
                        end if;
                    else
                        This.form.setSelectedIndex (index);
                    end if;
                else
                    null;
                end if;
            end if;
            if This.hasPressed then
                if not (This.doubleClickTimeHelper.isTimeTNT) then
                    This.logUtil.putF (To_Unbounded_String ("Double Press"), CommandFormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.PROCESS_MOTION_INPUT);
                    CommandFormInputProcessor'Class (This).processCommand;
                end if;
                This.doubleClickTimeHelper.delay_Id := This.DOUBLE_CLICK_DELAY;
                This.doubleClickTimeHelper.setStartTimeTNT;
            end if;
            This.hasPressed := False;
        elsif (motionGestureInput) = (touchMotionGestureFactory.PRESSED) then
            This.doubleClickTimeHelper.delay_Id := 0;
            This.hasPressed := True;
        end if;
   end processMotionInput;

   function toString (This : in out CommandFormInputProcessor) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (BasicMenuInputProcessor (This).toString).append (This.NAME_LABEL).append (This.form.toString).toString;
   end toString;

   procedure processInput (This : in out CommandFormInputProcessor; key : Integer) is
      Java_Result : constant Integer := CommandFormInputProcessor'Class (This).processInput (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processInput;

end org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;


