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
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.VectorAnimation_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
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
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   procedure Initialize_Fields (This : in out VectorAnimation'Class) is
   begin
      null;
      This.currentPoints := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
      This.circularIndexUtil := CircularIndexUtil_Package.createInstance (0);
   end Initialize_Fields;


   function createVectorAnimation (currentPoints2 : Integer_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return VectorAnimation_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
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

   procedure Initialize (This : in out VectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        VectorAnimation'Class (This).setPoints (currentPoints);
        VectorAnimation'Class (This).setBasicColorP (basicColor);
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return VectorAnimation_Access is
      This : constant VectorAnimation_Access := new VectorAnimation;
   begin
      VectorAnimation_Package.Initialize (This.all, currentPoints, basicColor_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out VectorAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((VectorAnimation'Class (This).getBasicColorP) = (null)) or else ((VectorAnimation'Class (This).getBasicColorP.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        IndexedAnimation_Package.IndexedAnimation (This).setBasicColorP (basicColor);
        if changed then
            VectorAnimation'Class (This).updateModifiers;
        end if;
   end setBasicColorP;

   procedure changeBasicColor (This : in out VectorAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((VectorAnimation'Class (This).getChangeBasicColor) = (null)) or else ((VectorAnimation'Class (This).getChangeBasicColor.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        IndexedAnimation_Package.IndexedAnimation (This).changeBasicColor (basicColor);
        if changed then
            VectorAnimation'Class (This).updateModifiers;
        end if;
   end changeBasicColor;

   procedure setAlpha (This : in out VectorAnimation; alpha : Integer) is
      changed : Boolean;
   begin
        changed := False;
        if (This.alphaP) /= (alpha) then
            changed := True;
        end if;
        IndexedAnimation_Package.IndexedAnimation (This).setAlpha (alpha);
        if changed then
            VectorAnimation'Class (This).updateModifiers;
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
        return VectorAnimation'Class (This).getSize;
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
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
   end nextFrame;

   procedure previousFrame (This : in out VectorAnimation) is
   begin
        declare Java_Result renames This.circularIndexUtil.previous; pragma Unreferenced (Java_Result); begin null; end;
   end previousFrame;

   procedure paintVectors (This : in out VectorAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, VectorAnimation_Access'(This'Unchecked_Access), To_Unbounded_String ("paintVectors"), e);
                end;
        end;
   end paintVectors;

   procedure paintXY (This : in out VectorAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.basicSetColorUtil.setBasicColorP (graphics, This.basicColor);
        VectorAnimation'Class (This).paintVectors (graphics, x, y);
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

   function getBasicColorP (This : in out VectorAnimation) return BasicColor_Access is
   begin
        return IndexedAnimation_Package.IndexedAnimation (This).getBasicColorP;
   end getBasicColorP;

   procedure createVectorAnimation (currentPoints2 : Integer_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      Java_Result : constant VectorAnimation_Access := createVectorAnimation (currentPoints2 => currentPoints2, basicColor_Param => basicColor_Param, animationBehavior_Param => animationBehavior_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createVectorAnimation;

   procedure getPoints (This : in out VectorAnimation; frame : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access := VectorAnimation'Class (This).getPoints (frame => frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoints;

end org.allbinary.animation.VectorAnimation_Package;


