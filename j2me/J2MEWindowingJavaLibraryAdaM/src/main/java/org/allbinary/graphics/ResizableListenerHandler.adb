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


package body org.allbinary.graphics.ResizableListenerHandler_Package is

   procedure Initialize_Fields (This : in out ResizableListenerHandler'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ResizableListenerHandler'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ResizableListenerHandler_Access is
      This : constant ResizableListenerHandler_Access := new ResizableListenerHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ResizableListenerHandler_Access is
   begin
        return ResizableListenerHandler_Package.instance;
   end getInstance;

   procedure setListener (This : in out ResizableListenerHandler; resizableListenerInterface : ResizableListenerInterface_Access) is
   begin
        null;
   end setListener;

   procedure fire (This : in out ResizableListenerHandler; isFullScreen : Boolean) is
   begin
        null;
   end fire;

   --  throws Exception
   procedure fireEvent (This : in out ResizableListenerHandler; value : Boolean) is
   begin
        null;
   end fireEvent;

   procedure getInstance is
      Java_Result : constant ResizableListenerHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ResizableListenerHandler_Package.Create;

end org.allbinary.graphics.ResizableListenerHandler_Package;


