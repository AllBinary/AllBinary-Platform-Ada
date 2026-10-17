-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.animation.image.LazyImageRotationAnimation_Package is

   procedure Initialize_Fields (This : in out LazyImageRotationAnimation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      This.scaleProperties := ScaleProperties_Package.instance;
   end Initialize_Fields;


   procedure Initialize (This : in out LazyImageRotationAnimation'Class; layoutIndex : Integer; instanceId : Integer; scaleProperties : ScaleProperties_Access; animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access; animationBehavior : AnimationBehavior_Access) is
      imageCache : ImageCache_Access;
   begin
        RotationAnimation_Package.Initialize (This, AngleInfo_Package.getInstance (AngleFactory_Package.getInstance.QUARTER_TOTAL_ANGLE), CircularIndexUtil_Package.createInstance (4), animationBehavior);
        Initialize_Fields (This);
        This.layoutIndex := layoutIndex;
        This.instanceId := instanceId;
        This.animationInterfaceFactoryInterface := animationInterfaceFactoryInterface;
        imageCache := ImageCacheFactory_Package.getInstance;
        imageCache.add (This'Unchecked_Access);
        This.scaleProperties := scaleProperties;
        This.NULL_INDEX_ANIMATION := IndexedAnimation_Access (NullRotationAnimationFactory_Package.getFactoryInstance.getInstance (0));
        --  Java nested class ActualRotationAnimation: move it to its own package
        This.animation := ActualRotationAnimation_Package.Create (This'Unchecked_Access);
   end Initialize;

   function Create (layoutIndex : Integer; instanceId : Integer; scaleProperties : ScaleProperties_Access; animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access; animationBehavior : AnimationBehavior_Access) return LazyImageRotationAnimation_Access is
      This : constant LazyImageRotationAnimation_Access := new LazyImageRotationAnimation;
   begin
      Initialize (This.all, layoutIndex, instanceId, scaleProperties, animationInterfaceFactoryInterface, animationBehavior);
      return This;
   end Create;

   procedure setRealAnimation (This : in out LazyImageRotationAnimation) is
      animation : IndexedAnimation_Access;
   begin
        begin
            animation := This.animation;
            This.animationInterfaceFactoryInterface.setInitialScale (This.scaleProperties);
            This.animation := IndexedAnimation_Access (This.animationInterfaceFactoryInterface.getInstance (This.instanceId));
            This.animation.setState (animation);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, LazyImageRotationAnimation_Package.SET_REAL_ANIMATION, e);
                end;
        end;
   end setRealAnimation;

   procedure setScale (This : in out LazyImageRotationAnimation; scaleX : Float; scaleY : Float) is
   begin
        This.animation.setScale (scaleX, scaleY);
   end setScale;

   function getAnimationBehavior (This : in out LazyImageRotationAnimation) return AnimationBehavior_Access is
   begin
        return This.animation.getAnimationBehavior;
   end getAnimationBehavior;

   --  throws Exception
   procedure set (This : in out LazyImageRotationAnimation; gl : GL_Access) is
   begin
        This.animation.set (gl);
   end set;

   procedure setAlpha (This : in out LazyImageRotationAnimation; alpha : Integer) is
   begin
        This.animation.setAlpha (alpha);
   end setAlpha;

   procedure setDx (This : in out LazyImageRotationAnimation; dx : Integer) is
   begin
        This.animation.setDx (dx);
   end setDx;

   procedure setDy (This : in out LazyImageRotationAnimation; dy : Integer) is
   begin
        This.animation.setDy (dy);
   end setDy;

   procedure setMaxScale (This : in out LazyImageRotationAnimation; maxScaleX : Float; maxScaleY : Float) is
   begin
        This.animation.setMaxScale (maxScaleX, maxScaleY);
   end setMaxScale;

   procedure nextRotation (This : in out LazyImageRotationAnimation) is
      rotationAnimation : RotationAnimation_Access;
   begin
        rotationAnimation := (RotationAnimation_Access (This.animation));
        rotationAnimation.nextRotation;
   end nextRotation;

   procedure previousRotation (This : in out LazyImageRotationAnimation) is
      rotationAnimation : RotationAnimation_Access;
   begin
        rotationAnimation := (RotationAnimation_Access (This.animation));
        rotationAnimation.previousRotation;
   end previousRotation;

   procedure nextRotationX (This : in out LazyImageRotationAnimation) is
      rotationAnimation : RotationAnimation_Access;
   begin
        rotationAnimation := (RotationAnimation_Access (This.animation));
        rotationAnimation.nextRotationX;
   end nextRotationX;

   procedure previousRotationX (This : in out LazyImageRotationAnimation) is
      rotationAnimation : RotationAnimation_Access;
   begin
        rotationAnimation := (RotationAnimation_Access (This.animation));
        rotationAnimation.previousRotationX;
   end previousRotationX;

   procedure nextRotationZ (This : in out LazyImageRotationAnimation) is
      rotationAnimation : RotationAnimation_Access;
   begin
        rotationAnimation := (RotationAnimation_Access (This.animation));
        rotationAnimation.nextRotationZ;
   end nextRotationZ;

   procedure previousRotationZ (This : in out LazyImageRotationAnimation) is
      rotationAnimation : RotationAnimation_Access;
   begin
        rotationAnimation := (RotationAnimation_Access (This.animation));
        rotationAnimation.previousRotationZ;
   end previousRotationZ;

   procedure changeBasicColor (This : in out LazyImageRotationAnimation; basicColor : BasicColor_Access) is
   begin
        This.animation.changeBasicColor (basicColor);
   end changeBasicColor;

   function getBasicColorP (This : in out LazyImageRotationAnimation) return BasicColor_Access is
   begin
        return This.animation.getBasicColorP;
   end getBasicColorP;

   function getChangeBasicColor (This : in out LazyImageRotationAnimation) return BasicColor_Access is
   begin
        return This.animation.getChangeBasicColor;
   end getChangeBasicColor;

   function getChangeColor (This : in out LazyImageRotationAnimation) return Integer is
   begin
        return This.animation.getChangeColor;
   end getChangeColor;

   function getColor (This : in out LazyImageRotationAnimation) return Integer is
   begin
        return This.animation.getColor;
   end getColor;

   function getDx (This : in out LazyImageRotationAnimation) return Integer is
   begin
        return This.animation.getDx;
   end getDx;

   function getDy (This : in out LazyImageRotationAnimation) return Integer is
   begin
        return This.animation.getDy;
   end getDy;

   function isThreed (This : in out LazyImageRotationAnimation) return Boolean is
   begin
        return This.animation.isThreed;
   end isThreed;

   --  throws Exception
   procedure nextFrame (This : in out LazyImageRotationAnimation) is
   begin
        This.animation.nextFrame;
   end nextFrame;

   procedure reset (This : in out LazyImageRotationAnimation) is
   begin
        This.animation.reset;
   end reset;

   procedure setFrame (This : in out LazyImageRotationAnimation; index : Integer) is
   begin
        This.animation.setFrame (index);
   end setFrame;

   function getFrame (This : in out LazyImageRotationAnimation) return Integer is
   begin
        return This.animation.getFrame;
   end getFrame;

   --  throws Exception
   function getAnimationSize (This : in out LazyImageRotationAnimation) return Integer is
   begin
        return This.animation.getAnimationSize;
   end getAnimationSize;

   function getSize (This : in out LazyImageRotationAnimation) return Integer is
   begin
        return This.animation.getSize;
   end getSize;

   procedure previousFrame (This : in out LazyImageRotationAnimation) is
   begin
        This.animation.previousFrame;
   end previousFrame;

   function isLastFrame (This : in out LazyImageRotationAnimation) return Boolean is
   begin
        return This.animation.isLastFrame;
   end isLastFrame;

   procedure setSequence (This : in out LazyImageRotationAnimation; sequence : Integer_Array_Access) is
   begin
        This.animation.setSequence (sequence);
   end setSequence;

   function getSequence (This : in out LazyImageRotationAnimation) return Integer_Array_Access is
   begin
        return This.animation.getSequence;
   end getSequence;

   function getWidth (This : in out LazyImageRotationAnimation) return Integer is
   begin
        return This.animation.getWidth;
   end getWidth;

   procedure paintXY (This : in out LazyImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        begin
            This.animation.paintXY (graphics, x, y);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
                end;
        end;
   end paintXY;

   procedure paintThreedXYZ (This : in out LazyImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer) is
   begin
        begin
            This.animation.paintThreedXYZ (graphics, x, y, z);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
                end;
        end;
   end paintThreedXYZ;

   function toString (This : in out LazyImageRotationAnimation) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      image : Image_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        image := This.animationInterfaceFactoryInterface.getImage;
        return StringMaker_Package.Create.append (RotationAnimation (This).toString).append (commonSeps.SPACE).append (image.getName).append (commonSeps.SPACE).appendint (Integer (image.getWidth)).append (commonSeps.SPACE).appendint (Integer (image.getHeight)).toString;
   end toString;

   procedure getAnimationBehavior (This : in out LazyImageRotationAnimation) is
      Java_Result : constant AnimationBehavior_Access := LazyImageRotationAnimation'Class (This).getAnimationBehavior;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationBehavior;

   procedure getBasicColorP (This : in out LazyImageRotationAnimation) is
      Java_Result : constant BasicColor_Access := LazyImageRotationAnimation'Class (This).getBasicColorP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicColorP;

   procedure getChangeBasicColor (This : in out LazyImageRotationAnimation) is
      Java_Result : constant BasicColor_Access := LazyImageRotationAnimation'Class (This).getChangeBasicColor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChangeBasicColor;

   procedure getChangeColor (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer := LazyImageRotationAnimation'Class (This).getChangeColor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChangeColor;

   procedure getColor (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer := LazyImageRotationAnimation'Class (This).getColor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColor;

   procedure getDx (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer := LazyImageRotationAnimation'Class (This).getDx;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

   procedure getDy (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer := LazyImageRotationAnimation'Class (This).getDy;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDy;

   procedure isThreed (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Boolean := LazyImageRotationAnimation'Class (This).isThreed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isThreed;

   procedure getFrame (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer := LazyImageRotationAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getAnimationSize (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer := LazyImageRotationAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

   procedure getSize (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer := LazyImageRotationAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure isLastFrame (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Boolean := LazyImageRotationAnimation'Class (This).isLastFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLastFrame;

   procedure getSequence (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer_Array_Access := LazyImageRotationAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

   procedure getWidth (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Integer := LazyImageRotationAnimation'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure toString (This : in out LazyImageRotationAnimation) is
      Java_Result : constant Unbounded_String := LazyImageRotationAnimation'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   SET_REAL_ANIMATION := To_Unbounded_String ("setRealAnimation");

end org.allbinary.animation.image.LazyImageRotationAnimation_Package;


