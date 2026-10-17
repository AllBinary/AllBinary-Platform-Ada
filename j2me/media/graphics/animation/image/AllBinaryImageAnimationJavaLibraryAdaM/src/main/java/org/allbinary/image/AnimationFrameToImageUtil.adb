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


package body org.allbinary.image.AnimationFrameToImageUtil_Package is

   procedure Initialize_Fields (This : in out AnimationFrameToImageUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AnimationFrameToImageUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnimationFrameToImageUtil_Access is
      This : constant AnimationFrameToImageUtil_Access := new AnimationFrameToImageUtil;
   begin
      AnimationFrameToImageUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnimationFrameToImageUtil_Access is
   begin
        return AnimationFrameToImageUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getInstanceTranslate (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface : Animation_Access) return Image_Access is
      image : Image_Access;
      graphics : Graphics_Access;
      tranlateX : Integer;
      tranlateY : Integer;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (AnimationFrameToImageUtil_Package.instance.all'Tag)), (Java_Shift_Right_Arithmetic (((width) * (3)), 1)), (Java_Shift_Right_Arithmetic (((height) * (3)), 1)));
        graphics := image.getGraphics;
        tranlateX := (Java_Shift_Right_Arithmetic (width, 2));
        tranlateY := (Java_Shift_Right_Arithmetic (height, 2));
        graphics.translate (tranlateX, tranlateY);
        animationInterface.paintXY (graphics, 0, 0);
        graphics.translate (-(tranlateX), -(tranlateY));
        return image;
   end getInstanceTranslate;

   --  throws Exception
   function getInstanceWH (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface : Animation_Access) return Image_Access is
      image : Image_Access;
      graphics : Graphics_Access;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (AnimationFrameToImageUtil_Package.instance.all'Tag)), width, height);
        graphics := image.getGraphics;
        animationInterface.paintXY (graphics, 0, 0);
        return image;
   end getInstanceWH;

   procedure getInstanceTranslate (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface : Animation_Access) is
      Java_Result : constant Image_Access := AnimationFrameToImageUtil'Class (This).getInstanceTranslate (width, height, animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceTranslate;

   procedure getInstanceWH (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface : Animation_Access) is
      Java_Result : constant Image_Access := AnimationFrameToImageUtil'Class (This).getInstanceWH (width, height, animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceWH;

begin
   null;
   instance := AnimationFrameToImageUtil_Package.Create;

end org.allbinary.image.AnimationFrameToImageUtil_Package;


