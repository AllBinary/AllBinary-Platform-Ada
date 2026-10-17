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


package body org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package is

   procedure Initialize_Fields (This : in out TestInputAutomationActionWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TestInputAutomationActionWorker'Class; sleep : Integer; inputAutomationActionInterface : InputAutomationActionInterface_Access; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access; motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access) is
   begin
        AbstractInputAutomationWorker_Package.Initialize (This, inputAutomationActionInterface);
        Initialize_Fields (This);
        This.logUtil.putF (To_Unbounded_String ("BasicTestAttackWorder"), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.sleep := sleep;
   end Initialize;

   function Create (sleep : Integer; inputAutomationActionInterface : InputAutomationActionInterface_Access; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access; motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access) return TestInputAutomationActionWorker_Access is
      This : constant TestInputAutomationActionWorker_Access := new TestInputAutomationActionWorker;
   begin
      Initialize (This.all, sleep, inputAutomationActionInterface, imageComparatorConstraintsInterface, motionRectangleConstraintsInterface);
      return This;
   end Create;

   --  throws Exception
   procedure processBetweenWorkers (This : in out TestInputAutomationActionWorker) is
   begin
        Java_Sleep (2000);
   end processBetweenWorkers;

   --  throws Exception
   procedure process (This : in out TestInputAutomationActionWorker) is
      hashtable : ABHashtable_Access;
      set : Set_Access;
      inputTypeNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      inputTypeNameString : Unbounded_String;
      robot : InputRobotInterface_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.PROCESS);
        hashtable := InputRobotFactory_Package.getInstance.get;
        set := hashtable.keySet;
        inputTypeNameArray := set.toArray;
        size := inputTypeNameArray'Length;
        for index in 0 .. (size) - 1 loop
            inputTypeNameString := Unbounded_String (inputTypeNameArray (index));
            robot := InputRobotInterface_Access (hashtable.get (inputTypeNameString));
            if (This.sleep) > (0) then
                Java_Sleep (This.sleep);
            end if;
        end loop;
   end process;

end org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package;


