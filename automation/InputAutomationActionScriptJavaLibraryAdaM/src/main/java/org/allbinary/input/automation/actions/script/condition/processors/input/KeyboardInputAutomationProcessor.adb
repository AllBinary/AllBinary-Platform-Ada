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


with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package is

   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   procedure Initialize_Fields (This : in out KeyboardInputAutomationProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyboardInputAutomationProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeyboardInputAutomationProcessor_Access is
      This : constant KeyboardInputAutomationProcessor_Access := new KeyboardInputAutomationProcessor;
   begin
      KeyboardInputAutomationProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (keyActionScriptInputInterface_Param : access KeyboardActionScriptInputInterface_Package.KeyboardActionScriptInputInterface'Class) is
      keyActionScriptInputInterface : constant KeyboardActionScriptInputInterface_Access := KeyboardActionScriptInputInterface_Access (keyActionScriptInputInterface_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputRobotInterface : InputRobotInterface_Access;
      integer_Id : Integer_Array_Access;
      timeHelper : TimeDelayHelper_Access;
      toLong : Integer;
      index : Integer;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START) & Java_Object'Class (keyActionScriptInputInterface.all).toString, Java_Box (To_Unbounded_String ("KeyInputAutomationProcessor")), commonStrings.PROCESS);
        inputRobotInterface := InputRobotInterface_Access (keyActionScriptInputInterface.getInputRobotInterface);
        integer_Id := keyActionScriptInputInterface.getKeyArray;
        if (keyActionScriptInputInterface.getDelayBetweenKeys) = (0) then
            for index in 0 .. (keyActionScriptInputInterface.getKeyArray'Length) - 1 loop
                if keyActionScriptInputInterface.isPress then
                    inputRobotInterface.keyPress (integer_Id (index));
                end if;
            end loop;
            Java_Sleep (keyActionScriptInputInterface.getTime);
            for index in reverse 0 .. (keyActionScriptInputInterface.getKeyArray'Length) - (1) loop
                if keyActionScriptInputInterface.isRelease then
                    inputRobotInterface.keyRelease (integer_Id (index));
                end if;
            end loop;
        else
            for index in 0 .. (keyActionScriptInputInterface.getKeyArray'Length) - 1 loop
                if keyActionScriptInputInterface.isPress then
                    inputRobotInterface.keyPress (integer_Id (index));
                end if;
                Java_Sleep (keyActionScriptInputInterface.getTime);
                if keyActionScriptInputInterface.isRelease then
                    inputRobotInterface.keyRelease (integer_Id (index));
                end if;
                timeHelper := TimeDelayHelper_Package.Create (keyActionScriptInputInterface.getDelayBetweenKeys);
                toLong := 0;
                while (not (timeHelper.isTimeTNT)) or else ((toLong) > (6000)) loop
                    toLong := toLong + 1;
                    Java_Sleep (50);
                end loop;
            end loop;
        end if;
   end process;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package;


