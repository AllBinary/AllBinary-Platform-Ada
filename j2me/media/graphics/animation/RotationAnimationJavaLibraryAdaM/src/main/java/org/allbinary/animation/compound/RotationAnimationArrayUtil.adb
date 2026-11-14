-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package;
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
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.animation.RotationAnimationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.compound.RotationAnimationArrayUtil_Package is

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
   procedure Initialize_Fields (This : in out RotationAnimationArrayUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return RotationAnimationArrayUtil_Access is
   begin
        return RotationAnimationArrayUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out RotationAnimationArrayUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RotationAnimationArrayUtil_Access is
      This : constant RotationAnimationArrayUtil_Access := new RotationAnimationArrayUtil;
   begin
      RotationAnimationArrayUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function toRotationAnimationArray (This : in out RotationAnimationArrayUtil; animationArray : Animation_Access_Array_Access) return RotationAnimation_Access_Array_Access is
      size : Integer;
      rotationAnimationArray : RotationAnimation_Access_Array_Access;
      index : Integer;
   begin
        size := animationArray'Length;
        rotationAnimationArray := new RotationAnimation_Access_Array'(0 .. (size) - 1 => null);
        for index in 0 .. (size) - 1 loop
            rotationAnimationArray (index) := RotationAnimation_Access (animationArray (index));
        end loop;
        return rotationAnimationArray;
   end toRotationAnimationArray;

   procedure toRotationAnimationArray (This : in out RotationAnimationArrayUtil; animationArray : Animation_Access_Array_Access) is
      Java_Result : constant RotationAnimation_Access_Array_Access := RotationAnimationArrayUtil'Class (This).toRotationAnimationArray (animationArray => animationArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toRotationAnimationArray;

begin
   null;
   instance := RotationAnimationArrayUtil_Package.Create;

end org.allbinary.animation.compound.RotationAnimationArrayUtil_Package;


