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


package body org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package is

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

   procedure addListener (listener : MyGraphicItemEventListener_Access) is
   begin
        MyGraphicItemEventService_Package.listenerList.add (Ada.Tags.Tag (listener.all'Tag), EventListener_Access (listener));
   end addListener;

   procedure removeListener (listener : MyGraphicItemEventListener_Access) is
   begin
        MyGraphicItemEventService_Package.listenerList.remove (Ada.Tags.Tag (listener.all'Tag), EventListener_Access (listener));
   end removeListener;

   --  throws Exception
   procedure fire (evt : MyGraphicItemEvent_Access) is
      listeners : Java_Object_Access_Array_Access;
      i : Integer;
   begin
        listeners := listenerList.getListenerList;
        i := 0;
        while (i) < (listeners'Length) loop
            if (listeners (i)) = (listeners ((i) + (1)).all'Tag) then
                if (evt.getCommand.compareTo (MyGraphicItemEventService_Package.SELECT_Id)) = (0) then
                    (MyGraphicItemEventListener_Access (listeners ((i) + (1)))).highlight (evt);
                elsif (evt.getCommand.compareTo (MyGraphicItemEventService_Package.DESELECT)) = (0) then
                    (MyGraphicItemEventListener_Access (listeners ((i) + (1)))).deselect_Case (evt);
                elsif (evt.getCommand.compareTo (MyGraphicItemEventService_Package.DELETE)) = (0) then
                    (MyGraphicItemEventListener_Access (listeners ((i) + (1)))).delete_Case (evt);
                elsif (evt.getCommand.compareTo (MyGraphicItemEventService_Package.DUPLICATE)) = (0) then
                    (MyGraphicItemEventListener_Access (listeners ((i) + (1)))).duplicate_Case (evt);
                elsif (evt.getCommand.compareTo (MyGraphicItemEventService_Package.ROTATE)) = (0) then
                    (MyGraphicItemEventListener_Access (listeners ((i) + (1)))).rotate_Case (evt);
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


