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

limited with org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package;
package org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References is
   type CapitalEventListenerInterface_Access is access all org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package.CapitalEventListenerInterface'Class;
   type CapitalEventListenerInterface_Access_Array is array (Natural range <>) of CapitalEventListenerInterface_Access;
   type CapitalEventListenerInterface_Access_Array_Access is access all CapitalEventListenerInterface_Access_Array;
   type CapitalEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of CapitalEventListenerInterface_Access_Array_Access;
   type CapitalEventListenerInterface_Access_Array_Access_Array_Access is access all CapitalEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References;

with org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.layer.capital.event.CapitalEvent_Package;
with org.allbinary.game.layer.capital.event.CapitalEvent_Package_References;

package org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype CapitalEvent_Access is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access;
   use type CapitalEvent_Access;
   subtype CapitalEvent_Access_Array is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access_Array;
   use type CapitalEvent_Access_Array;
   subtype CapitalEvent_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access_Array_Access;
   use type CapitalEvent_Access_Array_Access;
   subtype CapitalEvent_Access_Array_Access_Array is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access_Array_Access_Array;
   use type CapitalEvent_Access_Array_Access_Array;
   subtype CapitalEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access_Array_Access_Array_Access;
   use type CapitalEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type CapitalEventListenerInterface is interface and EventListenerInterface;
   subtype CapitalEventListenerInterface_Access is org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References.CapitalEventListenerInterface_Access;
   function "=" (Left, Right : CapitalEventListenerInterface_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References."=";
   subtype CapitalEventListenerInterface_Access_Array is org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References.CapitalEventListenerInterface_Access_Array;
   function "=" (Left, Right : CapitalEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References."=";
   subtype CapitalEventListenerInterface_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References.CapitalEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : CapitalEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References."=";
   subtype CapitalEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References.CapitalEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CapitalEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References."=";
   subtype CapitalEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References.CapitalEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CapitalEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_CapitalEventListenerInterface (Value : CapitalEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onCapitalChangeEvent (This : in out CapitalEventListenerInterface; event_Param : access CapitalEvent_Package.CapitalEvent'Class) is abstract;

end org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package;


