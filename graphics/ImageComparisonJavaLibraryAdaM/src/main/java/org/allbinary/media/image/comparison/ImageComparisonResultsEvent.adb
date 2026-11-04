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


with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;

package body org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package is

   subtype ImageComparisonResult_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access;
   function "=" (Left, Right : ImageComparisonResult_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   subtype ImageComparisonResult_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array;
   function "=" (Left, Right : ImageComparisonResult_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   subtype ImageComparisonResult_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResult_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   subtype ImageComparisonResult_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonResult_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   subtype ImageComparisonResult_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResult_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   procedure Initialize_Fields (This : in out ImageComparisonResultsEvent'Class) is
   begin
      null;
      This.imageComparisonResult := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonResultsEvent'Class; anyType_Param : access Java_Object'Class; imageComparisonInfo_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      imageComparisonInfo : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonInfo_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        ImageComparisonResultsEvent'Class (This).setImageComparisonResult (imageComparisonInfo);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class; imageComparisonInfo_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) return ImageComparisonResultsEvent_Access is
      This : constant ImageComparisonResultsEvent_Access := new ImageComparisonResultsEvent;
   begin
      ImageComparisonResultsEvent_Package.Initialize (This.all, anyType_Param, imageComparisonInfo_Param);
      return This;
   end Create;

   function getImageComparisonResult (This : in out ImageComparisonResultsEvent) return ImageComparisonResult_Access is
   begin
        return This.imageComparisonResult;
   end getImageComparisonResult;

   procedure setImageComparisonResult (This : in out ImageComparisonResultsEvent; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
   begin
        This.imageComparisonResult := imageComparisonResult;
   end setImageComparisonResult;

end org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;


