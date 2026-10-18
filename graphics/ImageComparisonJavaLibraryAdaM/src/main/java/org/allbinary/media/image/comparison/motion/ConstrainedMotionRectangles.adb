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


package body org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package is

   procedure Initialize_Fields (This : in out ConstrainedMotionRectangles'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.motionRectangleConstraintsInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ConstrainedMotionRectangles'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) is
      motionRectangleConstraintsInterface : constant MotionRectangleConstraintsInterface_Access := MotionRectangleConstraintsInterface_Access (motionRectangleConstraintsInterface_Param);
      motionRectangles : constant MotionRectangles_Access := MotionRectangles_Access (motionRectangles_Param);
   begin
        MotionRectangles_Package.Initialize (This, NAME, motionRectangles.getImageComparisonResult);
        Initialize_Fields (This);
        ConstrainedMotionRectangles'Class (This).setMotionRectangleConstraintsInterface (motionRectangleConstraintsInterface);
   end Initialize;

   function Create (motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) return ConstrainedMotionRectangles_Access is
      This : constant ConstrainedMotionRectangles_Access := new ConstrainedMotionRectangles;
   begin
      ConstrainedMotionRectangles_Package.Initialize (This.all, motionRectangleConstraintsInterface_Param, motionRectangles_Param);
      return This;
   end Create;

   --  throws Exception
   procedure applyMotionRectangleConstraints (This : in out ConstrainedMotionRectangles; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) is
      motionRectangles : constant MotionRectangles_Access := MotionRectangles_Access (motionRectangles_Param);
      bufferedImageArray : BufferedImage_Access_Array_Access;
      bufferedImage : BufferedImage_Access;
      vector : BasicArrayList_Access;
      vector2 : BasicArrayList_Access;
      size : Integer;
      motionRectangle : MotionRectangle_Access;
      rectangle : Rectangle_Access;
      isTooSmall : Boolean;
      isAreaTooSmall : Boolean;
      isTooBig : Boolean;
      isValid : Boolean;
      index : Integer;
   begin
        This.logUtil.putF (To_Unbounded_String ("Start - Size Before: ") & Java_Image (motionRectangles.getVector.size), ConstrainedMotionRectangles_Access'(This'Unchecked_Access), To_Unbounded_String ("applyMotionRectangleConstraints"));
        bufferedImageArray := motionRectangles.getImageComparisonResult.getBufferedImages;
        bufferedImage := bufferedImageArray (1);
        vector := BasicArrayListD_Package.Create;
        vector2 := motionRectangles.getVector;
        size := vector2.size;
        for index in 0 .. (size) - 1 loop
            motionRectangle := MotionRectangle_Access (vector2.get (index));
            rectangle := motionRectangle.getRectangle;
            isTooSmall := ConstrainedMotionRectangles'Class (This).getMotionRectangleConstraintsInterface.isTooSmall (rectangle);
            if isTooSmall then
                goto Continue_N66349;
            end if;
            isAreaTooSmall := ConstrainedMotionRectangles'Class (This).getMotionRectangleConstraintsInterface.isAreaTooSmall (rectangle);
            if isAreaTooSmall then
                goto Continue_N66349;
            end if;
            isTooBig := ConstrainedMotionRectangles'Class (This).getMotionRectangleConstraintsInterface.isTooBig (rectangle);
            if isTooBig then
                goto Continue_N66349;
            end if;
            isValid := ConstrainedMotionRectangles'Class (This).getMotionRectangleConstraintsInterface.isValid (ConstrainedMotionRectangles'Class (This).getImageComparisonResult.getFrameTwo, bufferedImage, motionRectangle.getRectangle);
            if not (isValid) then
                goto Continue_N66349;
            end if;
            if (((not (isTooSmall)) and then (not (isAreaTooSmall))) and then (not (isTooBig))) and then (isValid) then
                vector.add (motionRectangle);
            end if;
            <<Continue_N66349>> null;
        end loop;
        ConstrainedMotionRectangles'Class (This).setVector (vector);
   end applyMotionRectangleConstraints;

   function getMotionRectangleConstraintsInterface (This : in out ConstrainedMotionRectangles) return MotionRectangleConstraintsInterface_Access is
   begin
        return This.motionRectangleConstraintsInterface;
   end getMotionRectangleConstraintsInterface;

   procedure setMotionRectangleConstraintsInterface (This : in out ConstrainedMotionRectangles; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) is
      motionRectangleConstraintsInterface : constant MotionRectangleConstraintsInterface_Access := MotionRectangleConstraintsInterface_Access (motionRectangleConstraintsInterface_Param);
   begin
        This.motionRectangleConstraintsInterface := motionRectangleConstraintsInterface;
   end setMotionRectangleConstraintsInterface;

begin
   null;
   NAME := To_Unbounded_String ("constrainedMotionRectangles_");

end org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package;


