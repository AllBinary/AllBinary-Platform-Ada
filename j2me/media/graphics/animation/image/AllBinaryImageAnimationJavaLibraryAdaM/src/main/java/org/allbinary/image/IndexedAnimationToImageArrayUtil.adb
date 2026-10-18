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


with org.allbinary.image.AnimationFrameToImageUtil_Package; use org.allbinary.image.AnimationFrameToImageUtil_Package;

package body org.allbinary.image.IndexedAnimationToImageArrayUtil_Package is

   procedure Initialize_Fields (This : in out IndexedAnimationToImageArrayUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out IndexedAnimationToImageArrayUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return IndexedAnimationToImageArrayUtil_Access is
      This : constant IndexedAnimationToImageArrayUtil_Access := new IndexedAnimationToImageArrayUtil;
   begin
      IndexedAnimationToImageArrayUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (width : Integer; height : Integer; sequentialAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class) return Image_Access_Array_Access is
      sequentialAnimationInterface : constant IndexedAnimation_Access := IndexedAnimation_Access (sequentialAnimationInterface_Param);
      size : Integer;
      imageArray : Image_Access_Array_Access;
      index : Integer;
   begin
        size := sequentialAnimationInterface.getAnimationSize;
        imageArray := new Image_Access_Array'(0 .. (size) - 1 => null);
        for index in 0 .. (size) - 1 loop
            sequentialAnimationInterface.setFrame (index);
            imageArray (index) := AnimationFrameToImageUtil_Package.getInstance.getInstanceWH (width, height, sequentialAnimationInterface);
        end loop;
        return imageArray;
   end getInstance;

   procedure getInstance (width : Integer; height : Integer; sequentialAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class) is
      Java_Result : constant Image_Access_Array_Access := getInstance (width => width, height => height, sequentialAnimationInterface_Param => sequentialAnimationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.image.IndexedAnimationToImageArrayUtil_Package;


