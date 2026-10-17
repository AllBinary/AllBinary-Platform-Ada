-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.input.event.RawKeyEventHandler_Package is

   procedure Initialize_Fields (This : in out RawKeyEventHandler'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   function getInstance return RawKeyEventHandler_Access is
   begin
        return RawKeyEventHandler_Package.instance;
   end getInstance;

   procedure Initialize (This : in out RawKeyEventHandler'Class) is
   begin
      Initialize_Fields (This);
        This.eventListenerInterfaceList := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return RawKeyEventHandler_Access is
      This : constant RawKeyEventHandler_Access := new RawKeyEventHandler;
   begin
      RawKeyEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure removeAllListeners (This : in out RawKeyEventHandler) is
   begin
        This.eventListenerInterfaceList := BasicArrayListD_Package.Create;
   end removeAllListeners;

   procedure addListeners (This : in out RawKeyEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      eventListenerInterface : RawKeyEventListener_Access;
      size : Integer;
      index : Integer;
   begin
        eventListenerInterface := null;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            eventListenerInterface := RawKeyEventListener_Access (vector.get (index));
            This.addListener (eventListenerInterface);
        end loop;
   end addListeners;

   procedure addListenerSingleThreaded (This : in out RawKeyEventHandler; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class) is
      eventListenerInterface : constant RawKeyEventListener_Access := RawKeyEventListener_Access (eventListenerInterface_Param);
   begin
        if not (This.eventListenerInterfaceList.contains (eventListenerInterface)) then
            This.eventListenerInterfaceList.add (eventListenerInterface);
        end if;
   end addListenerSingleThreaded;

   procedure addListener (This : in out RawKeyEventHandler; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class) is
      eventListenerInterface : constant RawKeyEventListener_Access := RawKeyEventListener_Access (eventListenerInterface_Param);
   begin
        if not (This.eventListenerInterfaceList.contains (eventListenerInterface)) then
            This.eventListenerInterfaceList.add (eventListenerInterface);
        end if;
   end addListener;

   procedure removeListenerSingleThreaded (This : in out RawKeyEventHandler; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class) is
      eventListenerInterface : constant RawKeyEventListener_Access := RawKeyEventListener_Access (eventListenerInterface_Param);
   begin
        This.eventListenerInterfaceList.remove (eventListenerInterface);
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out RawKeyEventHandler; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class) is
      eventListenerInterface : constant RawKeyEventListener_Access := RawKeyEventListener_Access (eventListenerInterface_Param);
   begin
        This.eventListenerInterfaceList.remove (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out RawKeyEventHandler; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
      eventListenerInterface : RawKeyEventListener_Access;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        eventListenerInterface := null;
        index := 0;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := RawKeyEventListener_Access (This.eventListenerInterfaceList.get (index));
                This.process (keyCode, deviceId, repeated, eventListenerInterface);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, RawKeyEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
            index := index + 1;
        end loop;
   end fireEvent;

   --  throws Exception
   procedure process (This : in out RawKeyEventHandler; keyCode : Integer; deviceId : Integer; repeated : Boolean; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class) is
      eventListenerInterface : constant RawKeyEventListener_Access := RawKeyEventListener_Access (eventListenerInterface_Param);
   begin
        eventListenerInterface.onEventRaw (keyCode, deviceId, repeated);
   end process;

   function getEventListenerInterfaceListP (This : in out RawKeyEventHandler) return BasicArrayList_Access is
   begin
        return This.eventListenerInterfaceList;
   end getEventListenerInterfaceListP;

   function toString (This : in out RawKeyEventHandler) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      eventListenerInterface : RawKeyEventListener_Access;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (RawKeyEventHandler_Package.TOTAL_LISTENERS);
        stringBuffer.appendint (This.eventListenerInterfaceList.size);
        eventListenerInterface := null;
        index := 0;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := RawKeyEventListener_Access (This.eventListenerInterfaceList.get (index));
                stringBuffer.append (RawKeyEventHandler_Package.LISTENER_LABEL);
                stringBuffer.append (eventListenerInterface.toString);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, RawKeyEventHandler_Access'(This'Unchecked_Access), commonStrings.TOSTRING, e);
                    end;
            end;
            index := index + 1;
        end loop;
        return stringBuffer.toString;
   end toString;

begin
   null;
   instance := RawKeyEventHandler_Package.Create;
   TOTAL_LISTENERS := To_Unbounded_String ("Total Listeners: ");
   LISTENER_LABEL := To_Unbounded_String (" Listener: ");

end org.allbinary.game.input.event.RawKeyEventHandler_Package;


