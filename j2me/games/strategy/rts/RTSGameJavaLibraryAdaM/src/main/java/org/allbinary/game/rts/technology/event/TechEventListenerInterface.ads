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

limited with org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package;
package org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References is
   type TechEventListenerInterface_Access is access all org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package.TechEventListenerInterface'Class;
   type TechEventListenerInterface_Access_Array is array (Natural range <>) of TechEventListenerInterface_Access;
   type TechEventListenerInterface_Access_Array_Access is access all TechEventListenerInterface_Access_Array;
   type TechEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of TechEventListenerInterface_Access_Array_Access;
   type TechEventListenerInterface_Access_Array_Access_Array_Access is access all TechEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References;

with org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References;
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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   type TechEventListenerInterface is interface and EventListenerInterface;
   subtype TechEventListenerInterface_Access is org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References.TechEventListenerInterface_Access;
   function "=" (Left, Right : TechEventListenerInterface_Access) return Boolean renames org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References."=";
   subtype TechEventListenerInterface_Access_Array is org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References.TechEventListenerInterface_Access_Array;
   function "=" (Left, Right : TechEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References."=";
   subtype TechEventListenerInterface_Access_Array_Access is org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References.TechEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : TechEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References."=";
   subtype TechEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References.TechEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TechEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References."=";
   subtype TechEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References.TechEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TechEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_TechEventListenerInterface (Value : TechEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onTechEvent (This : in out TechEventListenerInterface; event_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is abstract;

end org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package;


