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


package body org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package is

   procedure Initialize_Fields (This : in out ConsolidateMotionRectangles'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ConsolidateMotionRectangles'Class; motionRectangles : MotionRectangles_Access) is
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
        This.consolidateMotionRectangles;
   end Initialize;

   function Create (motionRectangles : MotionRectangles_Access) return ConsolidateMotionRectangles_Access is
      This : constant ConsolidateMotionRectangles_Access := new ConsolidateMotionRectangles;
   begin
      Initialize (This.all, motionRectangles);
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
        vector := This.getVector;
        This.logUtil.putF (To_Unbounded_String ("Start - Size Before: ") & Java_Image (vector.size), This'Unchecked_Access, To_Unbounded_String ("consolidateMotionRectangleConstraints"));
        removeVector := BasicArrayListD_Package.Create;
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
                    removeVector.add (motionRectangle2);
                end if;
            end loop;
        end loop;
        This.remove (removeVector);
   end consolidateMotionRectangles;

   procedure remove (This : in out ConsolidateMotionRectangles; removeVector : BasicArrayList_Access) is
      vector : BasicArrayList_Access;
      size : Integer;
      index : Integer;
   begin
        vector := This.getVector;
        size := removeVector.size;
        for index in 0 .. (size) - 1 loop
            vector.remove (removeVector.get (index));
        end loop;
   end remove;

begin
   null;
   NAME := To_Unbounded_String ("consolidatedMotionRectangles_");

end org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package;


