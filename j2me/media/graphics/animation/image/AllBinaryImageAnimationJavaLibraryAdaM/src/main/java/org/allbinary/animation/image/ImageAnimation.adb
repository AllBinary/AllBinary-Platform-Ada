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


package body org.allbinary.animation.image.ImageAnimation_Package is

   procedure Initialize_Fields (This : in out ImageAnimation'Class) is
   begin
      null;
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageAnimation'Class; image : Image_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.image := image;
   end Initialize;

   function Create (image : Image_Access; animationBehavior : AnimationBehavior_Access) return ImageAnimation_Access is
      This : constant ImageAnimation_Access := new ImageAnimation;
   begin
      Initialize (This.all, image, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out ImageAnimation) return Integer is
   begin
        return This.getSize;
   end getAnimationSize;

   procedure nextFrame (This : in out ImageAnimation) is
   begin
        null;
   end nextFrame;

   procedure previousFrame (This : in out ImageAnimation) is
   begin
        null;
   end previousFrame;

   procedure setFrame (This : in out ImageAnimation; index : Integer) is
   begin
        null;
   end setFrame;

   function getFrame (This : in out ImageAnimation) return Integer is
   begin
        return 0;
   end getFrame;

   function getSize (This : in out ImageAnimation) return Integer is
   begin
        return 1;
   end getSize;

   procedure setSequence (This : in out ImageAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out ImageAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out ImageAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        graphics.drawImage (This.image, x, y, This.anchor);
   end paintXY;

   function getImage (This : in out ImageAnimation) return Image_Access is
   begin
        return This.image;
   end getImage;

   --  throws Exception
   procedure close (This : in out ImageAnimation) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end close;

   --  throws Throwable
   procedure finalize (This : in out ImageAnimation) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end finalize;

   procedure getAnimationSize (This : in out ImageAnimation) is
      Java_Result : constant Integer := ImageAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

   procedure getFrame (This : in out ImageAnimation) is
      Java_Result : constant Integer := ImageAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getSize (This : in out ImageAnimation) is
      Java_Result : constant Integer := ImageAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getSequence (This : in out ImageAnimation) is
      Java_Result : constant Integer_Array_Access := ImageAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

   procedure getImage (This : in out ImageAnimation) is
      Java_Result : constant Image_Access := ImageAnimation'Class (This).getImage;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

end org.allbinary.animation.image.ImageAnimation_Package;


