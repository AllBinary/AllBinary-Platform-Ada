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


package body org.allbinary.input.gyro.OrientationMotionGestureFactory_Package is

   procedure Initialize_Fields (This : in out OrientationMotionGestureFactory'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   function getInstance return OrientationMotionGestureFactory_Access is
   begin
        if (OrientationMotionGestureFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            OrientationMotionGestureFactory_Package.instance := OrientationMotionGestureFactory_Package.Create;
        end if;
        return OrientationMotionGestureFactory_Access (OrientationMotionGestureFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out OrientationMotionGestureFactory'Class) is
      MAX : Integer;
   begin
      Initialize_Fields (This);
        MAX := InputFactory_Package.getInstance.MAX;
        This.LEFT := MotionGestureInput_Package.Create ((MAX) - (20), To_Unbounded_String ("Left Orient"));
        This.RIGHT := MotionGestureInput_Package.Create ((MAX) - (21), To_Unbounded_String ("Right Orient"));
        This.UP := MotionGestureInput_Package.Create ((MAX) - (22), To_Unbounded_String ("Up Orient"));
        This.DOWN := MotionGestureInput_Package.Create ((MAX) - (23), To_Unbounded_String ("Down Orient"));
        This.ROLL_LEFT := MotionGestureInput_Package.Create ((MAX) - (24), To_Unbounded_String ("Roll Left"));
        This.ROLL_RIGHT := MotionGestureInput_Package.Create ((MAX) - (25), To_Unbounded_String ("Roll Right"));
   end Initialize;

   function Create return OrientationMotionGestureFactory_Access is
      This : constant OrientationMotionGestureFactory_Access := new OrientationMotionGestureFactory;
   begin
      OrientationMotionGestureFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.gyro.OrientationMotionGestureFactory_Package;


