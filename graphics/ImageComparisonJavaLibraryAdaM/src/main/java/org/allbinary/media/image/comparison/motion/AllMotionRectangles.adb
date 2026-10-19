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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.image.comparison.motion.Rectangle_Package; use org.allbinary.media.image.comparison.motion.Rectangle_Package;

package body org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   procedure Initialize_Fields (This : in out AllMotionRectangles'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllMotionRectangles'Class; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
   begin
        MotionRectangles_Package.Initialize (This, NAME, imageComparisonResult);
        AllMotionRectangles'Class (This).createMotionRectangles (imageComparisonResult);
   end Initialize;

   function Create (imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) return AllMotionRectangles_Access is
      This : constant AllMotionRectangles_Access := new AllMotionRectangles;
   begin
      AllMotionRectangles_Package.Initialize (This.all, imageComparisonResult_Param);
      return This;
   end Create;

   --  throws Exception
   procedure createMotionRectangles (This : in out AllMotionRectangles; imageComparisonInfo_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) is
      imageComparisonInfo : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonInfo_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      pixelDelta : PixelDelta_Access;
      index : Integer;
   begin
        vector := imageComparisonInfo.getNonMatchingPixelVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            pixelDelta := PixelDelta_Access (vector.get (index));
            AllMotionRectangles'Class (This).addPixelDeltaToAMotionRectangle (pixelDelta);
        end loop;
   end createMotionRectangles;

   --  throws Exception
   function addPixelDeltaToExistingMotionRectangle (This : in out AllMotionRectangles; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) return Boolean is
      pixelDelta : constant PixelDelta_Access := PixelDelta_Access (pixelDelta_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      motionRectangle : MotionRectangle_Access;
      newWidth : Integer;
      newHeight : Integer;
      index : Integer;
   begin
        vector := AllMotionRectangles'Class (This).getVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            motionRectangle := MotionRectangle_Access (vector.get (index));
            if AllMotionRectangles'Class (This).shouldPixelDeltaPartOfMotionRectangle (motionRectangle, pixelDelta) then
                newWidth := (pixelDelta.getPoint.getX) - (motionRectangle.getRectangle.x);
                newHeight := (pixelDelta.getPoint.getY) - (motionRectangle.getRectangle.y);
                if (newWidth) < (motionRectangle.getRectangle.width) then
                    newWidth := motionRectangle.getRectangle.width;
                end if;
                if (newHeight) < (motionRectangle.getRectangle.height) then
                    newHeight := motionRectangle.getRectangle.height;
                end if;
                motionRectangle.getRectangle.setSize (newWidth, newHeight);
                return True;
            end if;
        end loop;
        return False;
   end addPixelDeltaToExistingMotionRectangle;

   --  throws Exception
   procedure addPixelDeltaToAMotionRectangle (This : in out AllMotionRectangles; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) is
      pixelDelta : constant PixelDelta_Access := PixelDelta_Access (pixelDelta_Param);
      newRectangle : Rectangle_Access;
      motionRectangle : MotionRectangle_Access;
   begin
        if not (AllMotionRectangles'Class (This).addPixelDeltaToExistingMotionRectangle (pixelDelta)) then
            newRectangle := Rectangle_Package.Create (pixelDelta.getPoint.getX, pixelDelta.getPoint.getY, 1, 1);
            motionRectangle := MotionRectangle_Package.Create (newRectangle);
            motionRectangle.getPixelDeltaVector.add (pixelDelta);
            AllMotionRectangles'Class (This).getVector.add (motionRectangle);
        end if;
   end addPixelDeltaToAMotionRectangle;

   --  throws Exception
   function shouldPixelDeltaPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle_Param : access MotionRectangle_Package.MotionRectangle'Class; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) return Boolean is
      motionRectangle : constant MotionRectangle_Access := MotionRectangle_Access (motionRectangle_Param);
      pixelDelta : constant PixelDelta_Access := PixelDelta_Access (pixelDelta_Param);
      isPixelLeftOfTheRectangle : Boolean;
   begin
        isPixelLeftOfTheRectangle := False;
        if (motionRectangle.getRectangle.y) > (pixelDelta.getPoint.getY) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("PixelAboveTheRectangle")));
        end if;
        if (motionRectangle.getRectangle.x) > (pixelDelta.getPoint.getX) then
            isPixelLeftOfTheRectangle := True;
        end if;
        if not (isPixelLeftOfTheRectangle) then
            return AllMotionRectangles'Class (This).isPixelDeltaLikelyPartOfMotionRectangle (motionRectangle, pixelDelta);
        end if;
        return False;
   end shouldPixelDeltaPartOfMotionRectangle;

   --  throws Exception
   function isPixelDeltaLikelyPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle_Param : access MotionRectangle_Package.MotionRectangle'Class; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) return Boolean is
      motionRectangle : constant MotionRectangle_Access := MotionRectangle_Access (motionRectangle_Param);
      pixelDelta : constant PixelDelta_Access := PixelDelta_Access (pixelDelta_Param);
      maxX : Integer;
      maxY : Integer;
      horizontalDistance : Integer;
      verticalDistance : Integer;
   begin
        maxX := (motionRectangle.getRectangle.x) + (motionRectangle.getRectangle.width);
        maxY := (motionRectangle.getRectangle.y) + (motionRectangle.getRectangle.height);
        horizontalDistance := (pixelDelta.getPoint.getX) - (maxX);
        verticalDistance := (pixelDelta.getPoint.getY) - (maxY);
        if ((horizontalDistance) < (This.MAX_PIXEL_DISTANCE_THRESHOLD)) and then ((verticalDistance) < (This.MAX_PIXEL_DISTANCE_THRESHOLD)) then
            return True;
        end if;
        return False;
   end isPixelDeltaLikelyPartOfMotionRectangle;

   procedure addPixelDeltaToExistingMotionRectangle (This : in out AllMotionRectangles; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) is
      Java_Result : constant Boolean := AllMotionRectangles'Class (This).addPixelDeltaToExistingMotionRectangle (pixelDelta_Param => pixelDelta_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addPixelDeltaToExistingMotionRectangle;

   procedure shouldPixelDeltaPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle_Param : access MotionRectangle_Package.MotionRectangle'Class; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) is
      Java_Result : constant Boolean := AllMotionRectangles'Class (This).shouldPixelDeltaPartOfMotionRectangle (motionRectangle_Param => motionRectangle_Param, pixelDelta_Param => pixelDelta_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldPixelDeltaPartOfMotionRectangle;

   procedure isPixelDeltaLikelyPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle_Param : access MotionRectangle_Package.MotionRectangle'Class; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) is
      Java_Result : constant Boolean := AllMotionRectangles'Class (This).isPixelDeltaLikelyPartOfMotionRectangle (motionRectangle_Param => motionRectangle_Param, pixelDelta_Param => pixelDelta_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPixelDeltaLikelyPartOfMotionRectangle;

begin
   null;
   NAME := To_Unbounded_String ("allMotionRectangles_");

end org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package;


