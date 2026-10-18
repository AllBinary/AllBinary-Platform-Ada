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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.animation.vector.LineAnimation_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out LineAnimation'Class) is
   begin
      null;
      This.newLine := new Integer_Array_Access_Array'(0 .. (2) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
      This.tempLine := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY;
      This.line := new Integer_Array_Access_Array'(0 .. (2) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
   end Initialize_Fields;


   procedure Initialize (This : in out LineAnimation'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        LineAnimation'Class (This).setBasicColorP (basicColor);
   end Initialize;

   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return LineAnimation_Access is
      This : constant LineAnimation_Access := new LineAnimation;
   begin
      LineAnimation_Package.Initialize (This.all, basicColor_Param);
      return This;
   end Create;

   procedure init (This : in out LineAnimation; x : Integer; y : Integer) is
   begin
        This.newLine (0) (0) := x;
        This.newLine (0) (1) := y;
        This.newLine (1) (0) := x;
        This.newLine (1) (1) := y;
        This.tempLine := This.line;
        This.line := This.newLine;
        This.newLine := This.tempLine;
   end init;

   procedure setPosition (This : in out LineAnimation; x : Integer; y : Integer; z : Integer) is
   begin
        This.newLine (0) (0) := This.line (1) (0);
        This.newLine (0) (1) := This.line (1) (1);
        This.newLine (1) (0) := x;
        This.newLine (1) (1) := y;
        This.tempLine := This.line;
        This.line := This.newLine;
        This.newLine := This.tempLine;
   end setPosition;

   procedure paintXY (This : in out LineAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      currentLine : Integer_Array_Access_Array_Access;
   begin
        currentLine := This.line;
        This.basicSetColorUtil.setBasicColorP3 (graphics, LineAnimation'Class (This).getBasicColorP, LineAnimation'Class (This).getColor);
        graphics.drawLine (currentLine (0) (0), currentLine (0) (1), currentLine (1) (0), currentLine (1) (1));
   end paintXY;

   procedure nextFrame (This : in out LineAnimation) is
   begin
        null;
   end nextFrame;

end org.allbinary.animation.vector.LineAnimation_Package;


