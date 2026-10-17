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


package body org.allbinary.media.image.comparison.motion.MotionRectangles_Package is

   procedure Initialize_Fields (This : in out MotionRectangles'Class) is
   begin
      null;
      
      This.rectangleVector := null;
      This.imageComparisonResult := null;
      This.MAX_PIXEL_DISTANCE_THRESHOLD := 2;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectangles'Class; name : Unbounded_String; imageComparisonResult : ImageComparisonResult_Access) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.setImageComparisonResult (imageComparisonResult);
        This.setVector (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (name : Unbounded_String; imageComparisonResult : ImageComparisonResult_Access) return MotionRectangles_Access is
      This : constant MotionRectangles_Access := new MotionRectangles;
   begin
      Initialize (This.all, name, imageComparisonResult);
      return This;
   end Create;

   function getVector (This : in out MotionRectangles) return BasicArrayList_Access is
   begin
        return This.rectangleVector;
   end getVector;

   procedure setVector (This : in out MotionRectangles; rectangleVector : BasicArrayList_Access) is
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

   procedure setImageComparisonResult (This : in out MotionRectangles; imageComparisonResult : ImageComparisonResult_Access) is
   begin
        This.imageComparisonResult := imageComparisonResult;
   end setImageComparisonResult;

   procedure getVector (This : in out MotionRectangles) is
      Java_Result : constant BasicArrayList_Access := MotionRectangles'Class (This).getVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVector;

   procedure getName (This : in out MotionRectangles) is
      Java_Result : constant Unbounded_String := MotionRectangles'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getImageComparisonResult (This : in out MotionRectangles) is
      Java_Result : constant ImageComparisonResult_Access := MotionRectangles'Class (This).getImageComparisonResult;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageComparisonResult;

end org.allbinary.media.image.comparison.motion.MotionRectangles_Package;


