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


with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.vector.VectorInfo_Package; use org.allbinary.vector.VectorInfo_Package;
with org.allbinary.vector.VectorInfo_Package_References;
with org.allbinary.animation.VectorAnimationFactoryInterface_Package; use org.allbinary.animation.VectorAnimationFactoryInterface_Package;
with org.allbinary.animation.VectorAnimationFactoryInterface_Package_References;
with org.allbinary.animation.VectorRotationGenerator_Package; use org.allbinary.animation.VectorRotationGenerator_Package;
with org.allbinary.animation.VectorExplosionGenerator_Package; use org.allbinary.animation.VectorExplosionGenerator_Package;
with org.allbinary.animation.VectorExplosionGenerator_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.math.FrameUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.graphics.pipeline.RandomRotationFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.animation.VectorAnimation_Package;
with org.allbinary.animation.VectorAnimationFactoryInterface_Package;
with org.allbinary.animation.VectorAnimationUtil_Package;
with org.allbinary.animation.VectorExplosionGenerator_Package;
with org.allbinary.animation.VectorExplosionType_Package;
with org.allbinary.animation.VectorRotationGenerator_Package;

package body org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
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
   subtype VectorInfo_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access;
   function "=" (Left, Right : VectorInfo_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array;
   function "=" (Left, Right : VectorInfo_Access_Array) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access;
   function "=" (Left, Right : VectorInfo_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array;
   function "=" (Left, Right : VectorInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access_Array is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access_Array_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorExplosionGenerator_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access;
   function "=" (Left, Right : VectorExplosionGenerator_Access) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   subtype VectorExplosionGenerator_Access_Array is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array;
   function "=" (Left, Right : VectorExplosionGenerator_Access_Array) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   subtype VectorExplosionGenerator_Access_Array_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access;
   function "=" (Left, Right : VectorExplosionGenerator_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   subtype VectorExplosionGenerator_Access_Array_Access_Array is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : VectorExplosionGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   subtype VectorExplosionGenerator_Access_Array_Access_Array_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorExplosionGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
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
   procedure Initialize_Fields (This : in out IndependentVectorExplosionRotationAnimationFactory'Class) is
   begin
      null;
      This.framePoints := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
      
      
      
      This.vectorExplosionGenerator := VectorExplosionGenerator_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out IndependentVectorExplosionRotationAnimationFactory'Class; vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; vectorAnimationFactoryInterface_Param : access VectorAnimationFactoryInterface_Package.VectorAnimationFactoryInterface'Class) is
      vectorInfo : constant VectorInfo_Access := VectorInfo_Access (vectorInfo_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      vectorAnimationFactoryInterface : constant VectorAnimationFactoryInterface_Access := VectorAnimationFactoryInterface_Access (vectorAnimationFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.vectorInfo := vectorInfo;
        This.basicColor := basicColor;
        This.vectorAnimationFactoryInterface := vectorAnimationFactoryInterface;
        IndependentVectorExplosionRotationAnimationFactory'Class (This).init;
   end Initialize;

   function Create (vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; vectorAnimationFactoryInterface_Param : access VectorAnimationFactoryInterface_Package.VectorAnimationFactoryInterface'Class) return IndependentVectorExplosionRotationAnimationFactory_Access is
      This : constant IndependentVectorExplosionRotationAnimationFactory_Access := new IndependentVectorExplosionRotationAnimationFactory;
   begin
      IndependentVectorExplosionRotationAnimationFactory_Package.Initialize (This.all, vectorInfo_Param, basicColor_Param, vectorAnimationFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out IndependentVectorExplosionRotationAnimationFactory) is
   begin
        This.framePoints := VectorRotationGenerator_Package.getInstance.getInstance (This.vectorInfo);
   end init;

   --  throws Exception
   function getInstanceAnimation (This : in out IndependentVectorExplosionRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      frame : Integer;
      rotationAnimationInterface : IndexedAnimation_Access;
      points : Integer_Array_Access_Array_Access_Array_Access;
   begin
        frame := 0;
        if (animationInterface) /= (null) then
            rotationAnimationInterface := IndexedAnimation_Access (animationInterface);
            frame := rotationAnimationInterface.getFrame;
        end if;
        points := This.vectorExplosionGenerator.getInstance (This.framePoints (frame), 6, This.vectorExplosionGenerator.ROTATION);
        return Animation_Access (This.vectorAnimationFactoryInterface.getInstance (points, This.basicColor));
   end getInstanceAnimation;

   procedure getInstanceAnimation (This : in out IndependentVectorExplosionRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := IndependentVectorExplosionRotationAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param => animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package;


