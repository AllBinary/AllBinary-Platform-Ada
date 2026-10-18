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


with org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package is

   package DisplayChangeEventHandler_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out GameLevelDisplayChangeEventListenersFactory'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out GameLevelDisplayChangeEventListenersFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameLevelDisplayChangeEventListenersFactory_Access is
      This : constant GameLevelDisplayChangeEventListenersFactory_Access := new GameLevelDisplayChangeEventListenersFactory;
   begin
      GameLevelDisplayChangeEventListenersFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameLevelDisplayChangeEventListenersFactory_Access is
   begin
        return GameLevelDisplayChangeEventListenersFactory_Package.instance;
   end getInstance;

   procedure add (This : in out GameLevelDisplayChangeEventListenersFactory; displayChangeEventListener_Param : access DisplayChangeEventListener_Package.DisplayChangeEventListener'Class) is
      displayChangeEventListener : constant DisplayChangeEventListener_Access := DisplayChangeEventListener_Access (displayChangeEventListener_Param);
   begin
        This.list.add (Java_Object_Access (displayChangeEventListener));
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (displayChangeEventListener);
   end add;

   procedure clear (This : in out GameLevelDisplayChangeEventListenersFactory) is
      displayChangeEventHandler : BasicEventHandler_Access;
      displayChangeEventListener : DisplayChangeEventListener_Access;
      index : Integer;
   begin
        displayChangeEventHandler := DisplayChangeEventHandler_Package.getInstance;
        displayChangeEventListener := null;
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            displayChangeEventListener := DisplayChangeEventListener_Access (This.list.objectArray (index));
            displayChangeEventHandler.removeListener (displayChangeEventListener);
        end loop;
        This.list.clear;
   end clear;

begin
   null;
   instance := GameLevelDisplayChangeEventListenersFactory_Package.Create;

end org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package;


