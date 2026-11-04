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

limited with org.allbinary.view.CenterStaticViewPositionFactory_Package;
package org.allbinary.view.CenterStaticViewPositionFactory_Package_References is
   type CenterStaticViewPositionFactory_Access is access all org.allbinary.view.CenterStaticViewPositionFactory_Package.CenterStaticViewPositionFactory'Class;
   type CenterStaticViewPositionFactory_Access_Array is array (Natural range <>) of CenterStaticViewPositionFactory_Access;
   type CenterStaticViewPositionFactory_Access_Array_Access is access all CenterStaticViewPositionFactory_Access_Array;
   type CenterStaticViewPositionFactory_Access_Array_Access_Array is array (Natural range <>) of CenterStaticViewPositionFactory_Access_Array_Access;
   type CenterStaticViewPositionFactory_Access_Array_Access_Array_Access is access all CenterStaticViewPositionFactory_Access_Array_Access_Array;
end org.allbinary.view.CenterStaticViewPositionFactory_Package_References;

with org.allbinary.view.CenterStaticViewPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;

package org.allbinary.view.CenterStaticViewPositionFactory_Package is

   package Reference_Types is
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CenterStaticViewPositionFactory_Access is org.allbinary.view.CenterStaticViewPositionFactory_Package_References.CenterStaticViewPositionFactory_Access;
   function "=" (Left, Right : CenterStaticViewPositionFactory_Access) return Boolean renames org.allbinary.view.CenterStaticViewPositionFactory_Package_References."=";
   subtype CenterStaticViewPositionFactory_Access_Array is org.allbinary.view.CenterStaticViewPositionFactory_Package_References.CenterStaticViewPositionFactory_Access_Array;
   function "=" (Left, Right : CenterStaticViewPositionFactory_Access_Array) return Boolean renames org.allbinary.view.CenterStaticViewPositionFactory_Package_References."=";
   subtype CenterStaticViewPositionFactory_Access_Array_Access is org.allbinary.view.CenterStaticViewPositionFactory_Package_References.CenterStaticViewPositionFactory_Access_Array_Access;
   function "=" (Left, Right : CenterStaticViewPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.view.CenterStaticViewPositionFactory_Package_References."=";
   subtype CenterStaticViewPositionFactory_Access_Array_Access_Array is org.allbinary.view.CenterStaticViewPositionFactory_Package_References.CenterStaticViewPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CenterStaticViewPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.view.CenterStaticViewPositionFactory_Package_References."=";
   subtype CenterStaticViewPositionFactory_Access_Array_Access_Array_Access is org.allbinary.view.CenterStaticViewPositionFactory_Package_References.CenterStaticViewPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CenterStaticViewPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.CenterStaticViewPositionFactory_Package_References."=";

   type CenterStaticViewPositionFactory is new Java_Object with null record;

   procedure Initialize (This : in out CenterStaticViewPositionFactory'Class);
   function Create return CenterStaticViewPositionFactory_Access;
   function getInstance (This : in out CenterStaticViewPositionFactory; z : Integer) return ViewPositionBase_Access;
   procedure getInstance (This : in out CenterStaticViewPositionFactory; z : Integer);

end org.allbinary.view.CenterStaticViewPositionFactory_Package;


