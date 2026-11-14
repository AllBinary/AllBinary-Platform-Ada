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
limited with org.allbinary.game.displayable.canvas.FormUtil_Package;
package org.allbinary.game.displayable.canvas.FormUtil_Package_References is
   type FormUtil_Access is access all org.allbinary.game.displayable.canvas.FormUtil_Package.FormUtil'Class;
   type FormUtil_Access_Array is array (Natural range <>) of FormUtil_Access;
   type FormUtil_Access_Array_Access is access all FormUtil_Access_Array;
   type FormUtil_Access_Array_Access_Array is array (Natural range <>) of FormUtil_Access_Array_Access;
   type FormUtil_Access_Array_Access_Array_Access is access all FormUtil_Access_Array_Access_Array;
   type FormUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FormUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : FormUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FormUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FormUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FormUtil_Access_Array_Access is (if Value /= null and then Value.all in FormUtil_Access_Array_Object'Class then FormUtil_Access_Array_Object'Class (Value.all).Value else null);
   type FormUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FormUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FormUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FormUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FormUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FormUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FormUtil_Access_Array_Access_Array_Object'Class then FormUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.FormUtil_Package_References;

with org.allbinary.game.displayable.canvas.FormUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;

package org.allbinary.game.displayable.canvas.FormUtil_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FormUtil_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access;
   function "=" (Left, Right : FormUtil_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array;
   function "=" (Left, Right : FormUtil_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access;
   function "=" (Left, Right : FormUtil_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   function Java_Box (Value : FormUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.FormUtil_Package_References.Java_Box;
   function Java_Unbox_FormUtil_Access_Array (Value : access Java_Object'Class) return FormUtil_Access_Array_Access renames org.allbinary.game.displayable.canvas.FormUtil_Package_References.Java_Unbox_FormUtil_Access_Array;
   subtype FormUtil_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FormUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FormUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   function Java_Box (Value : FormUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.FormUtil_Package_References.Java_Box;
   function Java_Unbox_FormUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return FormUtil_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.FormUtil_Package_References.Java_Unbox_FormUtil_Access_Array_Access_Array;

   type FormUtil is new Java_Object with null record;
   instance : FormUtil_Access;

   procedure Initialize (This : in out FormUtil'Class);
   function Create return FormUtil_Access;
   function getInstance return FormUtil_Access;
   function createFormRectangle (This : in out FormUtil) return Rectangle_Access;

end org.allbinary.game.displayable.canvas.FormUtil_Package;


