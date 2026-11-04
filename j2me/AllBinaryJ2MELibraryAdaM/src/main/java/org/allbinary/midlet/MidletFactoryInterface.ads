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

limited with org.allbinary.midlet.MidletFactoryInterface_Package;
package org.allbinary.midlet.MidletFactoryInterface_Package_References is
   type MidletFactoryInterface_Access is access all org.allbinary.midlet.MidletFactoryInterface_Package.MidletFactoryInterface'Class;
   type MidletFactoryInterface_Access_Array is array (Natural range <>) of MidletFactoryInterface_Access;
   type MidletFactoryInterface_Access_Array_Access is access all MidletFactoryInterface_Access_Array;
   type MidletFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of MidletFactoryInterface_Access_Array_Access;
   type MidletFactoryInterface_Access_Array_Access_Array_Access is access all MidletFactoryInterface_Access_Array_Access_Array;
end org.allbinary.midlet.MidletFactoryInterface_Package_References;

with org.allbinary.midlet.MidletFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDlet_Package_References;

package org.allbinary.midlet.MidletFactoryInterface_Package is

   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;
   package Reference_Types is
   subtype MIDlet_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access;
   use type MIDlet_Access;
   subtype MIDlet_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array;
   use type MIDlet_Access_Array;
   subtype MIDlet_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access;
   use type MIDlet_Access_Array_Access;
   subtype MIDlet_Access_Array_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array;
   use type MIDlet_Access_Array_Access_Array;
   subtype MIDlet_Access_Array_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array_Access;
   use type MIDlet_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MidletFactoryInterface_Access is org.allbinary.midlet.MidletFactoryInterface_Package_References.MidletFactoryInterface_Access;
   function "=" (Left, Right : MidletFactoryInterface_Access) return Boolean renames org.allbinary.midlet.MidletFactoryInterface_Package_References."=";
   subtype MidletFactoryInterface_Access_Array is org.allbinary.midlet.MidletFactoryInterface_Package_References.MidletFactoryInterface_Access_Array;
   function "=" (Left, Right : MidletFactoryInterface_Access_Array) return Boolean renames org.allbinary.midlet.MidletFactoryInterface_Package_References."=";
   subtype MidletFactoryInterface_Access_Array_Access is org.allbinary.midlet.MidletFactoryInterface_Package_References.MidletFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : MidletFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletFactoryInterface_Package_References."=";
   subtype MidletFactoryInterface_Access_Array_Access_Array is org.allbinary.midlet.MidletFactoryInterface_Package_References.MidletFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MidletFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.MidletFactoryInterface_Package_References."=";
   subtype MidletFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.midlet.MidletFactoryInterface_Package_References.MidletFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MidletFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletFactoryInterface_Package_References."=";

   type MidletFactoryInterface is new Java_Object with null record;

   procedure Initialize (This : in out MidletFactoryInterface'Class);
   function Create return MidletFactoryInterface_Access;
   function getInstance (This : in out MidletFactoryInterface) return MIDlet_Access;

end org.allbinary.midlet.MidletFactoryInterface_Package;


