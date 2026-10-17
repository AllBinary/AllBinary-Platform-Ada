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


package body org.allbinary.animation.Animation_Package is

   procedure Initialize_Fields (This : in out Animation'Class) is
   begin
      null;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
      This.colorP := 0;
      This.changeBasicColorP := BasicColorFactory_Package.getInstance.NULL_COLOR;
      This.changeColorP := 0;
      This.alphaP := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out Animation'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Animation_Access is
      This : constant Animation_Access := new Animation;
   begin
      Animation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setAlpha (This : in out Animation; alpha : Integer) is
   begin
        This.alphaP := alpha;
   end setAlpha;

   --  throws Exception
   procedure nextFrame (This : in out Animation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out Animation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
   end paintXY;

   procedure paintThreedXYZ (This : in out Animation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer) is
   begin
        null;
   end paintThreedXYZ;

   function isThreed (This : in out Animation) return Boolean is
   begin
        return False;
   end isThreed;

   function getBasicColorP (This : in out Animation) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setBasicColorP (This : in out Animation; basicColor : BasicColor_Access) is
   begin
        This.basicColor := basicColor;
        This.colorP := This.basicColor.intValue;
   end setBasicColorP;

   procedure setBackgroundBasicColorP (This : in out Animation; basicColor : BasicColor_Access) is
   begin
        null;
   end setBackgroundBasicColorP;

   function getChangeBasicColor (This : in out Animation) return BasicColor_Access is
   begin
        return This.changeBasicColorP;
   end getChangeBasicColor;

   procedure changeBasicColor (This : in out Animation; basicColor : BasicColor_Access) is
   begin
        This.changeBasicColorP := basicColor;
        This.changeColorP := This.changeBasicColorP.intValue;
   end changeBasicColor;

   function getChangeColor (This : in out Animation) return Integer is
   begin
        return This.changeColorP;
   end getChangeColor;

   function getColor (This : in out Animation) return Integer is
   begin
        return This.colorP;
   end getColor;

   procedure setScale (This : in out Animation; scaleX : Float; scaleY : Float) is
   begin
        null;
   end setScale;

   procedure setMaxScale (This : in out Animation; maxScaleX : Float; maxScaleY : Float) is
   begin
        null;
   end setMaxScale;

   --  throws Exception
   procedure set (This : in out Animation; gl : GL_Access) is
   begin
        null;
   end set;

   procedure setDx (This : in out Animation; dx : Integer) is
   begin
        null;
   end setDx;

   function getDx (This : in out Animation) return Integer is
   begin
        return 0;
   end getDx;

   procedure setDy (This : in out Animation; dy : Integer) is
   begin
        null;
   end setDy;

   function getDy (This : in out Animation) return Integer is
   begin
        return 0;
   end getDy;

end org.allbinary.animation.Animation_Package;


