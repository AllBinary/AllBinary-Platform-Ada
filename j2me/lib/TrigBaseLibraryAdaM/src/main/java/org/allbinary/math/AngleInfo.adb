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


package body org.allbinary.math.AngleInfo_Package is

   procedure Initialize_Fields (This : in out AngleInfo'Class) is
   begin
      null;
      
      This.angle_Case := 0;
      This.frameUtil := FrameUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance (angleIncrement : Short_Integer) return AngleInfo_Access is
   begin
        return AngleInfo_Package.Create (AngleIncrementInfoFactory_Package.getInstance.getAt (angleIncrement));
   end getInstance;

   procedure Initialize (This : in out AngleInfo'Class; angleIncrementInfo_Param : access AngleIncrementInfo_Package.AngleIncrementInfo'Class) is
      angleIncrementInfo : constant AngleIncrementInfo_Access := AngleIncrementInfo_Access (angleIncrementInfo_Param);
   begin
      Initialize_Fields (This);
        This.angleIncrementInfo := angleIncrementInfo;
   end Initialize;

   function Create (angleIncrementInfo_Param : access AngleIncrementInfo_Package.AngleIncrementInfo'Class) return AngleInfo_Access is
      This : constant AngleInfo_Access := new AngleInfo;
   begin
      AngleInfo_Package.Initialize (This.all, angleIncrementInfo_Param);
      return This;
   end Create;

   procedure adjustAngle (This : in out AngleInfo; frame : Integer) is
      newAngle : Integer;
   begin
        newAngle := ((This.angleIncrementInfo.getAngleIncrement) * (frame)) - (90);
        AngleInfo'Class (This).setAngle (Short_Integer (This.frameUtil.adjustAngleToFrameAngle (newAngle)));
   end adjustAngle;

   function getAngle (This : in out AngleInfo) return Short_Integer is
   begin
        return This.angle_Case;
   end getAngle;

   procedure setAngle (This : in out AngleInfo; angle_Case : Short_Integer) is
   begin
        This.angle_Case := angle_Case;
   end setAngle;

   function getAngleIncrementInfo (This : in out AngleInfo) return AngleIncrementInfo_Access is
   begin
        return This.angleIncrementInfo;
   end getAngleIncrementInfo;

   function toString (This : in out AngleInfo) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (AngleInfo_Package.ANGLE);
        stringBuffer.appendshort (This.angle_Case);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (StringUtil_Package.getInstance.toString (AngleInfo'Class (This).getAngleIncrementInfo));
        return stringBuffer.toString;
   end toString;

   procedure getInstance (angleIncrement : Short_Integer) is
      Java_Result : constant AngleInfo_Access := getInstance (angleIncrement);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   ANGLE := To_Unbounded_String ("Angle: ");

end org.allbinary.math.AngleInfo_Package;


