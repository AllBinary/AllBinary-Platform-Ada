-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify


with org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package; use org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package;
with org.allbinary.game.layer.capital.event.CapitalEvent_Package; use org.allbinary.game.layer.capital.event.CapitalEvent_Package;

package body org.allbinary.game.layer.capital.event.CapitalEventHandler_Package is

   procedure Initialize_Fields (This : in out CapitalEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CapitalEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CapitalEventHandler_Access is
      This : constant CapitalEventHandler_Access := new CapitalEventHandler;
   begin
      CapitalEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out CapitalEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      capitalEventListenerInterface : CapitalEventListenerInterface_Access;
   begin
        capitalEventListenerInterface := (CapitalEventListenerInterface_Access (eventListenerInterface));
        capitalEventListenerInterface.onCapitalChangeEvent (CapitalEvent_Access (eventObject));
   end process;

end org.allbinary.game.layer.capital.event.CapitalEventHandler_Package;


