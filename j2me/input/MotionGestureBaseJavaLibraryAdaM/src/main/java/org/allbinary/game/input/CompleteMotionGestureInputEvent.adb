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


package body org.allbinary.game.input.CompleteMotionGestureInputEvent_Package is

   procedure Initialize_Fields (This : in out CompleteMotionGestureInputEvent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      This.motionGestureInput := TouchMotionGestureFactory_Package.getInstance.NO_MOTION;
   end Initialize_Fields;


   procedure Initialize (This : in out CompleteMotionGestureInputEvent'Class; name : Unbounded_String; motionGestureInput : MotionGestureInput_Access) is
      commonStrings : CommonStrings_Access;
   begin
        AllBinaryEventObject_Package.Initialize (This, motionGestureInput);
        Initialize_Fields (This);
        This.setName (name);
        begin
            This.setMotionGestureInput (motionGestureInput);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("InputToGameKeyEventAction"), e);
                end;
        end;
   end Initialize;

   function Create (name : Unbounded_String; motionGestureInput : MotionGestureInput_Access) return CompleteMotionGestureInputEvent_Access is
      This : constant CompleteMotionGestureInputEvent_Access := new CompleteMotionGestureInputEvent;
   begin
      CompleteMotionGestureInputEvent_Package.Initialize (This.all, name, motionGestureInput);
      return This;
   end Create;

   procedure setName (This : in out CompleteMotionGestureInputEvent; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getName (This : in out CompleteMotionGestureInputEvent) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setMotionGestureInput (This : in out CompleteMotionGestureInputEvent; motionGestureInput : MotionGestureInput_Access) is
   begin
        This.motionGestureInput := motionGestureInput;
   end setMotionGestureInput;

   function getMotionGestureInput (This : in out CompleteMotionGestureInputEvent) return MotionGestureInput_Access is
   begin
        return This.motionGestureInput;
   end getMotionGestureInput;

end org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;


