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


package body org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package is

   procedure Initialize_Fields (This : in out ImageComparisonSearchResultsEvent'Class) is
   begin
      null;
      This.imageComparisonSearch := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonSearchResultsEvent'Class; anyType_Param : access Java_Object'Class; imageComparisonSearch_Param : access ImageComparisonSearch_Package.ImageComparisonSearch'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      imageComparisonSearch : constant ImageComparisonSearch_Access := ImageComparisonSearch_Access (imageComparisonSearch_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.setImageComparisonSearch (imageComparisonSearch);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class; imageComparisonSearch_Param : access ImageComparisonSearch_Package.ImageComparisonSearch'Class) return ImageComparisonSearchResultsEvent_Access is
      This : constant ImageComparisonSearchResultsEvent_Access := new ImageComparisonSearchResultsEvent;
   begin
      ImageComparisonSearchResultsEvent_Package.Initialize (This.all, anyType_Param, imageComparisonSearch_Param);
      return This;
   end Create;

   function getImageComparisonSearch (This : in out ImageComparisonSearchResultsEvent) return ImageComparisonSearch_Access is
   begin
        return This.imageComparisonSearch;
   end getImageComparisonSearch;

   procedure setImageComparisonSearch (This : in out ImageComparisonSearchResultsEvent; imageComparisonSearch_Param : access ImageComparisonSearch_Package.ImageComparisonSearch'Class) is
      imageComparisonSearch : constant ImageComparisonSearch_Access := ImageComparisonSearch_Access (imageComparisonSearch_Param);
   begin
        This.imageComparisonSearch := imageComparisonSearch;
   end setImageComparisonSearch;

end org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package;


