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


with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package; use org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package_References;
with org.allbinary.game.input.analog.AnalogLocationInput_Package; use org.allbinary.game.input.analog.AnalogLocationInput_Package;
with org.allbinary.game.input.analog.AnalogLocationInput_Package_References;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package is

   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   function "=" (Left, Right : GameInputProcessor_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   function "=" (Left, Right : GameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameKeyFactory_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access;
   function "=" (Left, Right : GameKeyFactory_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array;
   function "=" (Left, Right : GameKeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype AnalogLocationInput_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access;
   function "=" (Left, Right : AnalogLocationInput_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array;
   function "=" (Left, Right : AnalogLocationInput_Access_Array) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
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
   procedure Initialize_Fields (This : in out DirectionalAnalogLocationInputProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.gameKeyFactory := GameKeyFactory_Package.getInstance;
      This.leftGameKeyEvent := GameKeyEvent_Access (GameKeyEvent_Package.NONE);
      This.rightGameKeyEvent := GameKeyEvent_Access (GameKeyEvent_Package.NONE);
      This.upGameKeyEvent := GameKeyEvent_Access (GameKeyEvent_Package.NONE);
      This.downGameKeyEvent := GameKeyEvent_Access (GameKeyEvent_Package.NONE);
      This.leftTriggerGameKeyEvent := GameKeyEvent_Access (GameKeyEvent_Package.NONE);
      This.rightTriggerGameKeyEvent := GameKeyEvent_Access (GameKeyEvent_Package.NONE);
   end Initialize_Fields;


   procedure Initialize (This : in out DirectionalAnalogLocationInputProcessor'Class; inputProcessorArray : GameInputProcessor_Access_Array_Access) is
      commonStrings : CommonStrings_Access;
   begin
      AnalogLocationInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.inputProcessorArray := inputProcessorArray;
        begin
            This.leftGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (DirectionalAnalogLocationInputProcessor_Access'(This'Unchecked_Access), This.gameKeyFactory.LEFT);
            This.rightGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (DirectionalAnalogLocationInputProcessor_Access'(This'Unchecked_Access), This.gameKeyFactory.RIGHT);
            This.upGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (DirectionalAnalogLocationInputProcessor_Access'(This'Unchecked_Access), This.gameKeyFactory.UP);
            This.downGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (DirectionalAnalogLocationInputProcessor_Access'(This'Unchecked_Access), This.gameKeyFactory.DOWN);
            This.leftTriggerGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (DirectionalAnalogLocationInputProcessor_Access'(This'Unchecked_Access), This.gameKeyFactory.KEY_NUM0);
            This.rightTriggerGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (DirectionalAnalogLocationInputProcessor_Access'(This'Unchecked_Access), This.gameKeyFactory.KEY_NUM5);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, DirectionalAnalogLocationInputProcessor_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create (inputProcessorArray : GameInputProcessor_Access_Array_Access) return DirectionalAnalogLocationInputProcessor_Access is
      This : constant DirectionalAnalogLocationInputProcessor_Access := new DirectionalAnalogLocationInputProcessor;
   begin
      DirectionalAnalogLocationInputProcessor_Package.Initialize (This.all, inputProcessorArray);
      return This;
   end Create;

   procedure process (This : in out DirectionalAnalogLocationInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; analogLocationInput_Param : access AnalogLocationInput_Package.AnalogLocationInput'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      analogLocationInput : constant AnalogLocationInput_Access := AnalogLocationInput_Access (analogLocationInput_Param);
      customGPoint : CustomGPoint_Access;
      x : Integer;
      y : Integer;
      leftTrigger : Integer;
      rightTrigger : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            customGPoint := null;
            customGPoint := analogLocationInput.getCustomGPoint;
            x := customGPoint.getX;
            y := customGPoint.getY;
            leftTrigger := analogLocationInput.getLeftTrigger;
            rightTrigger := analogLocationInput.getRightTrigger;
            if (x) < (0) then
                This.inputProcessorArray (This.leftGameKeyEvent.getKey).processAnalog (allbinaryLayerManager, This.leftGameKeyEvent, x);
            elsif (x) > (0) then
                This.inputProcessorArray (This.rightGameKeyEvent.getKey).processAnalog (allbinaryLayerManager, This.rightGameKeyEvent, x);
            end if;
            if (y) < (0) then
                This.inputProcessorArray (This.downGameKeyEvent.getKey).processAnalog (allbinaryLayerManager, This.downGameKeyEvent, y);
            elsif (y) > (0) then
                This.inputProcessorArray (This.upGameKeyEvent.getKey).processAnalog (allbinaryLayerManager, This.upGameKeyEvent, y);
            end if;
            if (leftTrigger) > (0) then
                This.inputProcessorArray (This.leftTriggerGameKeyEvent.getKey).processAnalog (allbinaryLayerManager, This.leftTriggerGameKeyEvent, leftTrigger);
            end if;
            if (rightTrigger) > (0) then
                This.inputProcessorArray (This.rightTriggerGameKeyEvent.getKey).processAnalog (allbinaryLayerManager, This.rightTriggerGameKeyEvent, rightTrigger);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (To_Unbounded_String ("Unable to process analog input"), DirectionalAnalogLocationInputProcessor_Access'(This'Unchecked_Access), commonStrings.PROCESS, e);
                end;
        end;
   end process;

   function getSourceId (This : in out DirectionalAnalogLocationInputProcessor) return Integer is
   begin
        return 0;
   end getSourceId;

end org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package;


