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


package body org.allbinary.logic.util.event.handler.BasicEventHandler_Package is

   procedure Initialize_Fields (This : in out BasicEventHandler'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicEventHandler'Class) is
   begin
      Initialize_Fields (This);
        This.eventListenerInterfaceList := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return BasicEventHandler_Access is
      This : constant BasicEventHandler_Access := new BasicEventHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function toString (This : in out BasicEventHandler) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      LISTENER : Unbounded_String;
      eventListenerInterface : EventListenerInterface_Access;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        LISTENER := To_Unbounded_String (" Listener: ");
        stringBuffer.append (To_Unbounded_String ("Total Listeners: "));
        stringBuffer.appendint (This.eventListenerInterfaceList.size);
        eventListenerInterface := null;
        index := 0;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.eventListenerInterfaceList.objectArray (index));
                stringBuffer.append (LISTENER);
                stringBuffer.append (StringUtil_Package.getInstance.toString (eventListenerInterface));
            exception
                when e : others =>
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.TOSTRING, e);
            end;
            index := index + 1;
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure removeAllListeners (This : in out BasicEventHandler) is
   begin
        This.eventListenerInterfaceList := BasicArrayListD_Package.Create;
   end removeAllListeners;

   procedure addListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        if not (This.eventListenerInterfaceList.contains (eventListenerInterface)) then
            This.eventListenerInterfaceList.add (eventListenerInterface);
        end if;
   end addListenerSingleThreaded;

   procedure addListenerInterface (This : in out BasicEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        if not (This.eventListenerInterfaceList.contains (eventListenerInterface)) then
            This.eventListenerInterfaceList.add (eventListenerInterface);
        end if;
   end addListenerInterface;

   procedure removeListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.eventListenerInterfaceList.remove (eventListenerInterface);
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out BasicEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.eventListenerInterfaceList.remove (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out BasicEventHandler; eventObject : AllBinaryEventObject_Access) is
      index : Integer;
      eventListenerInterface : EventListenerInterface_Access;
      commonStrings : CommonStrings_Access;
   begin
        index := 0;
        eventListenerInterface := null;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.eventListenerInterfaceList.objectArray (index));
                This.process (eventObject, eventListenerInterface);
            exception
                when e : others =>
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, EventStrings_Package.getInstance.FIRE_EVENT, e);
            end;
            index := index + 1;
        end loop;
   end fireEvent;

   --  throws Exception
   procedure process (This : in out BasicEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
   begin
        eventListenerInterface.onEvent (eventObject);
   end process;

   function getEventListenerInterfaceListP (This : in out BasicEventHandler) return BasicArrayList_Access is
   begin
        return This.eventListenerInterfaceList;
   end getEventListenerInterfaceListP;

   procedure toString (This : in out BasicEventHandler) is
      Java_Result : constant Unbounded_String := BasicEventHandler'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getEventListenerInterfaceListP (This : in out BasicEventHandler) is
      Java_Result : constant BasicArrayList_Access := BasicEventHandler'Class (This).getEventListenerInterfaceListP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEventListenerInterfaceListP;

begin
   null;
   PERFORMANCE_MESSAGE := To_Unbounded_String ("Use Custom onEvent Methods for needed optimization");

end org.allbinary.logic.util.event.handler.BasicEventHandler_Package;


