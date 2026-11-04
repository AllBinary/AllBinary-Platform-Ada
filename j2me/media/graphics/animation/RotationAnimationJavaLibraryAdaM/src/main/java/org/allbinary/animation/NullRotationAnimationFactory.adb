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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;
with org.allbinary.animation.NullRotationAnimation_Package; use org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.NullRotationAnimation_Package_References;
with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.animation.NullRotationAnimation2_Package; use org.allbinary.animation.NullRotationAnimation2_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimationInterface_Package;

package body org.allbinary.animation.NullRotationAnimationFactory_Package is

   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   function "=" (Left, Right : RotationAnimation_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access;
   function "=" (Left, Right : NullRotationAnimation_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access_Array is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access_Array;
   function "=" (Left, Right : NullRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access_Array_Access is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : NullRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : NullRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   procedure Initialize_Fields (This : in out NullRotationAnimationFactory'Class) is
   begin
      null;
      This.NULL_ROTATION_ANIMATION_ARRAY := new RotationAnimation_Access_Array'(0 .. (0) - 1 => null);
      This.NULL_ANIMATION := Animation_Access (NullRotationAnimation2_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out NullRotationAnimationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullRotationAnimationFactory_Access is
      This : constant NullRotationAnimationFactory_Access := new NullRotationAnimationFactory;
   begin
      NullRotationAnimationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getFactoryInstance return NullRotationAnimationFactory_Access is
   begin
        return NullRotationAnimationFactory_Access (NullRotationAnimationFactory_Package.NULL_ROTATION_ANIMATION_FACTORY);
   end getFactoryInstance;

   function getInstance (This : in out NullRotationAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return This.NULL_ANIMATION;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out NullRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return This.NULL_ANIMATION;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out NullRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out NullRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := NullRotationAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out NullRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := NullRotationAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param => animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

begin
   null;
   NULL_ROTATION_ANIMATION_FACTORY := NullRotationAnimationFactory_Package.Create;

end org.allbinary.animation.NullRotationAnimationFactory_Package;


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;
with org.allbinary.animation.NullRotationAnimation_Package; use org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.NullRotationAnimationFactory_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimationInterface_Package;

package body org.allbinary.animation.NullRotationAnimation2_Package is

   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   function "=" (Left, Right : RotationAnimation_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   procedure Initialize_Fields (This : in out NullRotationAnimation2'Class) is
   begin
      null;
   end Initialize_Fields;

    
   procedure Initialize (This : in out NullRotationAnimation2'Class) is
   begin
            null;
   end Initialize;

   function Create return NullRotationAnimation2_Access is
      This : constant NullRotationAnimation2_Access := new NullRotationAnimation2;
   begin
      NullRotationAnimation2_Package.Initialize (This.all);
      return This;
   end Create;
    
   procedure paintXY (This : in out NullRotationAnimation2; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
            null;
   end paintXY;

end org.allbinary.animation.NullRotationAnimation2_Package;


