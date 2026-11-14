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


with org.allbinary.graphics.ResizableListenerInterface_Package; use org.allbinary.graphics.ResizableListenerInterface_Package;
with org.allbinary.graphics.ResizableListenerInterface_Package_References;
with org.allbinary.graphics.ResizableListenerInterface_Package;

package body org.allbinary.graphics.ResizableListenerHandler_Package is

   subtype ResizableListenerInterface_Access is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access;
   function "=" (Left, Right : ResizableListenerInterface_Access) return Boolean renames org.allbinary.graphics.ResizableListenerInterface_Package_References."=";
   subtype ResizableListenerInterface_Access_Array is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access_Array;
   function "=" (Left, Right : ResizableListenerInterface_Access_Array) return Boolean renames org.allbinary.graphics.ResizableListenerInterface_Package_References."=";
   subtype ResizableListenerInterface_Access_Array_Access is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access_Array_Access;
   function "=" (Left, Right : ResizableListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.ResizableListenerInterface_Package_References."=";
   subtype ResizableListenerInterface_Access_Array_Access_Array is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ResizableListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ResizableListenerInterface_Package_References."=";
   subtype ResizableListenerInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResizableListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ResizableListenerInterface_Package_References."=";
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
      ResizableListenerHandler_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ResizableListenerHandler_Access is
   begin
        return ResizableListenerHandler_Package.instance;
   end getInstance;

   procedure setListener (This : in out ResizableListenerHandler; resizableListenerInterface_Param : access ResizableListenerInterface_Package.ResizableListenerInterface'Class) is
      resizableListenerInterface : constant ResizableListenerInterface_Access := ResizableListenerInterface_Access (resizableListenerInterface_Param);
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

begin
   null;
   instance := ResizableListenerHandler_Package.Create;

end org.allbinary.graphics.ResizableListenerHandler_Package;


