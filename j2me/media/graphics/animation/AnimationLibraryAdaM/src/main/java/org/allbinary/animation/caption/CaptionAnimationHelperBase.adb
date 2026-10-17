-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.animation.caption.CaptionAnimationHelperBase_Package is

   procedure Initialize_Fields (This : in out CaptionAnimationHelperBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CaptionAnimationHelperBase'Class) is
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CaptionAnimationHelperBase_Access is
      This : constant CaptionAnimationHelperBase_Access := new CaptionAnimationHelperBase;
   begin
      CaptionAnimationHelperBase_Package.Initialize (This.all);
      return This;
   end Create;


   function isShowing (This : in out CaptionAnimationHelperBase) return Boolean is
   begin
        return False;
   end isShowing;

   procedure tick (This : in out CaptionAnimationHelperBase) is
   begin
        null;
   end tick;

   procedure update (This : in out CaptionAnimationHelperBase; message : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end update;

   procedure paintXY (This : in out CaptionAnimationHelperBase; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintXY;

begin
   null;
   INSTANCE := CaptionAnimationHelperBase_Package.Create;

end org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;


