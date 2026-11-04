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

limited with org.allbinary.layer.event.ScrollMapEvent_Package;
package org.allbinary.layer.event.ScrollMapEvent_Package_References is
   type ScrollMapEvent_Access is access all org.allbinary.layer.event.ScrollMapEvent_Package.ScrollMapEvent'Class;
   type ScrollMapEvent_Access_Array is array (Natural range <>) of ScrollMapEvent_Access;
   type ScrollMapEvent_Access_Array_Access is access all ScrollMapEvent_Access_Array;
   type ScrollMapEvent_Access_Array_Access_Array is array (Natural range <>) of ScrollMapEvent_Access_Array_Access;
   type ScrollMapEvent_Access_Array_Access_Array_Access is access all ScrollMapEvent_Access_Array_Access_Array;
end org.allbinary.layer.event.ScrollMapEvent_Package_References;

with org.allbinary.layer.event.ScrollMapEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.layer.event.ScrollMapEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ScrollMapEvent_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access;
   function "=" (Left, Right : ScrollMapEvent_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array;
   function "=" (Left, Right : ScrollMapEvent_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";

   type ScrollMapEvent is new AllBinaryEventObject with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out ScrollMapEvent'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return ScrollMapEvent_Access;
   procedure setDx (This : in out ScrollMapEvent; dx : Integer);
   function getDx (This : in out ScrollMapEvent) return Integer;
   procedure setDy (This : in out ScrollMapEvent; dy : Integer);
   function getDy (This : in out ScrollMapEvent) return Integer;
   procedure setDxDy (This : in out ScrollMapEvent; dx : Integer; dy : Integer);

end org.allbinary.layer.event.ScrollMapEvent_Package;


