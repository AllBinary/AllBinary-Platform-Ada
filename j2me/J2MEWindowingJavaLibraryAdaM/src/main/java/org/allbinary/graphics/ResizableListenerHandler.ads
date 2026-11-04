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

limited with org.allbinary.graphics.ResizableListenerHandler_Package;
package org.allbinary.graphics.ResizableListenerHandler_Package_References is
   type ResizableListenerHandler_Access is access all org.allbinary.graphics.ResizableListenerHandler_Package.ResizableListenerHandler'Class;
   type ResizableListenerHandler_Access_Array is array (Natural range <>) of ResizableListenerHandler_Access;
   type ResizableListenerHandler_Access_Array_Access is access all ResizableListenerHandler_Access_Array;
   type ResizableListenerHandler_Access_Array_Access_Array is array (Natural range <>) of ResizableListenerHandler_Access_Array_Access;
   type ResizableListenerHandler_Access_Array_Access_Array_Access is access all ResizableListenerHandler_Access_Array_Access_Array;
end org.allbinary.graphics.ResizableListenerHandler_Package_References;

with org.allbinary.graphics.ResizableListenerHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.ResizableListenerInterface_Package;
with org.allbinary.graphics.ResizableListenerInterface_Package_References;

package org.allbinary.graphics.ResizableListenerHandler_Package is

   package Reference_Types is
   subtype ResizableListenerInterface_Access is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access;
   use type ResizableListenerInterface_Access;
   subtype ResizableListenerInterface_Access_Array is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access_Array;
   use type ResizableListenerInterface_Access_Array;
   subtype ResizableListenerInterface_Access_Array_Access is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access_Array_Access;
   use type ResizableListenerInterface_Access_Array_Access;
   subtype ResizableListenerInterface_Access_Array_Access_Array is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access_Array_Access_Array;
   use type ResizableListenerInterface_Access_Array_Access_Array;
   subtype ResizableListenerInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.ResizableListenerInterface_Package_References.ResizableListenerInterface_Access_Array_Access_Array_Access;
   use type ResizableListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ResizableListenerHandler_Access is org.allbinary.graphics.ResizableListenerHandler_Package_References.ResizableListenerHandler_Access;
   function "=" (Left, Right : ResizableListenerHandler_Access) return Boolean renames org.allbinary.graphics.ResizableListenerHandler_Package_References."=";
   subtype ResizableListenerHandler_Access_Array is org.allbinary.graphics.ResizableListenerHandler_Package_References.ResizableListenerHandler_Access_Array;
   function "=" (Left, Right : ResizableListenerHandler_Access_Array) return Boolean renames org.allbinary.graphics.ResizableListenerHandler_Package_References."=";
   subtype ResizableListenerHandler_Access_Array_Access is org.allbinary.graphics.ResizableListenerHandler_Package_References.ResizableListenerHandler_Access_Array_Access;
   function "=" (Left, Right : ResizableListenerHandler_Access_Array_Access) return Boolean renames org.allbinary.graphics.ResizableListenerHandler_Package_References."=";
   subtype ResizableListenerHandler_Access_Array_Access_Array is org.allbinary.graphics.ResizableListenerHandler_Package_References.ResizableListenerHandler_Access_Array_Access_Array;
   function "=" (Left, Right : ResizableListenerHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ResizableListenerHandler_Package_References."=";
   subtype ResizableListenerHandler_Access_Array_Access_Array_Access is org.allbinary.graphics.ResizableListenerHandler_Package_References.ResizableListenerHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResizableListenerHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ResizableListenerHandler_Package_References."=";

   type ResizableListenerHandler is new Java_Object with null record;
   instance : ResizableListenerHandler_Access;

   procedure Initialize (This : in out ResizableListenerHandler'Class);
   function Create return ResizableListenerHandler_Access;
   function getInstance return ResizableListenerHandler_Access;
   procedure setListener (This : in out ResizableListenerHandler; resizableListenerInterface_Param : access ResizableListenerInterface_Package.ResizableListenerInterface'Class);
   procedure fire (This : in out ResizableListenerHandler; isFullScreen : Boolean);
   procedure fireEvent (This : in out ResizableListenerHandler; value : Boolean);

end org.allbinary.graphics.ResizableListenerHandler_Package;


