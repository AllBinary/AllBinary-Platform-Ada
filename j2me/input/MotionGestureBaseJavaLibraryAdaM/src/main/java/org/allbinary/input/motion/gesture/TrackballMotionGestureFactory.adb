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


package body org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package is

   procedure Initialize_Fields (This : in out TrackballMotionGestureFactory'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   function getInstance return TrackballMotionGestureFactory_Access is
   begin
        if (TrackballMotionGestureFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            TrackballMotionGestureFactory_Package.instance := TrackballMotionGestureFactory_Package.Create;
        end if;
        return TrackballMotionGestureFactory_Access (TrackballMotionGestureFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out TrackballMotionGestureFactory'Class) is
      MAX : Integer;
   begin
      Initialize_Fields (This);
        MAX := InputFactory_Package.getInstance.MAX;
        This.LEFT := MotionGestureInput_Package.Create ((MAX) - (26), To_Unbounded_String ("L Trackball"));
        This.RIGHT := MotionGestureInput_Package.Create ((MAX) - (27), To_Unbounded_String ("R Trackball"));
        This.UP := MotionGestureInput_Package.Create ((MAX) - (28), To_Unbounded_String ("Up Trackball"));
        This.DOWN := MotionGestureInput_Package.Create ((MAX) - (29), To_Unbounded_String ("D Trackball"));
   end Initialize;

   function Create return TrackballMotionGestureFactory_Access is
      This : constant TrackballMotionGestureFactory_Access := new TrackballMotionGestureFactory;
   begin
      TrackballMotionGestureFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package;


