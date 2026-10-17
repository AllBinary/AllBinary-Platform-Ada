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


package body org.allbinary.input.automation.robot.InputRobot_Package is

   procedure Initialize_Fields (This : in out InputRobot'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InputRobot'Class; graphicsDevice_Param : access GraphicsDevice'Class) is
      graphicsDevice : GraphicsDevice_Access := GraphicsDevice_Access (graphicsDevice_Param);
   begin
      Initialize_Fields (This);
        This.robot := Robot_Package.Create (graphicsDevice);
   end Initialize;

   function Create (graphicsDevice_Param : access GraphicsDevice'Class) return InputRobot_Access is
      This : constant InputRobot_Access := new InputRobot;
   begin
      InputRobot_Package.Initialize (This.all, graphicsDevice_Param);
      return This;
   end Create;

   function getName (This : in out InputRobot) return Unbounded_String is
   begin
        return InputRobot_Package.NAME;
   end getName;

   function getHelpSet (This : in out InputRobot) return HelpSet_Access is
   begin
        return null;
   end getHelpSet;

   function getMousePoint (This : in out InputRobot) return Point_Access is
      point : Point_Access;
   begin
        point := MouseInfo_Package.getPointerInfo.getLocation;
        return point;
   end getMousePoint;

   --  throws Exception
   procedure mouseMoveToTarget (This : in out InputRobot; rectangle_Param : access Rectangle'Class; x : Integer; y : Integer) is
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
      point : Point_Access;
      message : Unbounded_String;
   begin
        point := PointHelper_Package.getCenterPoint (rectangle);
        This.robot.mouseMove ((point.x) + (x), (point.y) + (y));
        message := StringMaker_Package.Create.append (To_Unbounded_String ("Moved Mouse To: x: ")).appendint (Integer (point.x)).append (To_Unbounded_String (" y: ")).appendint (Integer (point.y)).append (To_Unbounded_String (" in the middle of: ")).append (StringUtil_Package.getInstance.toString (rectangle)).toString;
        This.logUtil.putF (message, InputRobot_Access'(This'Unchecked_Access), To_Unbounded_String ("moveMouseToTarget"));
   end mouseMoveToTarget;

   procedure mouseMove (This : in out InputRobot; point_Param : access Point'Class) is
      point : Point_Access := Point_Access (point_Param);
   begin
        This.mouseMove (point.x, point.y);
   end mouseMove;

   procedure mouseMove (This : in out InputRobot; x : Integer; y : Integer) is
      message : Unbounded_String;
   begin
        This.robot.mouseMove (x, y);
        message := StringMaker_Package.Create.append (To_Unbounded_String ("Moved Mouse To: x: ")).appendint (x).append (To_Unbounded_String (" y: ")).appendint (y).toString;
        This.logUtil.putF (message, InputRobot_Access'(This'Unchecked_Access), To_Unbounded_String ("moveMouse"));
   end mouseMove;

   --  throws Exception
   procedure mouseMoveToTarget (This : in out InputRobot; rectangle_Param : access Rectangle'Class) is
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        This.mouseMoveToTarget (rectangle, 0, 0);
   end mouseMoveToTarget;

   function createScreenCapture (This : in out InputRobot; screenRect_Param : access Rectangle'Class) return BufferedImage_Access is
      screenRect : Rectangle_Access := Rectangle_Access (screenRect_Param);
   begin
        return This.robot.createScreenCapture (screenRect);
   end createScreenCapture;

   procedure delay_Id (This : in out InputRobot; ms : Integer) is
   begin
        This.robot.delay_Id (ms);
   end delay_Id;

   function getAutoDelay (This : in out InputRobot) return Integer is
   begin
        return This.robot.getAutoDelay;
   end getAutoDelay;

   function getPixelColor (This : in out InputRobot; x : Integer; y : Integer) return Color_Access is
   begin
        return This.robot.getPixelColor (x, y);
   end getPixelColor;

   function isAutoWaitForIdle (This : in out InputRobot) return Boolean is
   begin
        return This.robot.isAutoWaitForIdle;
   end isAutoWaitForIdle;

   procedure keyPress (This : in out InputRobot; keycode : Integer) is
   begin
        This.robot.keyPress (keycode);
   end keyPress;

   procedure keyRelease (This : in out InputRobot; keycode : Integer) is
   begin
        This.robot.keyRelease (keycode);
   end keyRelease;

   procedure mouseMove (This : in out InputRobot; x : Integer; y : Integer) is
   begin
        This.robot.mouseMove (x, y);
   end mouseMove;

   procedure mousePress (This : in out InputRobot; buttons : Integer) is
   begin
        This.robot.mousePress (buttons);
   end mousePress;

   procedure mouseRelease (This : in out InputRobot; buttons : Integer) is
   begin
        This.robot.mouseRelease (buttons);
   end mouseRelease;

   procedure mouseWheel (This : in out InputRobot; wheelAmt : Integer) is
   begin
        This.robot.mouseWheel (wheelAmt);
   end mouseWheel;

   procedure setAutoDelay (This : in out InputRobot; ms : Integer) is
   begin
        This.robot.setAutoDelay (ms);
   end setAutoDelay;

   procedure setAutoWaitForIdle (This : in out InputRobot; isOn : Boolean) is
   begin
        This.robot.setAutoWaitForIdle (isOn);
   end setAutoWaitForIdle;

   function toString (This : in out InputRobot) return Unbounded_String is
   begin
        return This.robot.toString;
   end toString;

   procedure waitForIdle (This : in out InputRobot) is
   begin
        This.robot.waitForIdle;
   end waitForIdle;

   procedure on (This : in out InputRobot) is
   begin
        null;
   end on;

   procedure off (This : in out InputRobot) is
   begin
        null;
   end off;

   procedure createScreenCapture (This : in out InputRobot; screenRect_Param : access Rectangle'Class) is
      Java_Result : constant BufferedImage_Access := InputRobot'Class (This).createScreenCapture (screenRect_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createScreenCapture;

   procedure getPixelColor (This : in out InputRobot; x : Integer; y : Integer) is
      Java_Result : constant Color_Access := InputRobot'Class (This).getPixelColor (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPixelColor;

begin
   null;
   NAME := To_Unbounded_String ("Java Robot");

end org.allbinary.input.automation.robot.InputRobot_Package;


