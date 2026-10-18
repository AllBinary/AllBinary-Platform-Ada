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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package body org.allbinary.logic.util.event.handler.BasicEventHandler_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   procedure Initialize_Fields (This : in out BasicEventHandler'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.eventStrings := EventStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicEventHandler'Class) is
   begin
      Initialize_Fields (This);
        This.eventListenerInterfaceList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create return BasicEventHandler_Access is
      This : constant BasicEventHandler_Access := new BasicEventHandler;
   begin
      BasicEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure removeAllListeners (This : in out BasicEventHandler) is
   begin
        This.eventListenerInterfaceList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end removeAllListeners;

   procedure addListeners (This : in out BasicEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      eventListenerInterface : EventListenerInterface_Access;
      size : Integer;
      index : Integer;
   begin
        eventListenerInterface := null;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            eventListenerInterface := EventListenerInterface_Access (vector.get (index));
            BasicEventHandler'Class (This).addListenerInterface (eventListenerInterface);
        end loop;
   end addListeners;

   procedure removeListeners (This : in out BasicEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      eventListenerInterface : EventListenerInterface_Access;
      size : Integer;
      index : Integer;
   begin
        eventListenerInterface := null;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            eventListenerInterface := EventListenerInterface_Access (vector.get (index));
            BasicEventHandler'Class (This).removeListener (eventListenerInterface);
        end loop;
   end removeListeners;

   procedure addListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        if not (This.eventListenerInterfaceList.contains (Java_Object_Access (eventListenerInterface))) then
            This.eventListenerInterfaceList.add (Java_Object_Access (eventListenerInterface));
        end if;
   end addListenerSingleThreaded;

   procedure addListenerInterface (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        if not (This.eventListenerInterfaceList.contains (Java_Object_Access (eventListenerInterface))) then
            This.eventListenerInterfaceList.add (Java_Object_Access (eventListenerInterface));
        end if;
   end addListenerInterface;

   procedure removeListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.eventListenerInterfaceList.remove (Java_Object_Access (eventListenerInterface));
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.eventListenerInterfaceList.remove (Java_Object_Access (eventListenerInterface));
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out BasicEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : EventListenerInterface_Access;
      index : Integer;
   begin
        eventListenerInterface := null;
        index := 0;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.eventListenerInterfaceList.get (index));
                BasicEventHandler'Class (This).process (eventObject, eventListenerInterface);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicEventHandler_Access'(This'Unchecked_Access), This.eventStrings.FIRE_EVENT, e);
                    end;
            end;
            index := index + 1;
        end loop;
   end fireEvent;

   --  throws Exception
   procedure process (This : in out BasicEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        eventListenerInterface.onEvent (eventObject);
   end process;

   function getEventListenerInterfaceListP (This : in out BasicEventHandler) return BasicArrayList_Access is
   begin
        return This.eventListenerInterfaceList;
   end getEventListenerInterfaceListP;

   function toString (This : in out BasicEventHandler) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      eventListenerInterface : EventListenerInterface_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.eventStrings.TOTAL_LISTENERS);
        stringBuffer.appendint (This.eventListenerInterfaceList.size);
        eventListenerInterface := null;
        index := 0;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.eventListenerInterfaceList.get (index));
                stringBuffer.append (This.eventStrings.LISTENER_LABEL);
                stringBuffer.append (Java_Object'Class (eventListenerInterface.all).toString);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicEventHandler_Access'(This'Unchecked_Access), This.commonStrings.TOSTRING, e);
                    end;
            end;
            index := index + 1;
        end loop;
        return stringBuffer.toString;
   end toString;

end org.allbinary.logic.util.event.handler.BasicEventHandler_Package;


