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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;

package body org.allbinary.math.AngleIncrementInfo_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   procedure Initialize_Fields (This : in out AngleIncrementInfo'Class) is
   begin
      null;
      
      
      
      
      
      This.frameUtil := FrameUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AngleIncrementInfo'Class; angleIncrement : Short_Integer) is
      angleFactory : AngleFactory_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
   begin
      Initialize_Fields (This);
        This.angleIncrement := angleIncrement;
        angleFactory := AngleFactory_Package.getInstance;
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        This.DOWN_FRAME := smallIntegerSingletonFactory.getAt ((angleFactory.DOWN.getValue) / (This.angleIncrement));
        This.UP_FRAME := smallIntegerSingletonFactory.getAt (Integer (angleFactory.UP.getValue));
        This.LEFT_FRAME := smallIntegerSingletonFactory.getAt ((angleFactory.LEFT.getValue) / (This.angleIncrement));
        This.RIGHT_FRAME := smallIntegerSingletonFactory.getAt ((angleFactory.RIGHT.getValue) / (This.angleIncrement));
   end Initialize;

   function Create (angleIncrement : Short_Integer) return AngleIncrementInfo_Access is
      This : constant AngleIncrementInfo_Access := new AngleIncrementInfo;
   begin
      AngleIncrementInfo_Package.Initialize (This.all, angleIncrement);
      return This;
   end Create;

   function getFrameAngle (This : in out AngleIncrementInfo; frame : Integer) return Integer is
   begin
        return This.frameUtil.getFrameAngle (frame, Integer (This.angleIncrement));
   end getFrameAngle;

   function getAngleIncrement (This : in out AngleIncrementInfo) return Short_Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrement;

   function toString (This : in out AngleIncrementInfo) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (AngleIncrementInfo_Package.INCREMENT).appendshort (This.angleIncrement).toString;
   end toString;

   function getClosestGeneralDirection (This : in out AngleIncrementInfo; angle : Short_Integer) return Integer is
      closestDirection : Integer;
   begin
        closestDirection := SmallIntegerSingletonFactory_Package.getInstance.getAt (360);
        if ((Integer (This.UP_FRAME)) - (angle)) < ((Integer (closestDirection)) - (angle)) then
            closestDirection := This.UP_FRAME;
        end if;
        if ((Integer (This.DOWN_FRAME)) - (angle)) < ((Integer (closestDirection)) - (angle)) then
            closestDirection := This.DOWN_FRAME;
        end if;
        if ((Integer (This.LEFT_FRAME)) - (angle)) < ((Integer (closestDirection)) - (angle)) then
            closestDirection := This.LEFT_FRAME;
        end if;
        if ((Integer (This.RIGHT_FRAME)) - (angle)) < ((Integer (closestDirection)) - (angle)) then
            closestDirection := This.RIGHT_FRAME;
        end if;
        return Integer (closestDirection);
   end getClosestGeneralDirection;

   procedure getFrameAngle (This : in out AngleIncrementInfo; frame : Integer) is
      Java_Result : constant Integer := AngleIncrementInfo'Class (This).getFrameAngle (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrameAngle;

   procedure getClosestGeneralDirection (This : in out AngleIncrementInfo; angle : Short_Integer) is
      Java_Result : constant Integer := AngleIncrementInfo'Class (This).getClosestGeneralDirection (angle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClosestGeneralDirection;

begin
   null;
   INCREMENT := To_Unbounded_String ("Inc: ");

end org.allbinary.math.AngleIncrementInfo_Package;


