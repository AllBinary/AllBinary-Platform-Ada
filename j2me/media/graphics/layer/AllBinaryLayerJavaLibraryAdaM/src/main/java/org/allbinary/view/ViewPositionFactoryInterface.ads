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

limited with org.allbinary.view.ViewPositionFactoryInterface_Package;
package org.allbinary.view.ViewPositionFactoryInterface_Package_References is
   type ViewPositionFactoryInterface_Access is access all org.allbinary.view.ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class;
   type ViewPositionFactoryInterface_Access_Array is array (Natural range <>) of ViewPositionFactoryInterface_Access;
   type ViewPositionFactoryInterface_Access_Array_Access is access all ViewPositionFactoryInterface_Access_Array;
   type ViewPositionFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of ViewPositionFactoryInterface_Access_Array_Access;
   type ViewPositionFactoryInterface_Access_Array_Access_Array_Access is access all ViewPositionFactoryInterface_Access_Array_Access_Array;
end org.allbinary.view.ViewPositionFactoryInterface_Package_References;

with org.allbinary.view.ViewPositionFactoryInterface_Package_References;
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

package org.allbinary.view.ViewPositionFactoryInterface_Package is

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


   type ViewPositionFactoryInterface is interface;
   subtype ViewPositionFactoryInterface_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   function Java_Object_Access_From_ViewPositionFactoryInterface (Value : ViewPositionFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out ViewPositionFactoryInterface) return ViewPositionBase_Access is abstract;

end org.allbinary.view.ViewPositionFactoryInterface_Package;


