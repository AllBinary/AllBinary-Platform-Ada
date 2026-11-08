--  Generated Code Do Not Modify


with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.direction.DirectionalInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.math.FrameUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.animation.RotationAnimationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.NullRotationAnimation_Package is

   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
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
   procedure Initialize_Fields (This : in out NullRotationAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   function createTotalAngle (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        return NullRotationAnimation_Package.Create (angleInfo, CircularIndexUtil_Package.createInstance ((Integer (totalAngle)) / (Integer (angleInfo.getAngleIncrementInfo.getAngleIncrement))), animationBehavior);
   end createTotalAngle;

   function createQuarter (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        return NullRotationAnimation_Package.Create (AngleInfo_Package.getInstance (AngleFactory_Package.getInstance.QUARTER_TOTAL_ANGLE), CircularIndexUtil_Package.createInstance (4), animationBehavior);
   end createQuarter;

   procedure Initialize (This : in out NullRotationAnimation'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      circularIndexUtil : constant CircularIndexUtil_Access := CircularIndexUtil_Access (circularIndexUtil_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        RotationAnimation_Package.Initialize (This, angleInfo, circularIndexUtil, animationBehavior);
   end Initialize;

   function Create (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access is
      This : constant NullRotationAnimation_Access := new NullRotationAnimation;
   begin
      NullRotationAnimation_Package.Initialize (This.all, angleInfo_Param, circularIndexUtil_Param, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out NullRotationAnimation) return Integer is
   begin
        return 0;
   end getAnimationSize;

   procedure createTotalAngle (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      Java_Result : constant NullRotationAnimation_Access := createTotalAngle (angleInfo_Param => angleInfo_Param, totalAngle => totalAngle, animationBehavior_Param => animationBehavior_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTotalAngle;

   procedure createQuarter (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      Java_Result : constant NullRotationAnimation_Access := createQuarter (animationBehavior_Param => animationBehavior_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createQuarter;

end org.allbinary.animation.NullRotationAnimation_Package;


