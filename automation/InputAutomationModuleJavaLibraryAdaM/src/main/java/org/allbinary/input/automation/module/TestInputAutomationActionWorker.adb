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


with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package; use org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package; use org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;

package body org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package is

   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
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
   subtype ImageComparatorConstraintsInterface_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   subtype ImageComparatorConstraintsInterface_Access_Array is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   subtype ImageComparatorConstraintsInterface_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   subtype ImageComparatorConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   subtype ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype InputAutomationActionInterface_Access is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access;
   function "=" (Left, Right : InputAutomationActionInterface_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References."=";
   subtype InputAutomationActionInterface_Access_Array is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access_Array;
   function "=" (Left, Right : InputAutomationActionInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References."=";
   subtype InputAutomationActionInterface_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access_Array_Access;
   function "=" (Left, Right : InputAutomationActionInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References."=";
   subtype InputAutomationActionInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationActionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References."=";
   subtype InputAutomationActionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationActionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References."=";
   procedure Initialize_Fields (This : in out TestInputAutomationActionWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TestInputAutomationActionWorker'Class; sleep : Integer; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) is
      inputAutomationActionInterface : constant InputAutomationActionInterface_Access := InputAutomationActionInterface_Access (inputAutomationActionInterface_Param);
      imageComparatorConstraintsInterface : constant ImageComparatorConstraintsInterface_Access := ImageComparatorConstraintsInterface_Access (imageComparatorConstraintsInterface_Param);
      motionRectangleConstraintsInterface : constant MotionRectangleConstraintsInterface_Access := MotionRectangleConstraintsInterface_Access (motionRectangleConstraintsInterface_Param);
   begin
        AbstractInputAutomationWorker_Package.Initialize (This, inputAutomationActionInterface);
        Initialize_Fields (This);
        This.logUtil.putF (To_Unbounded_String ("BasicTestAttackWorder"), TestInputAutomationActionWorker_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.sleep := sleep;
   end Initialize;

   function Create (sleep : Integer; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) return TestInputAutomationActionWorker_Access is
      This : constant TestInputAutomationActionWorker_Access := new TestInputAutomationActionWorker;
   begin
      TestInputAutomationActionWorker_Package.Initialize (This.all, sleep, inputAutomationActionInterface_Param, imageComparatorConstraintsInterface_Param, motionRectangleConstraintsInterface_Param);
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
      set : Java_Object_Access;
      inputTypeNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      inputTypeNameString : Unbounded_String;
      robot : InputRobotInterface_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, TestInputAutomationActionWorker_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        hashtable := InputRobotFactory_Package.getInstance.get;
        set := hashtable.keySet;
        inputTypeNameArray := set.toArray;
        size := inputTypeNameArray'Length;
        for index in 0 .. (size) - 1 loop
            inputTypeNameString := Java_Unbox (inputTypeNameArray (index));
            robot := InputRobotInterface_Access (hashtable.get (Java_Box (inputTypeNameString)));
            if (This.sleep) > (0) then
                Java_Sleep (This.sleep);
            end if;
        end loop;
   end process;

end org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package;


