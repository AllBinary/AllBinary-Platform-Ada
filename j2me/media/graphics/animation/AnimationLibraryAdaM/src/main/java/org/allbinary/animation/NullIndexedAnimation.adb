--  Generated Code Do Not Modify


package body org.allbinary.animation.NullIndexedAnimation_Package is

   procedure Initialize_Fields (This : in out NullIndexedAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullIndexedAnimation'Class; animationBehavior_Param : access AnimationBehavior'Class) is
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
   end Initialize;

   function Create (animationBehavior_Param : access AnimationBehavior'Class) return NullIndexedAnimation_Access is
      This : constant NullIndexedAnimation_Access := new NullIndexedAnimation;
   begin
      NullIndexedAnimation_Package.Initialize (This.all, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out NullIndexedAnimation) return Integer is
   begin
        return 0;
   end getAnimationSize;

end org.allbinary.animation.NullIndexedAnimation_Package;


