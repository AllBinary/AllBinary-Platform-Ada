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


package body org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package is

   procedure Initialize_Fields (This : in out AnalogControllerConfigurationEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return AnalogControllerConfigurationEventHandler_Access is
   begin
        return AnalogControllerConfigurationEventHandler_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AnalogControllerConfigurationEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AnalogControllerConfigurationEventHandler_Access is
      This : constant AnalogControllerConfigurationEventHandler_Access := new AnalogControllerConfigurationEventHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out AnalogControllerConfigurationEventHandler; analogControllerConfigurationEventListenerInterface : AnalogControllerConfigurationEventListenerInterface_Access) is
   begin
        if not (This.list.contains (analogControllerConfigurationEventListenerInterface)) then
            This.list.add (analogControllerConfigurationEventListenerInterface);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out AnalogControllerConfigurationEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out AnalogControllerConfigurationEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out AnalogControllerConfigurationEventHandler; eventObject : AllBinaryEventObject_Access) is
      playerGameInput : AnalogControllerConfigurationEventListenerInterface_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                playerGameInput := AnalogControllerConfigurationEventListenerInterface_Access (This.list.objectArray (index));
                playerGameInput.onAnalogControllerConfigurationEvent (AnalogControllerConfigurationEvent_Access (eventObject));
            exception
                when e : others =>
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, EventStrings_Package.getInstance.FIRE_EVENT, e);
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out AnalogControllerConfigurationEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      analogControllerConfigurationEventListenerInterface : AnalogControllerConfigurationEventListenerInterface_Access;
   begin
        analogControllerConfigurationEventListenerInterface := (AnalogControllerConfigurationEventListenerInterface_Access (eventListenerInterface));
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent (AnalogControllerConfigurationEvent_Access (eventObject));
   end process;

   procedure getInstance is
      Java_Result : constant AnalogControllerConfigurationEventHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AnalogControllerConfigurationEventHandler_Package.Create;

end org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package;


