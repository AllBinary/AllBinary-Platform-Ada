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


package body org.allbinary.math.AngleFactory_Package is

   procedure Initialize_Fields (This : in out AngleFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.TOTAL_ANGLE := 360;
      This.QUARTER_TOTAL_ANGLE := 90;
      This.angleArray := new Angle_Access_Array'(0 .. (Integer (This.TOTAL_ANGLE)) - 1 => null);
      This.NEGATIVE_ONE := Short_Integer (-(1));
      This.NOT_ANGLE := NamedAngle_Package.Create (This.NEGATIVE_ONE, CommonStrings_Package.getInstance.EMPTY);
      
      
      
      
      This.frameUtil := FrameUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AngleFactory_Access is
   begin
        return AngleFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AngleFactory'Class) is
      commonPhoneStrings : CommonPhoneStrings_Access;
      total : Short_Integer;
      index : Integer;
   begin
      Initialize_Fields (This);
        commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
        total := Short_Integer (This.angleArray'Length);
        This.UP := NamedAngle_Package.Create (Short_Integer (0), commonPhoneStrings.UP);
        This.angleArray (0) := This.UP;
        for index in 1 .. (90) - 1 loop
            This.angleArray (index) := Angle_Package.Create (Short_Integer (index));
        end loop;
        This.RIGHT := NamedAngle_Package.Create (Short_Integer (90), commonPhoneStrings.RIGHT);
        This.angleArray (90) := This.RIGHT;
        for index in 91 .. (180) - 1 loop
            This.angleArray (index) := Angle_Package.Create (Short_Integer (index));
        end loop;
        This.DOWN := NamedAngle_Package.Create (Short_Integer (180), commonPhoneStrings.DOWN);
        This.angleArray (180) := This.DOWN;
        for index in 181 .. (270) - 1 loop
            This.angleArray (index) := Angle_Package.Create (Short_Integer (index));
        end loop;
        This.LEFT := NamedAngle_Package.Create (Short_Integer (270), commonPhoneStrings.LEFT);
        This.angleArray (270) := This.LEFT;
        for index in 271 .. (total) - 1 loop
            This.angleArray (index) := Angle_Package.Create (Short_Integer (index));
        end loop;
   end Initialize;

   function Create return AngleFactory_Access is
      This : constant AngleFactory_Access := new AngleFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getAt (This : in out AngleFactory; index : Integer) return Angle_Access is
      adjustedIndex : Integer;
   begin
        adjustedIndex := Integer (This.frameUtil.adjustAngleToFrameAngle (index));
        return This.angleArray (adjustedIndex);
   end getAt;

   function getClosestDirection (This : in out AngleFactory; angle : Integer) return Angle_Access is
   begin
        if ((((angle) >= (315)) and then ((angle) < (360)))) or else ((((angle) >= (0)) and then ((angle) < (45)))) then
            return This.UP;
        elsif ((angle) >= (45)) and then ((angle) < (135)) then
            return This.RIGHT;
        elsif ((angle) >= (135)) and then ((angle) < (225)) then
            return This.DOWN;
        elsif ((angle) >= (225)) and then ((angle) < (315)) then
            return This.LEFT;
        end if;
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getClosestDirection;

   function getGeneralDirection (This : in out AngleFactory) return Angle_Access is
   begin
        return This.NOT_ANGLE;
   end getGeneralDirection;

   procedure main (args : Unbounded_String_Array_Access) is
      stringMaker : StringMaker_Access;
      angleFactory : AngleFactory_Access;
      index : Integer;
   begin
        stringMaker := StringMaker_Package.Create;
        angleFactory := AngleFactory_Package.getInstance;
        for index in 0 .. (360) - 1 loop
            stringMaker.appendint (index).append (CommonSeps_Package.getInstance.FORWARD_SLASH).appendshort (Short_Integer (angleFactory.getClosestDirection (index).getValue)).append (CommonSeps_Package.getInstance.NEW_LINE);
        end loop;
        LogUtil_Package.getInstance.putF (stringMaker.toString, To_Unbounded_String ("main"), To_Unbounded_String ("main"));
   end main;

   procedure getInstance is
      Java_Result : constant AngleFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getAt (This : in out AngleFactory; index : Integer) is
      Java_Result : constant Angle_Access := AngleFactory'Class (This).getAt (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAt;

   procedure getClosestDirection (This : in out AngleFactory; angle : Integer) is
      Java_Result : constant Angle_Access := AngleFactory'Class (This).getClosestDirection (angle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClosestDirection;

   procedure getGeneralDirection (This : in out AngleFactory) is
      Java_Result : constant Angle_Access := AngleFactory'Class (This).getGeneralDirection;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeneralDirection;

begin
   null;
   instance := AngleFactory_Package.Create;

end org.allbinary.math.AngleFactory_Package;


