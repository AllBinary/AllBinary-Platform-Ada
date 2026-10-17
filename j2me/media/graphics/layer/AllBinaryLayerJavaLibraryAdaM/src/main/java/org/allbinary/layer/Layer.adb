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


package body org.allbinary.layer.Layer_Package is

   procedure Initialize_Fields (This : in out Layer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.x := 0;
      This.y := 0;
      This.z := 3;
      This.width := 0;
      This.height := 0;
      This.visible := True;
   end Initialize_Fields;


   procedure Initialize (This : in out Layer'Class; width : Integer; height : Integer) is
   begin
      Initialize_Fields (This);
        This.setLayerWidth (width);
        This.setLayerHeight (height);
   end Initialize;

   function Create (width : Integer; height : Integer) return Layer_Access is
      This : constant Layer_Access := new Layer;
   begin
      Layer_Package.Initialize (This.all, width, height);
      return This;
   end Create;

   procedure setPosition (This : in out Layer; x : Integer; y : Integer; z : Integer) is
   begin
        This.x := x;
        This.y := y;
        This.z := z;
   end setPosition;

   procedure moveDXY (This : in out Layer; dx : Integer; dy : Integer) is
   begin
        This.x := (This.x) + (dx);
        This.y := (This.y) + (dy);
   end moveDXY;

   procedure moveDXYZ (This : in out Layer; dx : Integer; dy : Integer; dz : Integer) is
   begin
        This.x := (This.x) + (dx);
        This.y := (This.y) + (dy);
        This.z := (This.z) + (dz);
   end moveDXYZ;

   function getXP (This : in out Layer) return Integer is
   begin
        return This.x;
   end getXP;

   function getYP (This : in out Layer) return Integer is
   begin
        return This.y;
   end getYP;

   function getZP (This : in out Layer) return Integer is
   begin
        return This.z;
   end getZP;

   function getWidth (This : in out Layer) return Integer is
   begin
        return This.width;
   end getWidth;

   function getHeight (This : in out Layer) return Integer is
   begin
        return This.height;
   end getHeight;

   function getDepth (This : in out Layer) return Long_Long_Integer is
   begin
        return 0;
   end getDepth;

   procedure setVisible (This : in out Layer; visible : Boolean) is
   begin
        This.visible := visible;
   end setVisible;

   function isVisible (This : in out Layer) return Boolean is
   begin
        return This.visible;
   end isVisible;

   procedure paint (This : in out Layer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        canvasStrings := CanvasStrings_Package.getInstance;
        This.logUtil.putF (commonStrings.NOT_IMPLEMENTED, Layer_Access'(This'Unchecked_Access), canvasStrings.PAINT);
   end paint;

   procedure setLayerWidth (This : in out Layer; width : Integer) is
   begin
        if (width) < (0) then
            Java_Throw (Java_New_Exception ("IllegalArgumentException"));
        end if;
        This.width := width;
   end setLayerWidth;

   procedure setLayerHeight (This : in out Layer; height : Integer) is
   begin
        if (height) < (0) then
            Java_Throw (Java_New_Exception ("IllegalArgumentException"));
        end if;
        This.height := height;
   end setLayerHeight;

   procedure toStringAppend (This : in out Layer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
   begin
        null;
   end toStringAppend;

begin
   null;
   ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (0);

end org.allbinary.layer.Layer_Package;


