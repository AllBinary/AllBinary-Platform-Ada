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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangle_Package; use org.allbinary.media.image.comparison.motion.MotionRectangle_Package;
with org.allbinary.media.image.comparison.motion.Rectangle_Package; use org.allbinary.media.image.comparison.motion.Rectangle_Package;

package body org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out ConsolidateMotionRectangles'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ConsolidateMotionRectangles'Class; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) is
      motionRectangles : constant MotionRectangles_Access := MotionRectangles_Access (motionRectangles_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      motionRectangle : MotionRectangle_Access;
      index : Integer;
   begin
        MotionRectangles_Package.Initialize (This, NAME, motionRectangles.getImageComparisonResult);
        Initialize_Fields (This);
        vector := motionRectangles.getVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            motionRectangle := MotionRectangle_Access (vector.get (index));
            vector.add (motionRectangle.clone);
        end loop;
        ConsolidateMotionRectangles'Class (This).consolidateMotionRectangles;
   end Initialize;

   function Create (motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) return ConsolidateMotionRectangles_Access is
      This : constant ConsolidateMotionRectangles_Access := new ConsolidateMotionRectangles;
   begin
      ConsolidateMotionRectangles_Package.Initialize (This.all, motionRectangles_Param);
      return This;
   end Create;

   procedure consolidateMotionRectangles (This : in out ConsolidateMotionRectangles) is
      vector : BasicArrayList_Access;
      removeVector : BasicArrayList_Access;
      size : Integer;
      motionRectangle : MotionRectangle_Access;
      motionRectangle2 : MotionRectangle_Access;
      rectangle : Rectangle_Access;
      rectangle2 : Rectangle_Access;
      x2 : Integer;
      y2 : Integer;
      rightX : Integer;
      bottomY : Integer;
      i : Integer;
      index : Integer;
   begin
        vector := ConsolidateMotionRectangles'Class (This).getVector;
        This.logUtil.putF (To_Unbounded_String ("Start - Size Before: ") & Java_Image (vector.size), ConsolidateMotionRectangles_Access'(This'Unchecked_Access), To_Unbounded_String ("consolidateMotionRectangleConstraints"));
        removeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            motionRectangle := MotionRectangle_Access (vector.get (index));
            for i in (index) + (1) .. (vector.size) - 1 loop
                motionRectangle2 := MotionRectangle_Access (vector.get (i));
                rectangle := motionRectangle.getRectangle;
                rectangle2 := motionRectangle2.getRectangle;
                x2 := (rectangle.x) + (rectangle.width);
                y2 := (rectangle.y) + (rectangle.height);
                rightX := (rectangle2.x) + (rectangle2.width);
                bottomY := (rectangle2.y) + (rectangle2.height);
                if ((((rectangle.x) <= (rectangle2.x)) and then ((rectangle.y) <= (rectangle2.y))) and then ((x2) >= (rightX))) and then ((y2) >= (bottomY)) then
                    removeVector.add (Java_Object_Access (motionRectangle2));
                end if;
            end loop;
        end loop;
        ConsolidateMotionRectangles'Class (This).remove (removeVector);
   end consolidateMotionRectangles;

   procedure remove (This : in out ConsolidateMotionRectangles; removeVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      removeVector : constant BasicArrayList_Access := BasicArrayList_Access (removeVector_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      index : Integer;
   begin
        vector := ConsolidateMotionRectangles'Class (This).getVector;
        size := removeVector.size;
        for index in 0 .. (size) - 1 loop
            vector.remove (removeVector.get (index));
        end loop;
   end remove;

begin
   null;
   NAME := To_Unbounded_String ("consolidatedMotionRectangles_");

end org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package;


