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


package body org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener_Package is

   procedure Initialize_Fields (This : in out ResolveCompleteMotionGestureListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ResolveCompleteMotionGestureListener'Class) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (To_Unbounded_String ("MotionGesture to CompleteMotionGesture Reciever"), ResolveCompleteMotionGestureListener_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        CompleteMotionGestureInputEventHandler_Package.getInstance.addListener (GameKeyFromMotionGestureEventListener_Package.Create);
   end Initialize;

   function Create return ResolveCompleteMotionGestureListener_Access is
      This : constant ResolveCompleteMotionGestureListener_Access := new ResolveCompleteMotionGestureListener;
   begin
      ResolveCompleteMotionGestureListener_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure onMotionGestureCompleted (This : in out ResolveCompleteMotionGestureListener; list_Param : access BasicArrayList'Class) is
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      configuration : MotionGestureConfiguration_Access;
      commandActionsList : BasicArrayList_Access;
      size : Integer;
      association : MotionGestureToMotionGestureActionAssociation_Access;
      completeMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent_Access;
      index : Integer;
   begin
        configuration := MotionGestureConfigurationFactory_Package.getInstance;
        commandActionsList := configuration.getAssociateCommandActionsList;
        size := commandActionsList.size;
        for index in reverse 0 .. (size) - (1) loop
            association := MotionGestureToMotionGestureActionAssociation_Access (commandActionsList.objectArray (index));
            if (association.isMotionGestureArrayEquals (list)) = (True) then
                completeMotionGestureInputEvent := GameKeyCompleteMotionGestureInputEvent_Access (association.getCommandAction);
                CompleteMotionGestureInputEventHandler_Package.getInstance.fireEvent (completeMotionGestureInputEvent);
                exit;
            end if;
        end loop;
   end onMotionGestureCompleted;

end org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener_Package;


