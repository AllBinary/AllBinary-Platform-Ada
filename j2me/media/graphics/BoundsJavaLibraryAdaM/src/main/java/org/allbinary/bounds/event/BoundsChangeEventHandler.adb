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


package body org.allbinary.bounds.event.BoundsChangeEventHandler_Package is

   procedure Initialize_Fields (This : in out BoundsChangeEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BoundsChangeEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BoundsChangeEventHandler_Access is
      This : constant BoundsChangeEventHandler_Access := new BoundsChangeEventHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return BasicEventHandler_Access is
   begin
        return BoundsChangeEventHandler_Package.SINGLETON;
   end getInstance;

   --  throws Exception
   procedure process (This : in out BoundsChangeEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      boundsChangeEventListener : BoundsChangeEventListener_Access;
   begin
        boundsChangeEventListener := BoundsChangeEventListener_Access (eventListenerInterface);
        boundsChangeEventListener.onBoundsChangeEvent (BoundsChangeEvent_Access (eventObject));
   end process;

   procedure getInstance is
      Java_Result : constant BasicEventHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := BoundsChangeEventHandler_Package.Create;

end org.allbinary.bounds.event.BoundsChangeEventHandler_Package;


