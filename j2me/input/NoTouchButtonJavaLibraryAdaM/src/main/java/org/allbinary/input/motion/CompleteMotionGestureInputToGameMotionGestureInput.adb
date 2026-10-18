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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;

package body org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   procedure Initialize_Fields (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CompleteMotionGestureInputToGameMotionGestureInput_Access is
      This : constant CompleteMotionGestureInputToGameMotionGestureInput_Access := new CompleteMotionGestureInputToGameMotionGestureInput;
   begin
      CompleteMotionGestureInputToGameMotionGestureInput_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CompleteMotionGestureInputToGameMotionGestureInput_Access is
   begin
        return CompleteMotionGestureInputToGameMotionGestureInput_Package.instance;
   end getInstance;

   procedure init (This : in out CompleteMotionGestureInputToGameMotionGestureInput) is
   begin
        PreLogUtil_Package.put (To_Unbounded_String ("No Touch Button = No Compound Motion Gestures"), CompleteMotionGestureInputToGameMotionGestureInput_Access'(This'Unchecked_Access), This.commonStrings.INIT);
   end init;

begin
   null;
   instance := CompleteMotionGestureInputToGameMotionGestureInput_Package.Create;

end org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;


