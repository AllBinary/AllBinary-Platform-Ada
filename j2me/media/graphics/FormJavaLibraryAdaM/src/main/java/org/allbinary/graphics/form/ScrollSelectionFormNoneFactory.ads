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
limited with org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package;
package org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References is
   type ScrollSelectionFormNoneFactory_Access is access all org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package.ScrollSelectionFormNoneFactory'Class;
   type ScrollSelectionFormNoneFactory_Access_Array is array (Natural range <>) of ScrollSelectionFormNoneFactory_Access;
   type ScrollSelectionFormNoneFactory_Access_Array_Access is access all ScrollSelectionFormNoneFactory_Access_Array;
   type ScrollSelectionFormNoneFactory_Access_Array_Access_Array is array (Natural range <>) of ScrollSelectionFormNoneFactory_Access_Array_Access;
   type ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access is access all ScrollSelectionFormNoneFactory_Access_Array_Access_Array;
   type ScrollSelectionFormNoneFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollSelectionFormNoneFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollSelectionFormNoneFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollSelectionFormNoneFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollSelectionFormNoneFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollSelectionFormNoneFactory_Access_Array_Access is (if Value /= null and then Value.all in ScrollSelectionFormNoneFactory_Access_Array_Object'Class then ScrollSelectionFormNoneFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollSelectionFormNoneFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Object'Class then ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References;

with org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;

package org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package is

   package Reference_Types is
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   use type ScrollSelectionForm_Access;
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   use type ScrollSelectionForm_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access;
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   use type ScrollSelectionForm_Access_Array_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScrollSelectionFormNoneFactory_Access is org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.ScrollSelectionFormNoneFactory_Access;
   function "=" (Left, Right : ScrollSelectionFormNoneFactory_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References."=";
   subtype ScrollSelectionFormNoneFactory_Access_Array is org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.ScrollSelectionFormNoneFactory_Access_Array;
   function "=" (Left, Right : ScrollSelectionFormNoneFactory_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References."=";
   subtype ScrollSelectionFormNoneFactory_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.ScrollSelectionFormNoneFactory_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionFormNoneFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References."=";
   function Java_Box (Value : ScrollSelectionFormNoneFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.Java_Box;
   function Java_Unbox_ScrollSelectionFormNoneFactory_Access_Array (Value : access Java_Object'Class) return ScrollSelectionFormNoneFactory_Access_Array_Access renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.Java_Unbox_ScrollSelectionFormNoneFactory_Access_Array;
   subtype ScrollSelectionFormNoneFactory_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.ScrollSelectionFormNoneFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollSelectionFormNoneFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References."=";
   subtype ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References."=";
   function Java_Box (Value : ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.Java_Box;
   function Java_Unbox_ScrollSelectionFormNoneFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ScrollSelectionFormNoneFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package_References.Java_Unbox_ScrollSelectionFormNoneFactory_Access_Array_Access_Array;

   type ScrollSelectionFormNoneFactory is new Java_Object with null record;

   procedure Initialize (This : in out ScrollSelectionFormNoneFactory'Class);
   function Create return ScrollSelectionFormNoneFactory_Access;
   function getInstance return ScrollSelectionForm_Access;

end org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package;


