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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.VectorRotationAnimation_Package is

   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
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
   procedure Initialize_Fields (This : in out VectorRotationAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out VectorRotationAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        VectorBaseRotationAnimation_Package.Initialize (This, AngleInfo_Package.getInstance (Short_Integer (((Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE)) / (currentPoints'Length)))), currentPoints, basicColor, animationBehavior);
        This.angleInfo.adjustAngle (VectorRotationAnimation'Class (This).getFrame);
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return VectorRotationAnimation_Access is
      This : constant VectorRotationAnimation_Access := new VectorRotationAnimation;
   begin
      VectorRotationAnimation_Package.Initialize (This.all, currentPoints, basicColor_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure setFrameByDirection (This : in out VectorRotationAnimation; direction_Param : access Direction_Package.Direction'Class) is
      direction : constant Direction_Access := Direction_Access (direction_Param);
      angle : Angle_Access;
   begin
        angle := This.directionUtil.getFrameAngle (direction);
        VectorRotationAnimation'Class (This).adjustFrameToAngle (angle);
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out VectorRotationAnimation; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
   begin
        VectorRotationAnimation'Class (This).adjustFrameToAngle (angle);
   end setFrameToAngle;

   procedure setFrame (This : in out VectorRotationAnimation; index : Integer) is
   begin
        VectorBaseRotationAnimation_Package.VectorBaseRotationAnimation (This).setFrame (index);
        This.angleInfo.adjustAngle (VectorRotationAnimation'Class (This).getFrame);
   end setFrame;

   procedure adjustFrame (This : in out VectorRotationAnimation; newAngle : Short_Integer) is
   begin
        VectorRotationAnimation'Class (This).setFrame (This.frameUtil.getFrameForAngle (newAngle, Integer (This.angleInfo.getAngleIncrementInfo.getAngleIncrement)));
   end adjustFrame;

   procedure adjustFrameToAngle (This : in out VectorRotationAnimation; newAngle_Param : access Angle_Package.Angle'Class) is
      newAngle : constant Angle_Access := Angle_Access (newAngle_Param);
   begin
        VectorRotationAnimation'Class (This).adjustFrame (newAngle.getValue);
   end adjustFrameToAngle;

end org.allbinary.animation.VectorRotationAnimation_Package;


