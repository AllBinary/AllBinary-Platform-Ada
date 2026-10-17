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


package body org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package is

   procedure Initialize_Fields (This : in out ImageComparisonResultsEvent'Class) is
   begin
      null;
      This.imageComparisonResult := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonResultsEvent'Class; anyType : Java_Object_Access; imageComparisonInfo : ImageComparisonResult_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.setImageComparisonResult (imageComparisonInfo);
   end Initialize;

   function Create (anyType : Java_Object_Access; imageComparisonInfo : ImageComparisonResult_Access) return ImageComparisonResultsEvent_Access is
      This : constant ImageComparisonResultsEvent_Access := new ImageComparisonResultsEvent;
   begin
      Initialize (This.all, anyType, imageComparisonInfo);
      return This;
   end Create;

   function getImageComparisonResult (This : in out ImageComparisonResultsEvent) return ImageComparisonResult_Access is
   begin
        return This.imageComparisonResult;
   end getImageComparisonResult;

   procedure setImageComparisonResult (This : in out ImageComparisonResultsEvent; imageComparisonResult : ImageComparisonResult_Access) is
   begin
        This.imageComparisonResult := imageComparisonResult;
   end setImageComparisonResult;

   procedure getImageComparisonResult (This : in out ImageComparisonResultsEvent) is
      Java_Result : constant ImageComparisonResult_Access := ImageComparisonResultsEvent'Class (This).getImageComparisonResult;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageComparisonResult;

end org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;


