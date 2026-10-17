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


package body org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package is

   procedure Initialize_Fields (This : in out MyCanvasEventService'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MyCanvasEventService'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MyCanvasEventService_Access is
      This : constant MyCanvasEventService_Access := new MyCanvasEventService;
   begin
      MyCanvasEventService_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (listener : MyCanvasEventListener_Access) is
   begin
        MyCanvasEventService_Package.listenerList.add (Ada.Tags.Tag (listener.all'Tag), EventListener_Access (listener));
   end addListener;

   procedure removeListener (listener : MyCanvasEventListener_Access) is
   begin
        MyCanvasEventService_Package.listenerList.remove (Ada.Tags.Tag (listener.all'Tag), EventListener_Access (listener));
   end removeListener;

   --  throws Exception
   procedure fire (evt : MyCanvasEvent_Access) is
      listeners : Java_Object_Access_Array_Access;
      i : Integer;
   begin
        listeners := listenerList.getListenerList;
        i := 0;
        while (i) < (listeners'Length) loop
            if (listeners (i)) = (listeners ((i) + (1)).all'Tag) then
                if (evt.getCommand.compareTo (MyCanvasEventService_Package.DELETE)) = (0) then
                    (MyCanvasEventListener_Access (listeners ((i) + (1)))).delete_Case (evt);
                elsif (evt.getCommand.compareTo (MyCanvasEventService_Package.DUPLICATE)) = (0) then
                    (MyCanvasEventListener_Access (listeners ((i) + (1)))).duplicate_Case (evt);
                elsif (evt.getCommand.compareTo (MyCanvasEventService_Package.SELECT_Id)) = (0) then
                    (MyCanvasEventListener_Access (listeners ((i) + (1)))).select_Case_Id (evt);
                elsif (evt.getCommand.compareTo (MyCanvasEventService_Package.ROTATE)) = (0) then
                    (MyCanvasEventListener_Access (listeners ((i) + (1)))).rotate_Case (evt);
                elsif (evt.getCommand.compareTo (MyCanvasEventService_Package.EXPLODE)) = (0) then
                    (MyCanvasEventListener_Access (listeners ((i) + (1)))).explode_Case (evt);
                elsif (evt.getCommand.compareTo (MyCanvasEventService_Package.AUTOEXPLODE)) = (0) then
                    (MyCanvasEventListener_Access (listeners ((i) + (1)))).autoExplode_Case (evt);
                elsif (evt.getCommand.compareTo (MyCanvasEventService_Package.CENTER)) = (0) then
                    (MyCanvasEventListener_Access (listeners ((i) + (1)))).center_Case (evt);
                end if;
            end if;
            i := (i) + (2);
        end loop;
   end fire;

begin
   null;
   listenerList := EventListenerList_Package.Create;
   DELETE := To_Unbounded_String ("delete");
   DUPLICATE := To_Unbounded_String ("duplicate");
   SELECT_Id := To_Unbounded_String ("select");
   ROTATE := To_Unbounded_String ("rotate");
   EXPLODE := To_Unbounded_String ("explode");
   AUTOEXPLODE := To_Unbounded_String ("autoExplode");
   CENTER := To_Unbounded_String ("center");

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;


