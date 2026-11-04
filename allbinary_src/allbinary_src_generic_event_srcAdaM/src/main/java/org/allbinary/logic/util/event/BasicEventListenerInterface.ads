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

limited with org.allbinary.logic.util.event.BasicEventListenerInterface_Package;
package org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References is
   type BasicEventListenerInterface_Access is access all org.allbinary.logic.util.event.BasicEventListenerInterface_Package.BasicEventListenerInterface'Class;
   type BasicEventListenerInterface_Access_Array is array (Natural range <>) of BasicEventListenerInterface_Access;
   type BasicEventListenerInterface_Access_Array_Access is access all BasicEventListenerInterface_Access_Array;
   type BasicEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of BasicEventListenerInterface_Access_Array_Access;
   type BasicEventListenerInterface_Access_Array_Access_Array_Access is access all BasicEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References;

with org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.logic.util.event.BasicEventListenerInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type BasicEventListenerInterface is interface and EventListenerInterface;
   subtype BasicEventListenerInterface_Access is org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References.BasicEventListenerInterface_Access;
   function "=" (Left, Right : BasicEventListenerInterface_Access) return Boolean renames org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References."=";
   subtype BasicEventListenerInterface_Access_Array is org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References.BasicEventListenerInterface_Access_Array;
   function "=" (Left, Right : BasicEventListenerInterface_Access_Array) return Boolean renames org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References."=";
   subtype BasicEventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References.BasicEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : BasicEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References."=";
   subtype BasicEventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References.BasicEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References."=";
   subtype BasicEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References.BasicEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.BasicEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_BasicEventListenerInterface (Value : BasicEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.util.event.BasicEventListenerInterface_Package;


