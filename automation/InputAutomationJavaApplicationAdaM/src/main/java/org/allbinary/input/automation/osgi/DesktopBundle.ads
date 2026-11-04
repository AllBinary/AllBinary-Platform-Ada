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

limited with org.allbinary.input.automation.osgi.DesktopBundle_Package;
package org.allbinary.input.automation.osgi.DesktopBundle_Package_References is
   type DesktopBundle_Access is access all org.allbinary.input.automation.osgi.DesktopBundle_Package.DesktopBundle'Class;
   type DesktopBundle_Access_Array is array (Natural range <>) of DesktopBundle_Access;
   type DesktopBundle_Access_Array_Access is access all DesktopBundle_Access_Array;
   type DesktopBundle_Access_Array_Access_Array is array (Natural range <>) of DesktopBundle_Access_Array_Access;
   type DesktopBundle_Access_Array_Access_Array_Access is access all DesktopBundle_Access_Array_Access_Array;
end org.allbinary.input.automation.osgi.DesktopBundle_Package_References;

with org.allbinary.input.automation.osgi.DesktopBundle_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.osgi.framework.Bundle_Package;
with org.osgi.framework.Bundle_Package_References;

package org.allbinary.input.automation.osgi.DesktopBundle_Package is

   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package Reference_Types is
   subtype Bundle_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access;
   use type Bundle_Access;
   subtype Bundle_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array;
   use type Bundle_Access_Array;
   subtype Bundle_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access;
   use type Bundle_Access_Array_Access;
   subtype Bundle_Access_Array_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array;
   use type Bundle_Access_Array_Access_Array;
   subtype Bundle_Access_Array_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array_Access;
   use type Bundle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DesktopBundle_Access is org.allbinary.input.automation.osgi.DesktopBundle_Package_References.DesktopBundle_Access;
   function "=" (Left, Right : DesktopBundle_Access) return Boolean renames org.allbinary.input.automation.osgi.DesktopBundle_Package_References."=";
   subtype DesktopBundle_Access_Array is org.allbinary.input.automation.osgi.DesktopBundle_Package_References.DesktopBundle_Access_Array;
   function "=" (Left, Right : DesktopBundle_Access_Array) return Boolean renames org.allbinary.input.automation.osgi.DesktopBundle_Package_References."=";
   subtype DesktopBundle_Access_Array_Access is org.allbinary.input.automation.osgi.DesktopBundle_Package_References.DesktopBundle_Access_Array_Access;
   function "=" (Left, Right : DesktopBundle_Access_Array_Access) return Boolean renames org.allbinary.input.automation.osgi.DesktopBundle_Package_References."=";
   subtype DesktopBundle_Access_Array_Access_Array is org.allbinary.input.automation.osgi.DesktopBundle_Package_References.DesktopBundle_Access_Array_Access_Array;
   function "=" (Left, Right : DesktopBundle_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.osgi.DesktopBundle_Package_References."=";
   subtype DesktopBundle_Access_Array_Access_Array_Access is org.allbinary.input.automation.osgi.DesktopBundle_Package_References.DesktopBundle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DesktopBundle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.osgi.DesktopBundle_Package_References."=";

   type DesktopBundle is new Java_Object with record
      bundle : Bundle_Access;
   end record;
   DESKTOP_SYMBOLIC_NAME : Unbounded_String;

   procedure Initialize (This : in out DesktopBundle'Class);
   function Create return DesktopBundle_Access;
   procedure start (This : in out DesktopBundle);

end org.allbinary.input.automation.osgi.DesktopBundle_Package;


