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


package body org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package is

   procedure Initialize_Fields (This : in out GeographicMapEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return GeographicMapEventHandler_Access is
   begin
        return GeographicMapEventHandler_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GeographicMapEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GeographicMapEventHandler_Access is
      This : constant GeographicMapEventHandler_Access := new GeographicMapEventHandler;
   begin
      GeographicMapEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out GeographicMapEventHandler; gameLayer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      gameLayer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (gameLayer_Param);
   begin
        if not (This.list.contains (gameLayer)) then
            This.list.add (gameLayer);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out GeographicMapEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out GeographicMapEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   procedure fireEvent (This : in out GeographicMapEventHandler) is
      gameLayer : AllBinaryGameLayer_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                gameLayer := AllBinaryGameLayer_Access (This.list.get (index));
                gameLayer.move;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, GeographicMapEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
   end fireEvent;

begin
   null;
   instance := GeographicMapEventHandler_Package.Create;

end org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package;


