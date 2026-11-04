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


with org.allbinary.graphics.ScreenEmptyListener_Package; use org.allbinary.graphics.ScreenEmptyListener_Package;
with org.allbinary.graphics.ScreenListenerInterface_Package; use org.allbinary.graphics.ScreenListenerInterface_Package;
with org.allbinary.graphics.ScreenEmptyListener_Package;
with org.allbinary.graphics.ScreenListenerInterface_Package;

package body org.allbinary.graphics.ScreenListenerHandler_Package is

   subtype ScreenListenerInterface_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access;
   function "=" (Left, Right : ScreenListenerInterface_Access) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   subtype ScreenListenerInterface_Access_Array is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array;
   function "=" (Left, Right : ScreenListenerInterface_Access_Array) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   subtype ScreenListenerInterface_Access_Array_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access;
   function "=" (Left, Right : ScreenListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   subtype ScreenListenerInterface_Access_Array_Access_Array is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   subtype ScreenListenerInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   procedure Initialize_Fields (This : in out ScreenListenerHandler'Class) is
   begin
      null;
      This.screenListenerInterface := ScreenListenerInterface_Access (ScreenEmptyListener_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out ScreenListenerHandler'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScreenListenerHandler_Access is
      This : constant ScreenListenerHandler_Access := new ScreenListenerHandler;
   begin
      ScreenListenerHandler_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ScreenListenerHandler_Access is
   begin
        return ScreenListenerHandler_Access (ScreenListenerHandler_Package.instance);
   end getInstance;

   procedure setListener (This : in out ScreenListenerHandler; screenListenerInterface_Param : access ScreenListenerInterface_Package.ScreenListenerInterface'Class) is
      screenListenerInterface : constant ScreenListenerInterface_Access := ScreenListenerInterface_Access (screenListenerInterface_Param);
   begin
        This.screenListenerInterface := screenListenerInterface;
   end setListener;

   procedure fireWithState (This : in out ScreenListenerHandler; isFullScreen : Boolean) is
   begin
        This.screenListenerInterface.onFullScreen (isFullScreen);
   end fireWithState;

   procedure fire (This : in out ScreenListenerHandler) is
   begin
        This.screenListenerInterface.onFullScreenDisplay;
   end fire;

begin
   null;
   instance := ScreenListenerHandler_Package.Create;

end org.allbinary.graphics.ScreenListenerHandler_Package;


