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


with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   function "=" (Left, Right : MotionGestureInput_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   procedure Initialize_Fields (This : in out TrackballMotionGestureFactory'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   function getInstance return TrackballMotionGestureFactory_Access is
   begin
        if (Java_Object_Access (TrackballMotionGestureFactory_Package.instance)) = (Java_Object_Access (NullUtil_Package.getInstance.NULL_OBJECT)) then
            TrackballMotionGestureFactory_Package.instance := Java_Object_Access (TrackballMotionGestureFactory_Package.Create);
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


