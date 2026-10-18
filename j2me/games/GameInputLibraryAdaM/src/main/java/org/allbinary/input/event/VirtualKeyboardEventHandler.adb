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


with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package body org.allbinary.input.event.VirtualKeyboardEventHandler_Package is

   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   procedure Initialize_Fields (This : in out VirtualKeyboardEventHandler'Class) is
   begin
      null;
      This.SHOW_EVENT := VirtualKeyboardEvent_Package.Create (BooleanFactory_Package.getInstance.TRUE);
      This.HIDE_EVENT := VirtualKeyboardEvent_Package.Create (BooleanFactory_Package.getInstance.FALSE);
   end Initialize_Fields;


   procedure Initialize (This : in out VirtualKeyboardEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return VirtualKeyboardEventHandler_Access is
      This : constant VirtualKeyboardEventHandler_Access := new VirtualKeyboardEventHandler;
   begin
      VirtualKeyboardEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return VirtualKeyboardEventHandler_Access is
   begin
        return VirtualKeyboardEventHandler_Package.gameKeyEventHandler;
   end getInstance;

   --  throws Exception
   procedure process (This : in out VirtualKeyboardEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      virtualKeyboardEventListenerInterface : VirtualKeyboardEventListenerInterface_Access;
   begin
        virtualKeyboardEventListenerInterface := VirtualKeyboardEventListenerInterface_Access (eventListenerInterface);
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent (VirtualKeyboardEvent_Access (eventObject));
   end process;

   procedure open (This : in out VirtualKeyboardEventHandler) is
   begin
        begin
            Java_Sleep (120);
            VirtualKeyboardEventHandler'Class (This).fireEvent (This.SHOW_EVENT);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, VirtualKeyboardEventHandler_Access'(This'Unchecked_Access), To_Unbounded_String ("open"), e);
                end;
        end;
   end open;

   --  throws Exception
   procedure close (This : in out VirtualKeyboardEventHandler) is
   begin
        begin
            Java_Sleep (120);
            VirtualKeyboardEventHandler'Class (This).fireEvent (This.HIDE_EVENT);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, VirtualKeyboardEventHandler_Access'(This'Unchecked_Access), This.commonStrings.CLOSE, e);
                end;
        end;
   end close;

begin
   null;
   gameKeyEventHandler := VirtualKeyboardEventHandler_Package.Create;

end org.allbinary.input.event.VirtualKeyboardEventHandler_Package;


