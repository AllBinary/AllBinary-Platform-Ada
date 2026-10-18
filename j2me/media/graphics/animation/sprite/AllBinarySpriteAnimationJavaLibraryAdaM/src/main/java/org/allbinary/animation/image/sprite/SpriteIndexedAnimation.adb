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


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out SpriteIndexedAnimation'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SpriteIndexedAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      sprite : constant Sprite_Access := Sprite_Access (sprite_Param);
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.sprite := sprite;
        This.image := image;
        This.basicColorArray := basicColorArray;
        if ((This.basicColorArray'Length) /= (0)) and then ((SpriteIndexedAnimation'Class (This).getSize) /= (This.basicColorArray'Length)) then
            Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (CommonLabels_Package.getInstance.TOTAL_LABEL).appendint (SpriteIndexedAnimation'Class (This).getSize).append (To_Unbounded_String ("!=")).appendint (This.basicColorArray'Length).toString));
        end if;
   end Initialize;

   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return SpriteIndexedAnimation_Access is
      This : constant SpriteIndexedAnimation_Access := new SpriteIndexedAnimation;
   begin
      SpriteIndexedAnimation_Package.Initialize (This.all, sprite_Param, image_Param, basicColorArray, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out SpriteIndexedAnimation) return Integer is
   begin
        return SpriteIndexedAnimation'Class (This).getSize;
   end getAnimationSize;

   procedure setBasicColorP (This : in out SpriteIndexedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      index : Integer;
   begin
        for index in 0 .. (This.basicColorArray'Length) - 1 loop
            if (basicColor) = (This.basicColorArray (index)) then
                SpriteIndexedAnimation'Class (This).setFrame (index);
                exit;
            end if;
        end loop;
   end setBasicColorP;

   function getBasicColorP (This : in out SpriteIndexedAnimation) return BasicColor_Access is
   begin
        if (This.basicColorArray'Length) < (SpriteIndexedAnimation'Class (This).getFrame) then
            return This.basicColorArray (SpriteIndexedAnimation'Class (This).getFrame);
        else
            return BasicColorFactory_Package.getInstance.WHITE;
        end if;
   end getBasicColorP;

   procedure paintFrame (This : in out SpriteIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; frame : Integer; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        SpriteIndexedAnimation'Class (This).setFrame (frame);
        This.sprite.setPosition (x, y);
        This.sprite.paint (graphics);
   end paintFrame;

   procedure paintXY (This : in out SpriteIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.sprite.setPosition (x, y);
        This.sprite.paint (graphics);
   end paintXY;

   procedure paint (This : in out SpriteIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.sprite.paint (graphics);
   end paint;

   procedure nextFrame (This : in out SpriteIndexedAnimation) is
   begin
        This.sprite.nextFrame;
   end nextFrame;

   procedure previousFrame (This : in out SpriteIndexedAnimation) is
   begin
        This.sprite.prevFrame;
   end previousFrame;

   function getSize (This : in out SpriteIndexedAnimation) return Integer is
   begin
        return This.sprite.getRawFrameCount;
   end getSize;

   procedure setFrame (This : in out SpriteIndexedAnimation; frame : Integer) is
   begin
        This.sprite.setFrame (frame);
   end setFrame;

   function getFrame (This : in out SpriteIndexedAnimation) return Integer is
   begin
        return This.sprite.getFrame;
   end getFrame;

   function isLastFrame (This : in out SpriteIndexedAnimation) return Boolean is
   begin
        if (This.sprite.getFrame) = ((SpriteIndexedAnimation'Class (This).getSize) - (1)) then
            return True;
        else
            return False;
        end if;
   end isLastFrame;

   function getLastFrame (This : in out SpriteIndexedAnimation) return Integer is
   begin
        return SpriteIndexedAnimation'Class (This).getSize;
   end getLastFrame;

   procedure setSequence (This : in out SpriteIndexedAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out SpriteIndexedAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   --  throws Exception
   procedure close (This : in out SpriteIndexedAnimation) is
   begin
        null;
   end close;

   --  throws Throwable
   procedure finalize (This : in out SpriteIndexedAnimation) is
   begin
        null;
   end finalize;

end org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;


