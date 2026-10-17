-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package is

   procedure Initialize_Fields (This : in out CapitalEventHandlerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CapitalEventHandlerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CapitalEventHandlerFactory_Access is
      This : constant CapitalEventHandlerFactory_Access := new CapitalEventHandlerFactory;
   begin
      CapitalEventHandlerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  Java static initializer: call this once
   procedure Initializer is
      index : Integer;
   begin
        capitalEventHandlerArray := new CapitalEventHandler_Access_Array'(0 .. (10) - 1 => null);
        for index in reverse 0 .. (CapitalEventHandlerFactory_Package.capitalEventHandlerArray'Length) - (1) loop
            CapitalEventHandlerFactory_Package.capitalEventHandlerArray (index) := CapitalEventHandler_Package.Create;
        end loop;
   end Initializer;

   function getInstance (groupInterface : Group_Access) return CapitalEventHandler_Access is
   begin
        return CapitalEventHandlerFactory_Package.capitalEventHandlerArray (Integer (groupInterface.getGroupId));
   end getInstance;

   procedure removeAll is
      index : Integer;
   begin
        for index in reverse 0 .. (CapitalEventHandlerFactory_Package.capitalEventHandlerArray'Length) - (1) loop
            CapitalEventHandlerFactory_Package.capitalEventHandlerArray (index).removeAllListeners;
        end loop;
   end removeAll;

   procedure getInstance (groupInterface : Group_Access) is
      Java_Result : constant CapitalEventHandler_Access := getInstance (groupInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   capitalEventHandlerArray := null;

end org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package;


