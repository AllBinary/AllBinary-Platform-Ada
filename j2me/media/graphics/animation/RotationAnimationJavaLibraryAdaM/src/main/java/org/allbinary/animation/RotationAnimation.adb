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


with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
with org.allbinary.direction.DirectionUtil_Package; use org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.direction.DirectionUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;
with org.allbinary.math.FrameUtil_Package_References;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.math.AngleIncrementInfo_Package;

package body org.allbinary.animation.RotationAnimation_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   function "=" (Left, Right : Direction_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   function "=" (Left, Right : Direction_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   function "=" (Left, Right : Direction_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype DirectionUtil_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access;
   function "=" (Left, Right : DirectionUtil_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array;
   function "=" (Left, Right : DirectionUtil_Access_Array) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   function "=" (Left, Right : Angle_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   function "=" (Left, Right : Angle_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   function "=" (Left, Right : Angle_Access_Array_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   function "=" (Left, Right : AngleInfo_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype FrameUtil_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access;
   function "=" (Left, Right : FrameUtil_Access) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   subtype FrameUtil_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array;
   function "=" (Left, Right : FrameUtil_Access_Array) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   subtype FrameUtil_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access;
   function "=" (Left, Right : FrameUtil_Access_Array_Access) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   subtype FrameUtil_Access_Array_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FrameUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   subtype FrameUtil_Access_Array_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FrameUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   procedure Initialize_Fields (This : in out RotationAnimation'Class) is
   begin
      null;
      This.frameUtil := FrameUtil_Package.getInstance;
      This.directionUtil := DirectionUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RotationAnimation'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      circularIndexUtil : constant CircularIndexUtil_Access := CircularIndexUtil_Access (circularIndexUtil_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.angleInfo := angleInfo;
        This.circularIndexUtil := circularIndexUtil;
   end Initialize;

   function Create (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return RotationAnimation_Access is
      This : constant RotationAnimation_Access := new RotationAnimation;
   begin
      RotationAnimation_Package.Initialize (This.all, angleInfo_Param, circularIndexUtil_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure nextRotationX (This : in out RotationAnimation) is
   begin
        null;
   end nextRotationX;

   procedure previousRotationX (This : in out RotationAnimation) is
   begin
        null;
   end previousRotationX;

   procedure nextRotation (This : in out RotationAnimation) is
   begin
        This.angleInfo.adjustAngle (This.circularIndexUtil.next);
   end nextRotation;

   procedure previousRotation (This : in out RotationAnimation) is
   begin
        This.angleInfo.adjustAngle (This.circularIndexUtil.previous);
   end previousRotation;

   procedure nextRotationZ (This : in out RotationAnimation) is
   begin
        null;
   end nextRotationZ;

   procedure previousRotationZ (This : in out RotationAnimation) is
   begin
        null;
   end previousRotationZ;

   procedure setFrame (This : in out RotationAnimation; index : Integer) is
      newFrame : Integer;
   begin
        This.circularIndexUtil.setIndex (index);
        newFrame := This.circularIndexUtil.getIndex;
        This.angleInfo.adjustAngle (newFrame);
   end setFrame;

   procedure setFrameByDirection (This : in out RotationAnimation; direction_Param : access Direction_Package.Direction'Class) is
      direction : constant Direction_Access := Direction_Access (direction_Param);
      angle : Angle_Access;
   begin
        angle := This.directionUtil.getFrameAngle (direction);
        RotationAnimation'Class (This).adjustFrameToAngle (angle);
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out RotationAnimation; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
   begin
        RotationAnimation'Class (This).adjustFrameToAngle (angle);
   end setFrameToAngle;

   procedure adjustFrameToAngle (This : in out RotationAnimation; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
   begin
        RotationAnimation'Class (This).adjustFrame (angle.getValue);
   end adjustFrameToAngle;

   procedure adjustFrame (This : in out RotationAnimation; angle : Short_Integer) is
   begin
        RotationAnimation'Class (This).setFrame (This.frameUtil.getFrameForAngle (angle, Integer (This.angleInfo.getAngleIncrementInfo.getAngleIncrement)));
   end adjustFrame;

   function getFrame (This : in out RotationAnimation) return Integer is
   begin
        return This.circularIndexUtil.getIndex;
   end getFrame;

   function getSize (This : in out RotationAnimation) return Integer is
   begin
        return This.circularIndexUtil.getSize;
   end getSize;

   function getAngleInfoP (This : in out RotationAnimation) return AngleInfo_Access is
   begin
        return This.angleInfo;
   end getAngleInfoP;

   function toString (This : in out RotationAnimation) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (IndexedAnimation_Package.IndexedAnimation (This).toString).append (To_Unbounded_String ("circularIndexUtil: ")).append (This.circularIndexUtil.toString).append (To_Unbounded_String ("angleInfo: ")).append (This.angleInfo.toString).toString;
   end toString;

end org.allbinary.animation.RotationAnimation_Package;


