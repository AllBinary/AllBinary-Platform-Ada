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


package body org.allbinary.input.automation.AbstractInputRobot_Package is

   procedure Initialize_Fields (This : in out AbstractInputRobot'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.helpSet := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbstractInputRobot'Class; helpSet_Param : access HelpSet_Package.HelpSet'Class) is
      helpSet : constant HelpSet_Access := HelpSet_Access (helpSet_Param);
   begin
      Initialize_Fields (This);
        This.setHelpSet (helpSet);
   end Initialize;

   function Create (helpSet_Param : access HelpSet_Package.HelpSet'Class) return AbstractInputRobot_Access is
      This : constant AbstractInputRobot_Access := new AbstractInputRobot;
   begin
      AbstractInputRobot_Package.Initialize (This.all, helpSet_Param);
      return This;
   end Create;

   function getHelpSet (This : in out AbstractInputRobot) return HelpSet_Access is
   begin
        return This.helpSet;
   end getHelpSet;

   procedure mouseMove (This : in out AbstractInputRobot; point_Param : access Point_Package.Point'Class) is
      point : constant Point_Access := Point_Access (point_Param);
   begin
        This.mouseMove (point.x, point.y);
        This.logUtil.putF (To_Unbounded_String ("Moved Mouse To: x: ") & Java_Image (point.x) & To_Unbounded_String (" y: ") & Java_Image (point.y), AbstractInputRobot_Access'(This'Unchecked_Access), To_Unbounded_String ("moveMouse"));
   end mouseMove;

   --  throws Exception
   procedure mouseMoveToTarget (This : in out AbstractInputRobot; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      point : Point_Access;
   begin
        point := PointHelper_Package.getCenterPoint (rectangle);
        This.mouseMove ((point.x) + (x), (point.y) + (y));
        This.logUtil.putF (To_Unbounded_String ("Moved Mouse To: x: ") & Java_Image (point.x) & To_Unbounded_String (" y: ") & Java_Image (point.y) & To_Unbounded_String (" in the middle of: ") & Java_Image (rectangle), AbstractInputRobot_Access'(This'Unchecked_Access), To_Unbounded_String ("moveMouseToTarget"));
   end mouseMoveToTarget;

   --  throws Exception
   procedure mouseMoveToTarget (This : in out AbstractInputRobot; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        This.mouseMoveToTarget (rectangle, 0, 0);
   end mouseMoveToTarget;

   procedure mouseMove (This : in out AbstractInputRobot; x : Integer; y : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end mouseMove;

   procedure setHelpSet (This : in out AbstractInputRobot; helpSet_Param : access HelpSet_Package.HelpSet'Class) is
      helpSet : constant HelpSet_Access := HelpSet_Access (helpSet_Param);
   begin
        This.helpSet := helpSet;
   end setHelpSet;

end org.allbinary.input.automation.AbstractInputRobot_Package;


