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


package body org.allbinary.input.motion.gesture.MotionGestureInput_Package is

   procedure Initialize_Fields (This : in out MotionGestureInput'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionGestureInput'Class; id : Integer; name : Unbounded_String) is
      inputFactory : InputFactory_Access;
   begin
        Input_Package.Initialize (This, id, name);
        inputFactory := InputFactory_Package.getInstance;
        inputFactory.add (This.getId, This'Unchecked_Access);
   end Initialize;

   function Create (id : Integer; name : Unbounded_String) return MotionGestureInput_Access is
      This : constant MotionGestureInput_Access := new MotionGestureInput;
   begin
      MotionGestureInput_Package.Initialize (This.all, id, name);
      return This;
   end Create;

end org.allbinary.input.motion.gesture.MotionGestureInput_Package;


