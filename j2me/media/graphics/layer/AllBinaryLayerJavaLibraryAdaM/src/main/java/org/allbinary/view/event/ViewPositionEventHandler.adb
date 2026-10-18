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


with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.view.event.ViewPositionEvent_Package; use org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.view.event.ViewPositionEventListenerInterface_Package; use org.allbinary.view.event.ViewPositionEventListenerInterface_Package;

package body org.allbinary.view.event.ViewPositionEventHandler_Package is

   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out ViewPositionEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return ViewPositionEventHandler_Access is
   begin
        return ViewPositionEventHandler_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out ViewPositionEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ViewPositionEventHandler_Access is
      This : constant ViewPositionEventHandler_Access := new ViewPositionEventHandler;
   begin
      ViewPositionEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out ViewPositionEventHandler; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if not (This.list.contains (Java_Object_Access (layerInterface))) then
            This.list.add (Java_Object_Access (layerInterface));
        end if;
   end addListener;

   procedure removeAllListeners (This : in out ViewPositionEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out ViewPositionEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (Java_Object_Access (eventListenerInterface));
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out ViewPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      layerInterface : AllBinaryLayer_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                layerInterface := AllBinaryLayer_Access (This.list.objectArray (index));
                layerInterface.onChangeEvent (ViewPositionEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ViewPositionEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out ViewPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      viewPositionEventListenerInterface : ViewPositionEventListenerInterface_Access;
   begin
        viewPositionEventListenerInterface := (ViewPositionEventListenerInterface_Access (eventListenerInterface));
        viewPositionEventListenerInterface.onChangeEvent (ViewPositionEvent_Access (eventObject));
   end process;

begin
   null;
   SINGLETON := ViewPositionEventHandler_Package.Create;

end org.allbinary.view.event.ViewPositionEventHandler_Package;


