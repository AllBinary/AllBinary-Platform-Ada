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


package body org.allbinary.animation.VectorAnimation_Package is

   procedure Initialize_Fields (This : in out VectorAnimation'Class) is
   begin
      null;
      This.currentPoints := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
      This.circularIndexUtil := CircularIndexUtil_Package.createInstance (0);
   end Initialize_Fields;


   function createVectorAnimation (currentPoints2 : Integer_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) return VectorAnimation_Access is
      currentPoints : Integer_Array_Access_Array_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        currentPoints := new Integer_Array_Access_Array_Access_Array'(0 .. (1) - 1 => new Integer_Array_Access_Array'(0 .. (currentPoints2'Length) - 1 => new Integer_Array'(0 .. (2) - 1 => 0)));
        size := currentPoints2'Length;
        for index in 0 .. (size) - 1 loop
            currentPoints (0) (index) (0) := currentPoints2 (index) (0);
            currentPoints (0) (index) (1) := currentPoints2 (index) (1);
        end loop;
        return VectorAnimation_Package.Create (currentPoints, basicColor, animationBehavior);
   end createVectorAnimation;

   procedure Initialize (This : in out VectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.setPoints (currentPoints);
        This.setBasicColorP (basicColor);
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) return VectorAnimation_Access is
      This : constant VectorAnimation_Access := new VectorAnimation;
   begin
      Initialize (This.all, currentPoints, basicColor, animationBehavior);
      return This;
   end Create;

   procedure setBasicColorP (This : in out VectorAnimation; basicColor : BasicColor_Access) is
      changed : Boolean;
   begin
        changed := False;
        if ((This.getBasicColorP) = (null)) or else ((This.getBasicColorP.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        IndexedAnimation (This).setBasicColorP (basicColor);
        if changed then
            This.updateModifiers;
        end if;
   end setBasicColorP;

   procedure changeBasicColor (This : in out VectorAnimation; basicColor : BasicColor_Access) is
      changed : Boolean;
   begin
        changed := False;
        if ((This.getChangeBasicColor) = (null)) or else ((This.getChangeBasicColor.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        IndexedAnimation (This).changeBasicColor (basicColor);
        if changed then
            This.updateModifiers;
        end if;
   end changeBasicColor;

   procedure setAlpha (This : in out VectorAnimation; alpha : Integer) is
      changed : Boolean;
   begin
        changed := False;
        if (This.alphaP) /= (alpha) then
            changed := True;
        end if;
        IndexedAnimation (This).setAlpha (alpha);
        if changed then
            This.updateModifiers;
        end if;
   end setAlpha;

   procedure setScale (This : in out VectorAnimation; scaleX : Float; scaleY : Float) is
   begin
        null;
   end setScale;

   procedure setMaxScale (This : in out VectorAnimation; maxScaleX : Float; maxScaleY : Float) is
   begin
        null;
   end setMaxScale;

   procedure updateModifiers (This : in out VectorAnimation) is
   begin
        null;
   end updateModifiers;

   --  throws Exception
   function getAnimationSize (This : in out VectorAnimation) return Integer is
   begin
        return This.getSize;
   end getAnimationSize;

   function getSize (This : in out VectorAnimation) return Integer is
   begin
        return This.currentPoints'Length;
   end getSize;

   procedure setSequence (This : in out VectorAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out VectorAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure nextFrame (This : in out VectorAnimation) is
   begin
        This.circularIndexUtil.next;
   end nextFrame;

   procedure previousFrame (This : in out VectorAnimation) is
   begin
        This.circularIndexUtil.previous;
   end previousFrame;

   procedure paintVectors (This : in out VectorAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
      nextPointX : Integer;
      nextPointY : Integer;
      nextPoint : Integer_Array_Access;
      point : Integer_Array_Access;
      currentPointsFrame : Integer_Array_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
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
   end paintVectors;

   procedure paintXY (This : in out VectorAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.basicSetColorUtil.setBasicColorP (graphics, This.basicColor);
        This.paintVectors (graphics, x, y);
   end paintXY;

   function getFrame (This : in out VectorAnimation) return Integer is
   begin
        return This.circularIndexUtil.getIndex;
   end getFrame;

   procedure setFrame (This : in out VectorAnimation; index : Integer) is
   begin
        This.circularIndexUtil.setIndex (index);
   end setFrame;

   function getPoints (This : in out VectorAnimation; frame : Integer) return Integer_Array_Access_Array_Access is
   begin
        return This.currentPoints (frame);
   end getPoints;

   procedure setPoints (This : in out VectorAnimation; currentPoints : Integer_Array_Access_Array_Access_Array_Access) is
   begin
        This.currentPoints := currentPoints;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (currentPoints'Length);
   end setPoints;

   procedure createVectorAnimation (currentPoints2 : Integer_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) is
      Java_Result : constant VectorAnimation_Access := createVectorAnimation (currentPoints2, basicColor, animationBehavior);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createVectorAnimation;

   procedure getAnimationSize (This : in out VectorAnimation) is
      Java_Result : constant Integer := VectorAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

   procedure getSize (This : in out VectorAnimation) is
      Java_Result : constant Integer := VectorAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getSequence (This : in out VectorAnimation) is
      Java_Result : constant Integer_Array_Access := VectorAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

   procedure getFrame (This : in out VectorAnimation) is
      Java_Result : constant Integer := VectorAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getPoints (This : in out VectorAnimation; frame : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access := VectorAnimation'Class (This).getPoints (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoints;

end org.allbinary.animation.VectorAnimation_Package;


