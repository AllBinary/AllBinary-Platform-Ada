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


package body org.allbinary.input.automation.robot.NullInputRobot_Package is

   procedure Initialize_Fields (This : in out NullInputRobot'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NullInputRobot'Class) is
   begin
        AbstractInputRobot_Package.Initialize (This, null);
        Initialize_Fields (This);
   end Initialize;

   function Create return NullInputRobot_Access is
      This : constant NullInputRobot_Access := new NullInputRobot;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getName (This : in out NullInputRobot) return Unbounded_String is
   begin
        return NullInputRobot_Package.NAME;
   end getName;

   function getHelpSet (This : in out NullInputRobot) return HelpSet_Access is
   begin
        return null;
   end getHelpSet;

   function getMousePoint (This : in out NullInputRobot) return Point_Access is
   begin
        return PointFactory_Package.getInstance (0, 0);
   end getMousePoint;

   procedure keyPress (This : in out NullInputRobot; keycode : Integer) is
   begin
        This.logUtil.putF (To_Unbounded_String ("KeyCode: ") & Java_Image (keycode), This'Unchecked_Access, To_Unbounded_String ("keyPress"));
   end keyPress;

   procedure keyRelease (This : in out NullInputRobot; keycode : Integer) is
   begin
        This.logUtil.putF (To_Unbounded_String ("KeyCode: ") & Java_Image (keycode), This'Unchecked_Access, To_Unbounded_String ("keyRelease"));
   end keyRelease;

   procedure mouseMove (This : in out NullInputRobot; x : Integer; y : Integer) is
   begin
        This.logUtil.putF (To_Unbounded_String ("X: ") & Java_Image (x) & To_Unbounded_String (" Y: ") & Java_Image (y), This'Unchecked_Access, To_Unbounded_String ("mouseMove"));
   end mouseMove;

   procedure mousePress (This : in out NullInputRobot; buttons : Integer) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Buttons: ") & Java_Image (buttons), This'Unchecked_Access, To_Unbounded_String ("mousePress"));
   end mousePress;

   procedure mouseRelease (This : in out NullInputRobot; buttons : Integer) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Buttons: ") & Java_Image (buttons), This'Unchecked_Access, To_Unbounded_String ("mouseRelease"));
   end mouseRelease;

   function createScreenCapture (This : in out NullInputRobot; screenRect : Rectangle_Access) return BufferedImage_Access is
   begin
        return null;
   end createScreenCapture;

   procedure delay_Id (This : in out NullInputRobot; ms : Integer) is
   begin
        null;
   end delay_Id;

   function getAutoDelay (This : in out NullInputRobot) return Integer is
   begin
        return -(1);
   end getAutoDelay;

   function getPixelColor (This : in out NullInputRobot; x : Integer; y : Integer) return Color_Access is
   begin
        return null;
   end getPixelColor;

   function isAutoWaitForIdle (This : in out NullInputRobot) return Boolean is
   begin
        return False;
   end isAutoWaitForIdle;

   procedure mouseWheel (This : in out NullInputRobot; wheelAmt : Integer) is
   begin
        null;
   end mouseWheel;

   procedure setAutoDelay (This : in out NullInputRobot; ms : Integer) is
   begin
        null;
   end setAutoDelay;

   procedure setAutoWaitForIdle (This : in out NullInputRobot; isOn : Boolean) is
   begin
        null;
   end setAutoWaitForIdle;

   function toString (This : in out NullInputRobot) return Unbounded_String is
   begin
        return To_Unbounded_String ("DirectXWindowsInputRobot");
   end toString;

   procedure waitForIdle (This : in out NullInputRobot) is
   begin
        null;
   end waitForIdle;

   procedure getName (This : in out NullInputRobot) is
      Java_Result : constant Unbounded_String := NullInputRobot'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getHelpSet (This : in out NullInputRobot) is
      Java_Result : constant HelpSet_Access := NullInputRobot'Class (This).getHelpSet;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHelpSet;

   procedure getMousePoint (This : in out NullInputRobot) is
      Java_Result : constant Point_Access := NullInputRobot'Class (This).getMousePoint;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMousePoint;

   procedure createScreenCapture (This : in out NullInputRobot; screenRect : Rectangle_Access) is
      Java_Result : constant BufferedImage_Access := NullInputRobot'Class (This).createScreenCapture (screenRect);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createScreenCapture;

   procedure getAutoDelay (This : in out NullInputRobot) is
      Java_Result : constant Integer := NullInputRobot'Class (This).getAutoDelay;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAutoDelay;

   procedure getPixelColor (This : in out NullInputRobot; x : Integer; y : Integer) is
      Java_Result : constant Color_Access := NullInputRobot'Class (This).getPixelColor (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPixelColor;

   procedure isAutoWaitForIdle (This : in out NullInputRobot) is
      Java_Result : constant Boolean := NullInputRobot'Class (This).isAutoWaitForIdle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAutoWaitForIdle;

   procedure toString (This : in out NullInputRobot) is
      Java_Result : constant Unbounded_String := NullInputRobot'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   LIBRARY_NAME := To_Unbounded_String ("null");
   NAME := To_Unbounded_String ("NULL");

end org.allbinary.input.automation.robot.NullInputRobot_Package;


