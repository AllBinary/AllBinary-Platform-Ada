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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out ImageComparisonResultFrameCacheable'Class) is
   begin
      null;
      
      This.imageComparisonResult := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonResultFrameCacheable'Class; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; frame : Long_Long_Integer) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
   begin
      Initialize_Fields (This);
        ImageComparisonResultFrameCacheable'Class (This).setImageComparisonResult (imageComparisonResult);
        This.frame := frame;
   end Initialize;

   function Create (imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; frame : Long_Long_Integer) return ImageComparisonResultFrameCacheable_Access is
      This : constant ImageComparisonResultFrameCacheable_Access := new ImageComparisonResultFrameCacheable;
   begin
      ImageComparisonResultFrameCacheable_Package.Initialize (This.all, imageComparisonResult_Param, frame);
      return This;
   end Create;

   function getKey (This : in out ImageComparisonResultFrameCacheable) return Java_Object_Access is
   begin
        return This.frame;
   end getKey;

   function getFrame (This : in out ImageComparisonResultFrameCacheable) return Long_Long_Integer is
   begin
        return This.frame;
   end getFrame;

   procedure setFrame (This : in out ImageComparisonResultFrameCacheable; frame : Long_Long_Integer) is
   begin
        This.frame := frame;
   end setFrame;

   function getImageComparisonResult (This : in out ImageComparisonResultFrameCacheable) return ImageComparisonResult_Access is
   begin
        return This.imageComparisonResult;
   end getImageComparisonResult;

   procedure setImageComparisonResult (This : in out ImageComparisonResultFrameCacheable; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
   begin
        This.imageComparisonResult := imageComparisonResult;
   end setImageComparisonResult;

   function toString (This : in out ImageComparisonResultFrameCacheable) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (To_Unbounded_String (" Frame: "));
        stringBuffer.appendlong (ImageComparisonResultFrameCacheable'Class (This).getFrame);
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package;


