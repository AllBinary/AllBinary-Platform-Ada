-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.logic.util.event.NullEventListener_Package is

   procedure Initialize_Fields (This : in out NullEventListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullEventListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullEventListener_Access is
      This : constant NullEventListener_Access := new NullEventListener;
   begin
      NullEventListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out NullEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        null;
   end onEvent;

begin
   null;
   NULL_EVENT_LISTENER := NullEventListener_Package.Create;

end org.allbinary.logic.util.event.NullEventListener_Package;


