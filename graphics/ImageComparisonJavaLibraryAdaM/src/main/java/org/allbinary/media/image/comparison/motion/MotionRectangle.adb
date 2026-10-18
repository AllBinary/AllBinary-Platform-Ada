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


package body org.allbinary.media.image.comparison.motion.MotionRectangle_Package is

   procedure Initialize_Fields (This : in out MotionRectangle'Class) is
   begin
      null;
      This.rectangle := null;
      This.pixelDeltaVector := null;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectangle'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
      Initialize_Fields (This);
        MotionRectangle'Class (This).setRectangle (rectangle);
        MotionRectangle'Class (This).setPixelDeltaVector (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return MotionRectangle_Access is
      This : constant MotionRectangle_Access := new MotionRectangle;
   begin
      MotionRectangle_Package.Initialize (This.all, rectangle_Param);
      return This;
   end Create;

   function getRectangle (This : in out MotionRectangle) return Rectangle_Access is
   begin
        return This.rectangle;
   end getRectangle;

   procedure setRectangle (This : in out MotionRectangle; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        This.rectangle := rectangle;
   end setRectangle;

   function getPixelDeltaVector (This : in out MotionRectangle) return BasicArrayList_Access is
   begin
        return This.pixelDeltaVector;
   end getPixelDeltaVector;

   procedure setPixelDeltaVector (This : in out MotionRectangle; pixelDeltaVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      pixelDeltaVector : constant BasicArrayList_Access := BasicArrayList_Access (pixelDeltaVector_Param);
   begin
        This.pixelDeltaVector := pixelDeltaVector;
   end setPixelDeltaVector;

   function clone (This : in out MotionRectangle) return Java_Object_Access is
      motionRectangle : MotionRectangle_Access;
   begin
        motionRectangle := MotionRectangle_Package.Create (Rectangle_Access (MotionRectangle'Class (This).getRectangle.clone));
        motionRectangle.setPixelDeltaVector (BasicArrayList_Access (MotionRectangle'Class (This).getPixelDeltaVector.clone));
        return motionRectangle;
   end clone;

end org.allbinary.media.image.comparison.motion.MotionRectangle_Package;


