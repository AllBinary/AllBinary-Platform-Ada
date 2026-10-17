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


   procedure Initialize (This : in out MotionRectangle'Class; rectangle : Rectangle_Access) is
   begin
      Initialize_Fields (This);
        This.setRectangle (rectangle);
        This.setPixelDeltaVector (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (rectangle : Rectangle_Access) return MotionRectangle_Access is
      This : constant MotionRectangle_Access := new MotionRectangle;
   begin
      MotionRectangle_Package.Initialize (This.all, rectangle);
      return This;
   end Create;

   function getRectangle (This : in out MotionRectangle) return Rectangle_Access is
   begin
        return This.rectangle;
   end getRectangle;

   procedure setRectangle (This : in out MotionRectangle; rectangle : Rectangle_Access) is
   begin
        This.rectangle := rectangle;
   end setRectangle;

   function getPixelDeltaVector (This : in out MotionRectangle) return BasicArrayList_Access is
   begin
        return This.pixelDeltaVector;
   end getPixelDeltaVector;

   procedure setPixelDeltaVector (This : in out MotionRectangle; pixelDeltaVector : BasicArrayList_Access) is
   begin
        This.pixelDeltaVector := pixelDeltaVector;
   end setPixelDeltaVector;

   function clone (This : in out MotionRectangle) return Java_Object_Access is
      motionRectangle : MotionRectangle_Access;
   begin
        motionRectangle := MotionRectangle_Package.Create (Rectangle_Access (This.getRectangle.clone));
        motionRectangle.setPixelDeltaVector (BasicArrayList_Access (This.getPixelDeltaVector.clone));
        return motionRectangle;
   end clone;

end org.allbinary.media.image.comparison.motion.MotionRectangle_Package;


