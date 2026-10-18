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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.media.image.comparison.motion.MotionRectangles_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out MotionRectangles'Class) is
   begin
      null;
      
      This.rectangleVector := null;
      This.imageComparisonResult := null;
      This.MAX_PIXEL_DISTANCE_THRESHOLD := 2;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectangles'Class; name : Unbounded_String; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
   begin
      Initialize_Fields (This);
        This.name := name;
        MotionRectangles'Class (This).setImageComparisonResult (imageComparisonResult);
        MotionRectangles'Class (This).setVector (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (name : Unbounded_String; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) return MotionRectangles_Access is
      This : constant MotionRectangles_Access := new MotionRectangles;
   begin
      MotionRectangles_Package.Initialize (This.all, name, imageComparisonResult_Param);
      return This;
   end Create;

   function getVector (This : in out MotionRectangles) return BasicArrayList_Access is
   begin
        return This.rectangleVector;
   end getVector;

   procedure setVector (This : in out MotionRectangles; rectangleVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      rectangleVector : constant BasicArrayList_Access := BasicArrayList_Access (rectangleVector_Param);
   begin
        This.rectangleVector := rectangleVector;
   end setVector;

   function getName (This : in out MotionRectangles) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getImageComparisonResult (This : in out MotionRectangles) return ImageComparisonResult_Access is
   begin
        return This.imageComparisonResult;
   end getImageComparisonResult;

   procedure setImageComparisonResult (This : in out MotionRectangles; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
   begin
        This.imageComparisonResult := imageComparisonResult;
   end setImageComparisonResult;

end org.allbinary.media.image.comparison.motion.MotionRectangles_Package;


