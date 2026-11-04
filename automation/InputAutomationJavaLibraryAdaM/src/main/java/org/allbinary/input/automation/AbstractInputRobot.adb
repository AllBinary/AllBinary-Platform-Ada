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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.input.automation.Point_Package; use org.allbinary.input.automation.Point_Package;
with org.allbinary.input.automation.Point_Package_References;
with org.allbinary.input.automation.PointHelper_Package; use org.allbinary.input.automation.PointHelper_Package;
with org.allbinary.input.automation.Rectangle_Package; use org.allbinary.input.automation.Rectangle_Package;
with org.allbinary.input.automation.Rectangle_Package_References;
with org.allbinary.input.automation.PointHelper_Package;

package body org.allbinary.input.automation.AbstractInputRobot_Package is

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
   subtype Point_Access is org.allbinary.input.automation.Point_Package_References.Point_Access;
   function "=" (Left, Right : Point_Access) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Point_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array;
   function "=" (Left, Right : Point_Access_Array) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Point_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access;
   function "=" (Left, Right : Point_Access_Array_Access) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array;
   function "=" (Left, Right : Point_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Point_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Rectangle_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.input.automation.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.input.automation.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.input.automation.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.Rectangle_Package_References."=";
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
        AbstractInputRobot'Class (This).setHelpSet (helpSet);
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
        AbstractInputRobot'Class (This).mouseMove (point.x, point.y);
        This.logUtil.putF (To_Unbounded_String ("Moved Mouse To: x: ") & Java_Image (point.x) & To_Unbounded_String (" y: ") & Java_Image (point.y), AbstractInputRobot_Access'(This'Unchecked_Access), To_Unbounded_String ("moveMouse"));
   end mouseMove;

   --  throws Exception
   procedure mouseMoveToTarget (This : in out AbstractInputRobot; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      point : Point_Access;
   begin
        point := PointHelper_Package.getCenterPoint (rectangle);
        AbstractInputRobot'Class (This).mouseMove ((point.x) + (x), (point.y) + (y));
        This.logUtil.putF (To_Unbounded_String ("Moved Mouse To: x: ") & Java_Image (point.x) & To_Unbounded_String (" y: ") & Java_Image (point.y) & To_Unbounded_String (" in the middle of: ") & Java_Image (rectangle), AbstractInputRobot_Access'(This'Unchecked_Access), To_Unbounded_String ("moveMouseToTarget"));
   end mouseMoveToTarget;

   --  throws Exception
   procedure mouseMoveToTarget (This : in out AbstractInputRobot; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        AbstractInputRobot'Class (This).mouseMoveToTarget (rectangle, 0, 0);
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


