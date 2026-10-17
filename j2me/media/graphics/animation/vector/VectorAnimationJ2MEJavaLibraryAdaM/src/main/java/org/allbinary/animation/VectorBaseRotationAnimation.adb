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


package body org.allbinary.animation.VectorBaseRotationAnimation_Package is

   procedure Initialize_Fields (This : in out VectorBaseRotationAnimation'Class) is
   begin
      null;
      This.currentPoints := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
   end Initialize_Fields;


   procedure Initialize (This : in out VectorBaseRotationAnimation'Class; angleInfo : AngleInfo_Access; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        RotationAnimation_Package.Initialize (This, angleInfo, CircularIndexUtil_Package.createInstance ((360) / (angleInfo.getAngleIncrementInfo.getAngleIncrement)), animationBehavior);
        Initialize_Fields (This);
        This.setPoints (currentPoints);
        This.setBasicColorP (basicColor);
   end Initialize;

   function Create (angleInfo : AngleInfo_Access; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) return VectorBaseRotationAnimation_Access is
      This : constant VectorBaseRotationAnimation_Access := new VectorBaseRotationAnimation;
   begin
      VectorBaseRotationAnimation_Package.Initialize (This.all, angleInfo, currentPoints, basicColor, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out VectorBaseRotationAnimation) return Integer is
   begin
        return This.getSize;
   end getAnimationSize;

   function getFrame (This : in out VectorBaseRotationAnimation) return Integer is
   begin
        return This.circularIndexUtil.getIndex;
   end getFrame;

   procedure setFrame (This : in out VectorBaseRotationAnimation; index : Integer) is
   begin
        This.circularIndexUtil.setIndex (index);
   end setFrame;

   procedure nextFrame (This : in out VectorBaseRotationAnimation) is
   begin
        This.circularIndexUtil.next;
   end nextFrame;

   procedure previousFrame (This : in out VectorBaseRotationAnimation) is
   begin
        This.circularIndexUtil.previous;
   end previousFrame;

   function getSize (This : in out VectorBaseRotationAnimation) return Integer is
   begin
        return This.currentPoints'Length;
   end getSize;

   procedure setSequence (This : in out VectorBaseRotationAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out VectorBaseRotationAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out VectorBaseRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
      nextPointX : Integer;
      nextPointY : Integer;
      nextPoint : Integer_Array_Access;
      point : Integer_Array_Access;
      currentPointsFrame : Integer_Array_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        This.basicSetColorUtil.setBasicColorP (graphics, This.basicColor);
        begin
            nextPointX := 0;
            nextPointY := 0;
            nextPoint := null;
            point := null;
            currentPointsFrame := This.currentPoints (This.circularIndexUtil.getIndex);
            size := currentPointsFrame'Length;
            index := (size) - (2);
            while (Java_Pre_Decrement (index)) >= (0) loop
                nextPoint := currentPointsFrame (index);
                point := currentPointsFrame ((index) + (1));
                nextPointX := nextPoint (0);
                nextPointY := nextPoint (1);
                if (nextPointX) /= (1000) then
                    graphics.drawLine ((point (0)) + (x), (point (1)) + (y), (nextPointX) + (x), (nextPointY) + (y));
                else
                    index := index - 1;
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("paintVectors"), e);
                end;
        end;
   end paintXY;

   function getPoints (This : in out VectorBaseRotationAnimation; frame : Integer) return Integer_Array_Access_Array_Access is
   begin
        return This.currentPoints (frame);
   end getPoints;

   procedure setPoints (This : in out VectorBaseRotationAnimation; currentPoints : Integer_Array_Access_Array_Access_Array_Access) is
   begin
        This.currentPoints := currentPoints;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.currentPoints'Length);
   end setPoints;

   procedure getPoints (This : in out VectorBaseRotationAnimation; frame : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access := VectorBaseRotationAnimation'Class (This).getPoints (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoints;

end org.allbinary.animation.VectorBaseRotationAnimation_Package;


