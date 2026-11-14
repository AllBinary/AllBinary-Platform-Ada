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

with AllBinary_Java;
limited with org.allbinary.view.ViewPositionFactory_Package;
package org.allbinary.view.ViewPositionFactory_Package_References is
   type ViewPositionFactory_Access is access all org.allbinary.view.ViewPositionFactory_Package.ViewPositionFactory'Class;
   type ViewPositionFactory_Access_Array is array (Natural range <>) of ViewPositionFactory_Access;
   type ViewPositionFactory_Access_Array_Access is access all ViewPositionFactory_Access_Array;
   type ViewPositionFactory_Access_Array_Access_Array is array (Natural range <>) of ViewPositionFactory_Access_Array_Access;
   type ViewPositionFactory_Access_Array_Access_Array_Access is access all ViewPositionFactory_Access_Array_Access_Array;
   type ViewPositionFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewPositionFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewPositionFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewPositionFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewPositionFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewPositionFactory_Access_Array_Access is (if Value /= null and then Value.all in ViewPositionFactory_Access_Array_Object'Class then ViewPositionFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ViewPositionFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewPositionFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewPositionFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewPositionFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewPositionFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewPositionFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ViewPositionFactory_Access_Array_Access_Array_Object'Class then ViewPositionFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.view.ViewPositionFactory_Package_References;

with org.allbinary.view.ViewPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;

package org.allbinary.view.ViewPositionFactory_Package is

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


   subtype ViewPositionFactory_Access is org.allbinary.view.ViewPositionFactory_Package_References.ViewPositionFactory_Access;
   function "=" (Left, Right : ViewPositionFactory_Access) return Boolean renames org.allbinary.view.ViewPositionFactory_Package_References."=";
   subtype ViewPositionFactory_Access_Array is org.allbinary.view.ViewPositionFactory_Package_References.ViewPositionFactory_Access_Array;
   function "=" (Left, Right : ViewPositionFactory_Access_Array) return Boolean renames org.allbinary.view.ViewPositionFactory_Package_References."=";
   subtype ViewPositionFactory_Access_Array_Access is org.allbinary.view.ViewPositionFactory_Package_References.ViewPositionFactory_Access_Array_Access;
   function "=" (Left, Right : ViewPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionFactory_Package_References."=";
   function Java_Box (Value : ViewPositionFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.ViewPositionFactory_Package_References.Java_Box;
   function Java_Unbox_ViewPositionFactory_Access_Array (Value : access Java_Object'Class) return ViewPositionFactory_Access_Array_Access renames org.allbinary.view.ViewPositionFactory_Package_References.Java_Unbox_ViewPositionFactory_Access_Array;
   subtype ViewPositionFactory_Access_Array_Access_Array is org.allbinary.view.ViewPositionFactory_Package_References.ViewPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionFactory_Package_References."=";
   subtype ViewPositionFactory_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionFactory_Package_References.ViewPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionFactory_Package_References."=";
   function Java_Box (Value : ViewPositionFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.ViewPositionFactory_Package_References.Java_Box;
   function Java_Unbox_ViewPositionFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ViewPositionFactory_Access_Array_Access_Array_Access renames org.allbinary.view.ViewPositionFactory_Package_References.Java_Unbox_ViewPositionFactory_Access_Array_Access_Array;

   type ViewPositionFactory is new Java_Object and ViewPositionFactoryInterface with null record;

   procedure Initialize (This : in out ViewPositionFactory'Class);
   function Create return ViewPositionFactory_Access;
   function getInstance (This : in out ViewPositionFactory) return ViewPositionBase_Access;

end org.allbinary.view.ViewPositionFactory_Package;


