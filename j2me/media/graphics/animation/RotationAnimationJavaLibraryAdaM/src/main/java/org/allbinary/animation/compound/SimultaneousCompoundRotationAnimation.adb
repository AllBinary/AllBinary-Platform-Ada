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


with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package body org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package is

   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   procedure Initialize_Fields (This : in out SimultaneousCompoundRotationAnimation'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SimultaneousCompoundRotationAnimation'Class; animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        RotationAnimation_Package.Initialize (This, AngleInfo_Package.getInstance (AngleFactory_Package.getInstance.QUARTER_TOTAL_ANGLE), CircularIndexUtil_Package.createInstance (4), animationBehavior);
        Initialize_Fields (This);
        This.animationInterfaceArray := animationInterfaceArray;
   end Initialize;

   function Create (animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return SimultaneousCompoundRotationAnimation_Access is
      This : constant SimultaneousCompoundRotationAnimation_Access := new SimultaneousCompoundRotationAnimation;
   begin
      SimultaneousCompoundRotationAnimation_Package.Initialize (This.all, animationInterfaceArray, animationBehavior_Param);
      return This;
   end Create;

   procedure setFrame (This : in out SimultaneousCompoundRotationAnimation; frameIndex : Integer) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).setFrame (frameIndex);
        end loop;
   end setFrame;

   function getFrame (This : in out SimultaneousCompoundRotationAnimation) return Integer is
   begin
        return This.animationInterfaceArray (0).getFrame;
   end getFrame;

   --  throws Exception
   function getAnimationSize (This : in out SimultaneousCompoundRotationAnimation) return Integer is
   begin
        return This.animationInterfaceArray (0).getAnimationSize;
   end getAnimationSize;

   function getSize (This : in out SimultaneousCompoundRotationAnimation) return Integer is
   begin
        return This.animationInterfaceArray (0).getSize;
   end getSize;

   procedure previousFrame (This : in out SimultaneousCompoundRotationAnimation) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).previousFrame;
        end loop;
   end previousFrame;

   --  throws Exception
   procedure nextFrame (This : in out SimultaneousCompoundRotationAnimation) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).nextFrame;
        end loop;
   end nextFrame;

   procedure previousRotation (This : in out SimultaneousCompoundRotationAnimation) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).previousRotation;
        end loop;
   end previousRotation;

   procedure nextRotation (This : in out SimultaneousCompoundRotationAnimation) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).nextRotation;
        end loop;
   end nextRotation;

   procedure setSequence (This : in out SimultaneousCompoundRotationAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out SimultaneousCompoundRotationAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out SimultaneousCompoundRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).paintXY (graphics, x, y);
        end loop;
   end paintXY;

   procedure paintThreedXYZ (This : in out SimultaneousCompoundRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).paintThreedXYZ (graphics, x, y, z);
        end loop;
   end paintThreedXYZ;

   procedure setFrameByDirection (This : in out SimultaneousCompoundRotationAnimation; direction_Param : access Direction_Package.Direction'Class) is
      direction : constant Direction_Access := Direction_Access (direction_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).setFrameByDirection (direction);
        end loop;
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out SimultaneousCompoundRotationAnimation; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).setFrameToAngle (angle);
        end loop;
   end setFrameToAngle;

   procedure adjustFrameToAngle (This : in out SimultaneousCompoundRotationAnimation; newAngle_Param : access Angle_Package.Angle'Class) is
      newAngle : constant Angle_Access := Angle_Access (newAngle_Param);
   begin
        SimultaneousCompoundRotationAnimation'Class (This).adjustFrame (newAngle.getValue);
   end adjustFrameToAngle;

   procedure adjustFrame (This : in out SimultaneousCompoundRotationAnimation; angle : Short_Integer) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).adjustFrame (angle);
        end loop;
   end adjustFrame;

   function getAngleInfoP (This : in out SimultaneousCompoundRotationAnimation) return AngleInfo_Access is
   begin
        return This.animationInterfaceArray (0).getAngleInfoP;
   end getAngleInfoP;

   function getAnimationInterfaceArray (This : in out SimultaneousCompoundRotationAnimation) return RotationAnimation_Access_Array_Access is
   begin
        return This.animationInterfaceArray;
   end getAnimationInterfaceArray;

   procedure setAnimationInterfaceArray (This : in out SimultaneousCompoundRotationAnimation; animationInterfaceArray : RotationAnimation_Access_Array_Access) is
   begin
        This.animationInterfaceArray := animationInterfaceArray;
   end setAnimationInterfaceArray;

   --  throws Exception
   procedure set (This : in out SimultaneousCompoundRotationAnimation; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).set (gl);
        end loop;
   end set;

end org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation_Package;


