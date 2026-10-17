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


package body org.allbinary.animation.compound.CompoundRotationAnimation_Package is

   procedure Initialize_Fields (This : in out CompoundRotationAnimation'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CompoundRotationAnimation'Class; animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        RotationAnimation_Package.Initialize (This, AngleInfo_Package.getInstance (AngleFactory_Package.getInstance.QUARTER_TOTAL_ANGLE), CircularIndexUtil_Package.createInstance (4), animationBehavior);
        Initialize_Fields (This);
        This.animationInterfaceArray := animationInterfaceArray;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.animationInterfaceArray'Length);
   end Initialize;

   function Create (animationInterfaceArray : RotationAnimation_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return CompoundRotationAnimation_Access is
      This : constant CompoundRotationAnimation_Access := new CompoundRotationAnimation;
   begin
      Initialize (This.all, animationInterfaceArray, animationBehavior);
      return This;
   end Create;

   procedure setFrame (This : in out CompoundRotationAnimation; index : Integer) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).setFrame (index);
   end setFrame;

   function getFrame (This : in out CompoundRotationAnimation) return Integer is
   begin
        return This.animationInterfaceArray (This.circularIndexUtil.getIndex).getFrame;
   end getFrame;

   --  throws Exception
   function getAnimationSize (This : in out CompoundRotationAnimation) return Integer is
   begin
        return This.animationInterfaceArray (This.circularIndexUtil.getIndex).getAnimationSize;
   end getAnimationSize;

   function getSize (This : in out CompoundRotationAnimation) return Integer is
   begin
        return This.animationInterfaceArray (This.circularIndexUtil.getIndex).getSize;
   end getSize;

   procedure previousFrame (This : in out CompoundRotationAnimation) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).previousFrame;
   end previousFrame;

   --  throws Exception
   procedure nextFrame (This : in out CompoundRotationAnimation) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).nextFrame;
   end nextFrame;

   procedure previousRotation (This : in out CompoundRotationAnimation) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).previousRotation;
   end previousRotation;

   procedure nextRotation (This : in out CompoundRotationAnimation) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).nextRotation;
   end nextRotation;

   procedure setSequence (This : in out CompoundRotationAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out CompoundRotationAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out CompoundRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).paintXY (graphics, x, y);
   end paintXY;

   procedure paintThreedXYZ (This : in out CompoundRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).paintThreedXYZ (graphics, x, y, z);
   end paintThreedXYZ;

   function getCurrentAnimation (This : in out CompoundRotationAnimation) return IndexedAnimation_Access is
   begin
        return This.animationInterfaceArray (This.circularIndexUtil.getIndex);
   end getCurrentAnimation;

   procedure nextAnimation (This : in out CompoundRotationAnimation) is
      frame : Integer;
   begin
        frame := This.getFrame;
        This.circularIndexUtil.next;
        This.setFrame (frame);
   end nextAnimation;

   procedure previousAnimation (This : in out CompoundRotationAnimation) is
      frame : Integer;
   begin
        frame := This.getFrame;
        This.circularIndexUtil.previous;
        This.setFrame (frame);
   end previousAnimation;

   procedure setAnimation (This : in out CompoundRotationAnimation; index : Integer) is
      frame : Integer;
   begin
        frame := This.getFrame;
        This.circularIndexUtil.setIndex (index);
        This.setFrame (frame);
   end setAnimation;

   procedure setFrameByDirection (This : in out CompoundRotationAnimation; direction : Direction_Access) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).setFrameByDirection (direction);
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out CompoundRotationAnimation; angle : Angle_Access) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).setFrameToAngle (angle);
   end setFrameToAngle;

   procedure adjustFrameToAngle (This : in out CompoundRotationAnimation; newAngle : Angle_Access) is
   begin
        This.adjustFrame (newAngle.getValue);
   end adjustFrameToAngle;

   procedure adjustFrame (This : in out CompoundRotationAnimation; angle : Short_Integer) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).adjustFrame (angle);
   end adjustFrame;

   function getAngleInfoP (This : in out CompoundRotationAnimation) return AngleInfo_Access is
   begin
        return This.animationInterfaceArray (This.circularIndexUtil.getIndex).getAngleInfoP;
   end getAngleInfoP;

   function getAnimationInterfaceArray (This : in out CompoundRotationAnimation) return RotationAnimation_Access_Array_Access is
   begin
        return This.animationInterfaceArray;
   end getAnimationInterfaceArray;

   procedure setAnimationInterfaceArray (This : in out CompoundRotationAnimation; animationInterfaceArray : RotationAnimation_Access_Array_Access) is
   begin
        This.animationInterfaceArray := animationInterfaceArray;
   end setAnimationInterfaceArray;

   --  throws Exception
   procedure set (This : in out CompoundRotationAnimation; gl : GL_Access) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).set (gl);
        end loop;
   end set;

   procedure getFrame (This : in out CompoundRotationAnimation) is
      Java_Result : constant Integer := CompoundRotationAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getAnimationSize (This : in out CompoundRotationAnimation) is
      Java_Result : constant Integer := CompoundRotationAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

   procedure getSize (This : in out CompoundRotationAnimation) is
      Java_Result : constant Integer := CompoundRotationAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getSequence (This : in out CompoundRotationAnimation) is
      Java_Result : constant Integer_Array_Access := CompoundRotationAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

   procedure getCurrentAnimation (This : in out CompoundRotationAnimation) is
      Java_Result : constant IndexedAnimation_Access := CompoundRotationAnimation'Class (This).getCurrentAnimation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentAnimation;

   procedure getAngleInfoP (This : in out CompoundRotationAnimation) is
      Java_Result : constant AngleInfo_Access := CompoundRotationAnimation'Class (This).getAngleInfoP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAngleInfoP;

   procedure getAnimationInterfaceArray (This : in out CompoundRotationAnimation) is
      Java_Result : constant RotationAnimation_Access_Array_Access := CompoundRotationAnimation'Class (This).getAnimationInterfaceArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationInterfaceArray;

end org.allbinary.animation.compound.CompoundRotationAnimation_Package;


