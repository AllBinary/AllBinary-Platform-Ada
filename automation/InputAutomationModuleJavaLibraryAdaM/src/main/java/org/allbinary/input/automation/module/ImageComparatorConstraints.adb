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


package body org.allbinary.input.automation.module.ImageComparatorConstraints_Package is

   procedure Initialize_Fields (This : in out ImageComparatorConstraints'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.avoidVector := null;
      This.maxNonMatchingPixelDeltas := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparatorConstraints'Class; doImageComparisonEveryNthFrame : Integer) is
   begin
      Initialize_Fields (This);
        This.doImageComparisonEveryNthFrame := doImageComparisonEveryNthFrame;
        ImageComparatorConstraints'Class (This).setAvoidVector (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (doImageComparisonEveryNthFrame : Integer) return ImageComparatorConstraints_Access is
      This : constant ImageComparatorConstraints_Access := new ImageComparatorConstraints;
   begin
      ImageComparatorConstraints_Package.Initialize (This.all, doImageComparisonEveryNthFrame);
      return This;
   end Create;

   function getAvoidVector (This : in out ImageComparatorConstraints) return BasicArrayList_Access is
   begin
        return This.avoidVector;
   end getAvoidVector;

   function isColorAllowed (This : in out ImageComparatorConstraints; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class) return Boolean is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      color : constant Color_Access := Color_Access (color_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isColorAllowed;

   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      isCollsionWithAvoidRectangles : Boolean;
      avoidVector : BasicArrayList_Access;
      size : Integer;
      avoidRectangle : Rectangle_Access;
      index : Integer;
   begin
        isCollsionWithAvoidRectangles := False;
        avoidVector := ImageComparatorConstraints'Class (This).getAvoidVector;
        size := avoidVector.size;
        for index in 0 .. (size) - 1 loop
            avoidRectangle := Rectangle_Access (avoidVector.get (index));
            if RectangleCollisionUtil_Package.isCollision (avoidRectangle, rectangle) then
                isCollsionWithAvoidRectangles := True;
            end if;
        end loop;
        return isCollsionWithAvoidRectangles;
   end isCollisionWithAvoidRectangles;

   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; point_Param : access GPoint_Package.GPoint'Class) return Boolean is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      isCollsionWithAvoidRectangles : Boolean;
      avoidVector : BasicArrayList_Access;
      size : Integer;
      avoidRectangle : Rectangle_Access;
      index : Integer;
   begin
        isCollsionWithAvoidRectangles := False;
        avoidVector := ImageComparatorConstraints'Class (This).getAvoidVector;
        size := avoidVector.size;
        for index in 0 .. (size) - 1 loop
            avoidRectangle := Rectangle_Access (avoidVector.get (index));
            if RectangleCollisionUtil_Package.isCollision (avoidRectangle, point) then
                isCollsionWithAvoidRectangles := True;
                exit;
            end if;
        end loop;
        return isCollsionWithAvoidRectangles;
   end isCollisionWithAvoidRectangles;

   procedure setAvoidVector (This : in out ImageComparatorConstraints; avoidVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      avoidVector : constant BasicArrayList_Access := BasicArrayList_Access (avoidVector_Param);
   begin
        This.avoidVector := avoidVector;
   end setAvoidVector;

   function getMaxNonMatchingPixelDeltas (This : in out ImageComparatorConstraints) return Integer is
   begin
        return This.maxNonMatchingPixelDeltas;
   end getMaxNonMatchingPixelDeltas;

   procedure setMaxNonMatchingPixelDeltas (This : in out ImageComparatorConstraints; maxNonMatchingPixelDeltas : Integer) is
   begin
        This.maxNonMatchingPixelDeltas := maxNonMatchingPixelDeltas;
   end setMaxNonMatchingPixelDeltas;

   function isFrameAllowed (This : in out ImageComparatorConstraints; frame : Integer) return Boolean is
      remainder : Integer;
   begin
        remainder := ((((frame) + (1))) rem (This.doImageComparisonEveryNthFrame));
        This.logUtil.putF (To_Unbounded_String (" Frame: ") & Java_Image (frame) & To_Unbounded_String (" remainder: ") & Java_Image (remainder) & To_Unbounded_String (" this.doImageComparisonEveryNthFrame: ") & Java_Image (This.doImageComparisonEveryNthFrame), ImageComparatorConstraints_Access'(This'Unchecked_Access), To_Unbounded_String ("isCollisionWithAvoidRectangles"));
        if (remainder) = (0) then
            return True;
        else
            return False;
        end if;
   end isFrameAllowed;

   --  throws Exception
   function isImageValid (This : in out ImageComparatorConstraints; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return Boolean is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isImageValid;

   procedure log (This : in out ImageComparatorConstraints) is
      avoidVector : BasicArrayList_Access;
      size : Integer;
      avoidRectangle : Rectangle_Access;
      index : Integer;
   begin
        avoidVector := ImageComparatorConstraints'Class (This).getAvoidVector;
        size := avoidVector.size;
        for index in 0 .. (size) - 1 loop
            avoidRectangle := Rectangle_Access (avoidVector.get (index));
            This.logUtil.putF (To_Unbounded_String ("Avoid Rectangle: ") & Java_Image (avoidRectangle), ImageComparatorConstraints_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
        end loop;
   end log;

   procedure isColorAllowed (This : in out ImageComparatorConstraints; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class) is
      Java_Result : constant Boolean := ImageComparatorConstraints'Class (This).isColorAllowed (frame, point_Param, color_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isColorAllowed;

   procedure isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      Java_Result : constant Boolean := ImageComparatorConstraints'Class (This).isCollisionWithAvoidRectangles (rectangle_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionWithAvoidRectangles;

   procedure isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; point_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant Boolean := ImageComparatorConstraints'Class (This).isCollisionWithAvoidRectangles (point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionWithAvoidRectangles;

   procedure isFrameAllowed (This : in out ImageComparatorConstraints; frame : Integer) is
      Java_Result : constant Boolean := ImageComparatorConstraints'Class (This).isFrameAllowed (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFrameAllowed;

   procedure isImageValid (This : in out ImageComparatorConstraints; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      Java_Result : constant Boolean := ImageComparatorConstraints'Class (This).isImageValid (bufferedImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isImageValid;

end org.allbinary.input.automation.module.ImageComparatorConstraints_Package;


