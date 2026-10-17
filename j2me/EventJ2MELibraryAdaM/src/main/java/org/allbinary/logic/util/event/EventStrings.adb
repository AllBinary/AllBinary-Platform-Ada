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


package body org.allbinary.logic.util.event.EventStrings_Package is

   procedure Initialize_Fields (This : in out EventStrings'Class) is
   begin
      null;
      This.PERFORMANCE_MESSAGE := To_Unbounded_String ("Use Custom onEvent Methods for needed optimization");
      This.TOTAL_LISTENERS := To_Unbounded_String ("Total Listeners: ");
      This.LISTENER_LABEL := To_Unbounded_String (" Listener: ");
      This.FIRE_EVENT := To_Unbounded_String ("fireEvent");
   end Initialize_Fields;

   procedure Initialize (This : in out EventStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return EventStrings_Access is
      This : constant EventStrings_Access := new EventStrings;
   begin
      EventStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return EventStrings_Access is
   begin
        return EventStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := EventStrings_Package.Create;

end org.allbinary.logic.util.event.EventStrings_Package;


