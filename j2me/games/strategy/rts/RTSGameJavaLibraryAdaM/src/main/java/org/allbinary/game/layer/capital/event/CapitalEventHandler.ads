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

with AllBinary_Java;
limited with org.allbinary.game.layer.capital.event.CapitalEventHandler_Package;
package org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References is
   type CapitalEventHandler_Access is access all org.allbinary.game.layer.capital.event.CapitalEventHandler_Package.CapitalEventHandler'Class;
   type CapitalEventHandler_Access_Array is array (Natural range <>) of CapitalEventHandler_Access;
   type CapitalEventHandler_Access_Array_Access is access all CapitalEventHandler_Access_Array;
   type CapitalEventHandler_Access_Array_Access_Array is array (Natural range <>) of CapitalEventHandler_Access_Array_Access;
   type CapitalEventHandler_Access_Array_Access_Array_Access is access all CapitalEventHandler_Access_Array_Access_Array;
   type CapitalEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapitalEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : CapitalEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapitalEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapitalEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapitalEventHandler_Access_Array_Access is (if Value /= null and then Value.all in CapitalEventHandler_Access_Array_Object'Class then CapitalEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type CapitalEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapitalEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CapitalEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapitalEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapitalEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapitalEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CapitalEventHandler_Access_Array_Access_Array_Object'Class then CapitalEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References;

with org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.game.layer.capital.event.CapitalEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   use type EventListenerInterface_Access;
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   use type EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   use type EventListenerInterface_Access_Array_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CapitalEventHandler_Access is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access;
   function "=" (Left, Right : CapitalEventHandler_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References."=";
   subtype CapitalEventHandler_Access_Array is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access_Array;
   function "=" (Left, Right : CapitalEventHandler_Access_Array) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References."=";
   subtype CapitalEventHandler_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access_Array_Access;
   function "=" (Left, Right : CapitalEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References."=";
   function Java_Box (Value : CapitalEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.Java_Box;
   function Java_Unbox_CapitalEventHandler_Access_Array (Value : access Java_Object'Class) return CapitalEventHandler_Access_Array_Access renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.Java_Unbox_CapitalEventHandler_Access_Array;
   subtype CapitalEventHandler_Access_Array_Access_Array is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : CapitalEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References."=";
   subtype CapitalEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CapitalEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References."=";
   function Java_Box (Value : CapitalEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.Java_Box;
   function Java_Unbox_CapitalEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return CapitalEventHandler_Access_Array_Access_Array_Access renames org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.Java_Unbox_CapitalEventHandler_Access_Array_Access_Array;

   type CapitalEventHandler is new BasicEventHandler with null record;

   procedure Initialize (This : in out CapitalEventHandler'Class);
   function Create return CapitalEventHandler_Access;
   procedure process (This : in out CapitalEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.layer.capital.event.CapitalEventHandler_Package;


