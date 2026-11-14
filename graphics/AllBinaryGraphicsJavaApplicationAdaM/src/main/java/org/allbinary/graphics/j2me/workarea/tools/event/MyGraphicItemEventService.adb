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


with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;

package body org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package is

   subtype MyGraphicItemEventListener_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access;
   function "=" (Left, Right : MyGraphicItemEventListener_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   subtype MyGraphicItemEventListener_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array;
   function "=" (Left, Right : MyGraphicItemEventListener_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   subtype MyGraphicItemEventListener_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEventListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   subtype MyGraphicItemEventListener_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : MyGraphicItemEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   subtype MyGraphicItemEventListener_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   subtype MyGraphicItemEvent_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access;
   function "=" (Left, Right : MyGraphicItemEvent_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References."=";
   subtype MyGraphicItemEvent_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array;
   function "=" (Left, Right : MyGraphicItemEvent_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References."=";
   subtype MyGraphicItemEvent_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEvent_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References."=";
   subtype MyGraphicItemEvent_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MyGraphicItemEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References."=";
   subtype MyGraphicItemEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References."=";
   procedure Initialize_Fields (This : in out MyGraphicItemEventService'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MyGraphicItemEventService'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MyGraphicItemEventService_Access is
      This : constant MyGraphicItemEventService_Access := new MyGraphicItemEventService;
   begin
      MyGraphicItemEventService_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (listener_Param : access MyGraphicItemEventListener_Package.MyGraphicItemEventListener'Class) is
      listener : constant MyGraphicItemEventListener_Access := MyGraphicItemEventListener_Access (listener_Param);
   begin
        MyGraphicItemEventService_Package.listenerList.add (Ada.Tags.Tag (listener.all'Tag), EventListener_Access (listener));
   end addListener;

   procedure removeListener (listener_Param : access MyGraphicItemEventListener_Package.MyGraphicItemEventListener'Class) is
      listener : constant MyGraphicItemEventListener_Access := MyGraphicItemEventListener_Access (listener_Param);
   begin
        MyGraphicItemEventService_Package.listenerList.remove (Ada.Tags.Tag (listener.all'Tag), EventListener_Access (listener));
   end removeListener;

   --  throws Exception
   procedure fire (evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is
      evt : constant MyGraphicItemEvent_Access := MyGraphicItemEvent_Access (evt_Param);
      listeners : Java_Object_Access_Array_Access;
      i : Integer;
   begin
        listeners := listenerList.getListenerList;
        i := 0;
        while (i) < (listeners'Length) loop
            if (Java_Object_Access (listeners (i))) = (Java_Object_Access (listeners ((i) + (1)).all'Tag)) then
                if (Java_Compare_To (evt.getCommand, MyGraphicItemEventService_Package.SELECT_Id)) = (0) then
                    MyGraphicItemEventListener_Access (listeners ((i) + (1))).highlight (evt);
                elsif (Java_Compare_To (evt.getCommand, MyGraphicItemEventService_Package.DESELECT)) = (0) then
                    MyGraphicItemEventListener_Access (listeners ((i) + (1))).deselect (evt);
                elsif (Java_Compare_To (evt.getCommand, MyGraphicItemEventService_Package.DELETE)) = (0) then
                    MyGraphicItemEventListener_Access (listeners ((i) + (1))).delete (evt);
                elsif (Java_Compare_To (evt.getCommand, MyGraphicItemEventService_Package.DUPLICATE)) = (0) then
                    MyGraphicItemEventListener_Access (listeners ((i) + (1))).duplicate (evt);
                elsif (Java_Compare_To (evt.getCommand, MyGraphicItemEventService_Package.ROTATE)) = (0) then
                    MyGraphicItemEventListener_Access (listeners ((i) + (1))).rotate (evt);
                end if;
            end if;
            i := (i) + (2);
        end loop;
   end fire;

begin
   null;
   listenerList := EventListenerList_Package.Create;
   DELETE := To_Unbounded_String ("delete");
   DESELECT := To_Unbounded_String ("deselect");
   SELECT_Id := To_Unbounded_String ("select");
   DUPLICATE := To_Unbounded_String ("duplicate");
   ROTATE := To_Unbounded_String ("rotate");

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;


