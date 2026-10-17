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


package body org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package is

   procedure Initialize_Fields (This : in out CancelTouchButtonInputFactory'Class) is
   begin
      null;
      This.cancelInputArray := new TouchButtonInput_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
   end Initialize_Fields;


   function getInstance return CancelTouchButtonInputFactory_Access is
   begin
        if (CancelTouchButtonInputFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            CancelTouchButtonInputFactory_Package.instance := CancelTouchButtonInputFactory_Package.Create;
        end if;
        return CancelTouchButtonInputFactory_Access (CancelTouchButtonInputFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out CancelTouchButtonInputFactory'Class) is
      basicTouchInputFactory : BasicTouchInputFactory_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        basicTouchInputFactory := BasicTouchInputFactory_Package.getInstance;
        for index in reverse 0 .. (This.cancelInputArray'Length) - (1) loop
            This.cancelInputArray (index) := basicTouchInputFactory.NONE;
        end loop;
        This.cancelInputArray (basicTouchInputFactory.UP.getSourceId) := basicTouchInputFactory.DOWN;
        This.cancelInputArray (basicTouchInputFactory.DOWN.getSourceId) := basicTouchInputFactory.UP;
        This.cancelInputArray (basicTouchInputFactory.LEFT.getSourceId) := basicTouchInputFactory.RIGHT;
        This.cancelInputArray (basicTouchInputFactory.RIGHT.getSourceId) := basicTouchInputFactory.LEFT;
   end Initialize;

   function Create return CancelTouchButtonInputFactory_Access is
      This : constant CancelTouchButtonInputFactory_Access := new CancelTouchButtonInputFactory;
   begin
      CancelTouchButtonInputFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getCancel (This : in out CancelTouchButtonInputFactory; touchButtonInput : TouchButtonInput_Access) return TouchButtonInput_Access is
   begin
        return This.cancelInputArray (touchButtonInput.getSourceId);
   end getCancel;

   procedure getCancel (This : in out CancelTouchButtonInputFactory; touchButtonInput : TouchButtonInput_Access) is
      Java_Result : constant TouchButtonInput_Access := CancelTouchButtonInputFactory'Class (This).getCancel (touchButtonInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCancel;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;


