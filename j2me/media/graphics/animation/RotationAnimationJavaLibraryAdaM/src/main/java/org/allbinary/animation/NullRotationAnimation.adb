--  Generated Code Do Not Modify


package body org.allbinary.animation.NullRotationAnimation_Package is

   procedure Initialize_Fields (This : in out NullRotationAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   function createTotalAngle (angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access) return NullRotationAnimation_Access is
   begin
        return NullRotationAnimation_Package.Create (angleInfo, CircularIndexUtil_Package.createInstance ((totalAngle) / (angleInfo.getAngleIncrementInfo.getAngleIncrement)), animationBehavior);
   end createTotalAngle;

   function createQuarter (animationBehavior : AnimationBehavior_Access) return NullRotationAnimation_Access is
   begin
        return NullRotationAnimation_Package.Create (AngleInfo_Package.getInstance (AngleFactory_Package.getInstance.QUARTER_TOTAL_ANGLE), CircularIndexUtil_Package.createInstance (4), animationBehavior);
   end createQuarter;

   procedure Initialize (This : in out NullRotationAnimation'Class; angleInfo : AngleInfo_Access; circularIndexUtil : CircularIndexUtil_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        RotationAnimation_Package.Initialize (This, angleInfo, circularIndexUtil, animationBehavior);
   end Initialize;

   function Create (angleInfo : AngleInfo_Access; circularIndexUtil : CircularIndexUtil_Access; animationBehavior : AnimationBehavior_Access) return NullRotationAnimation_Access is
      This : constant NullRotationAnimation_Access := new NullRotationAnimation;
   begin
      Initialize (This.all, angleInfo, circularIndexUtil, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out NullRotationAnimation) return Integer is
   begin
        return 0;
   end getAnimationSize;

   procedure createTotalAngle (angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access) is
      Java_Result : constant NullRotationAnimation_Access := createTotalAngle (angleInfo, totalAngle, animationBehavior);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTotalAngle;

   procedure createQuarter (animationBehavior : AnimationBehavior_Access) is
      Java_Result : constant NullRotationAnimation_Access := createQuarter (animationBehavior);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createQuarter;

   procedure getAnimationSize (This : in out NullRotationAnimation) is
      Java_Result : constant Integer := NullRotationAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

end org.allbinary.animation.NullRotationAnimation_Package;


