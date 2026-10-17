--  Generated Code Do Not Modify


package body org.allbinary.animation.NullIndexedAnimation_Package is

   procedure Initialize_Fields (This : in out NullIndexedAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullIndexedAnimation'Class; animationBehavior : AnimationBehavior_Access) is
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
   end Initialize;

   function Create (animationBehavior : AnimationBehavior_Access) return NullIndexedAnimation_Access is
      This : constant NullIndexedAnimation_Access := new NullIndexedAnimation;
   begin
      Initialize (This.all, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out NullIndexedAnimation) return Integer is
   begin
        return 0;
   end getAnimationSize;

   procedure getAnimationSize (This : in out NullIndexedAnimation) is
      Java_Result : constant Integer := NullIndexedAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

end org.allbinary.animation.NullIndexedAnimation_Package;


