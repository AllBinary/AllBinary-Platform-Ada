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


package body org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package is

   procedure Initialize_Fields (This : in out DestroyedEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return DestroyedEventHandler_Access is
   begin
        return DestroyedEventHandler_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DestroyedEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DestroyedEventHandler_Access is
      This : constant DestroyedEventHandler_Access := new DestroyedEventHandler;
   begin
      DestroyedEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out DestroyedEventHandler; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer'Class) is
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        if not (This.list.contains (collidableDestroyableDamageableLayer)) then
            This.list.add (collidableDestroyableDamageableLayer);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out DestroyedEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out DestroyedEventHandler; eventListenerInterface_Param : access EventListenerInterface'Class) is
      eventListenerInterface : EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out DestroyedEventHandler; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (This.list.objectArray (index));
                collidableDestroyableDamageableLayer.onDestroyed (DestroyedEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, DestroyedEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out DestroyedEventHandler; eventObject_Param : access AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      destroyedEventListenerInterface : DestroyedEventListenerInterface_Access;
   begin
        destroyedEventListenerInterface := DestroyedEventListenerInterface_Access (eventListenerInterface);
        destroyedEventListenerInterface.onDestroyed (DestroyedEvent_Access (eventObject));
   end process;

begin
   null;
   instance := DestroyedEventHandler_Package.Create;

end org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;


