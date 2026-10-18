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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package body org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package is

   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   procedure Initialize_Fields (This : in out ScreenScavangerRobot'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ScreenScavangerRobot'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ScreenScavangerRobot_Access is
      This : constant ScreenScavangerRobot_Access := new ScreenScavangerRobot;
   begin
      ScreenScavangerRobot_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getScreenAsBufferedImages (This : in out ScreenScavangerRobot) return BufferedImage_Access_Array_Access is
      dimScreenSize : Dimension_Access;
      rectScreenSize : Rectangle_Access;
      robotHashtable : ABHashtable_Access;
      bufferedImageArray : BufferedImage_Access_Array_Access;
      index : Integer;
      inputRobotInterface : InputRobotInterface_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, ScreenScavangerRobot_Access'(This'Unchecked_Access), To_Unbounded_String ("getScreenAsBufferedImages"));
        dimScreenSize := Toolkit_Package.getDefaultToolkit.getScreenSize;
        rectScreenSize := Rectangle_Package.Create (dimScreenSize);
        robotHashtable := InputRobotFactory_Package.getInstance.get;
        bufferedImageArray := new BufferedImage_Access_Array'(0 .. (1) - 1 => null);
        index := 0;
        inputRobotInterface := InputRobotInterface_Access (robotHashtable.get (To_Unbounded_String ("Java Robot")));
        bufferedImageArray (index) := inputRobotInterface.createScreenCapture (rectScreenSize);
        This.logUtil.putF (To_Unbounded_String ("Finish"), ScreenScavangerRobot_Access'(This'Unchecked_Access), To_Unbounded_String ("getScreenAsBufferedImages"));
        return bufferedImageArray;
   end getScreenAsBufferedImages;

end org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;


