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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.logic.util.event.handler.BasicEventHandler_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out BasicEventHandler'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
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
                stringBuffer.append (StringUtil_Package.getInstance.toString (Java_Object_Access (eventListenerInterface)));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, BasicEventHandler_Access'(This'Unchecked_Access), commonStrings.TOSTRING, e);
                    end;
            end;
            index := index + 1;
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure removeAllListeners (This : in out BasicEventHandler) is
   begin
        This.eventListenerInterfaceList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end removeAllListeners;

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
      index : Integer;
      eventListenerInterface : EventListenerInterface_Access;
      commonStrings : CommonStrings_Access;
   begin
        index := 0;
        eventListenerInterface := null;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.eventListenerInterfaceList.objectArray (index));
                BasicEventHandler'Class (This).process (eventObject, eventListenerInterface);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, BasicEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
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

begin
   null;
   PERFORMANCE_MESSAGE := To_Unbounded_String ("Use Custom onEvent Methods for needed optimization");

end org.allbinary.logic.util.event.handler.BasicEventHandler_Package;


