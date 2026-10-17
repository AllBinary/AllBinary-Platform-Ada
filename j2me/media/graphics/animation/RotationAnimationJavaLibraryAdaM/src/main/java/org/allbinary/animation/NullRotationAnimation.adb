--  Generated Code Do Not Modify


package body org.allbinary.animation.NullRotationAnimation_Package is

   procedure Initialize_Fields (This : in out NullRotationAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   function createTotalAngle (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        return NullRotationAnimation_Package.Create (angleInfo, CircularIndexUtil_Package.createInstance ((totalAngle) / (angleInfo.getAngleIncrementInfo.getAngleIncrement)), animationBehavior);
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
      Java_Result : constant NullRotationAnimation_Access := createTotalAngle (angleInfo_Param, totalAngle, animationBehavior_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTotalAngle;

   procedure createQuarter (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      Java_Result : constant NullRotationAnimation_Access := createQuarter (animationBehavior_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createQuarter;

end org.allbinary.animation.NullRotationAnimation_Package;


