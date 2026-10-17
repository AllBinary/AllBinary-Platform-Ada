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


package body org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package is

   procedure Initialize_Fields (This : in out MouseInputAutomationProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MouseInputAutomationProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MouseInputAutomationProcessor_Access is
      This : constant MouseInputAutomationProcessor_Access := new MouseInputAutomationProcessor;
   begin
      MouseInputAutomationProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (mouseActionScriptInputInterface_Param : access MouseActionScriptInputInterface_Package.MouseActionScriptInputInterface'Class) is
      mouseActionScriptInputInterface : constant MouseActionScriptInputInterface_Access := MouseActionScriptInputInterface_Access (mouseActionScriptInputInterface_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputRobotInterface : InputRobotInterface_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Start - Processing Mouse Input at: ")).append (mouseActionScriptInputInterface.getPoint.toString).append (To_Unbounded_String (" clicks: ")).appendint (Integer (mouseActionScriptInputInterface.getButtonClicks)).toString, To_Unbounded_String ("MouseInputAutomationProcessor"), commonStrings.PROCESS);
        inputRobotInterface := mouseActionScriptInputInterface.getInputRobotInterface;
        if ((mouseActionScriptInputInterface.getPoint.x) /= (-(1))) and then ((mouseActionScriptInputInterface.getPoint.y) /= (-(1))) then
            inputRobotInterface.mouseMove (mouseActionScriptInputInterface.getPoint);
        end if;
        Java_Sleep (mouseActionScriptInputInterface.getTime);
        if (mouseActionScriptInputInterface.getButtonClicks) /= (0) then
            inputRobotInterface.mousePress (mouseActionScriptInputInterface.getButtonClicks);
            Java_Sleep (mouseActionScriptInputInterface.getTime);
            inputRobotInterface.mouseRelease (mouseActionScriptInputInterface.getButtonClicks);
        end if;
        Java_Sleep (mouseActionScriptInputInterface.getTime);
   end process;

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package;


