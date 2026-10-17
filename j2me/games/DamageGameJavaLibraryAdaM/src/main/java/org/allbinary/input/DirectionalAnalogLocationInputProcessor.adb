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


package body org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package is

   procedure Initialize_Fields (This : in out DirectionalAnalogLocationInputProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.gameKeyFactory := GameKeyFactory_Package.getInstance;
      This.leftGameKeyEvent := GameKeyEvent_Package.NONE;
      This.rightGameKeyEvent := GameKeyEvent_Package.NONE;
      This.upGameKeyEvent := GameKeyEvent_Package.NONE;
      This.downGameKeyEvent := GameKeyEvent_Package.NONE;
      This.leftTriggerGameKeyEvent := GameKeyEvent_Package.NONE;
      This.rightTriggerGameKeyEvent := GameKeyEvent_Package.NONE;
   end Initialize_Fields;


   procedure Initialize (This : in out DirectionalAnalogLocationInputProcessor'Class; inputProcessorArray : GameInputProcessor_Access_Array_Access) is
      commonStrings : CommonStrings_Access;
   begin
      AnalogLocationInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.inputProcessorArray := inputProcessorArray;
        begin
            This.leftGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (This'Unchecked_Access, This.gameKeyFactory.LEFT);
            This.rightGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (This'Unchecked_Access, This.gameKeyFactory.RIGHT);
            This.upGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (This'Unchecked_Access, This.gameKeyFactory.UP);
            This.downGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (This'Unchecked_Access, This.gameKeyFactory.DOWN);
            This.leftTriggerGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (This'Unchecked_Access, This.gameKeyFactory.KEY_NUM0);
            This.rightTriggerGameKeyEvent := GameKeyEventFactory_Package.getInstance.getInstanceForInput (This'Unchecked_Access, This.gameKeyFactory.KEY_NUM5);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create (inputProcessorArray : GameInputProcessor_Access_Array_Access) return DirectionalAnalogLocationInputProcessor_Access is
      This : constant DirectionalAnalogLocationInputProcessor_Access := new DirectionalAnalogLocationInputProcessor;
   begin
      DirectionalAnalogLocationInputProcessor_Package.Initialize (This.all, inputProcessorArray);
      return This;
   end Create;

   procedure process (This : in out DirectionalAnalogLocationInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; analogLocationInput : AnalogLocationInput_Access) is
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
            This.logUtil.put (To_Unbounded_String ("Unable to process analog input"), This'Unchecked_Access, commonStrings.PROCESS, e);
                end;
        end;
   end process;

   function getSourceId (This : in out DirectionalAnalogLocationInputProcessor) return Integer is
   begin
        return 0;
   end getSourceId;

end org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package;


