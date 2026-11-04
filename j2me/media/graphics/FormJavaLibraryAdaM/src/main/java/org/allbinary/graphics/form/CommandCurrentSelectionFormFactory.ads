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

limited with org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;
package org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References is
   type CommandCurrentSelectionFormFactory_Access is access all org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package.CommandCurrentSelectionFormFactory'Class;
   type CommandCurrentSelectionFormFactory_Access_Array is array (Natural range <>) of CommandCurrentSelectionFormFactory_Access;
   type CommandCurrentSelectionFormFactory_Access_Array_Access is access all CommandCurrentSelectionFormFactory_Access_Array;
   type CommandCurrentSelectionFormFactory_Access_Array_Access_Array is array (Natural range <>) of CommandCurrentSelectionFormFactory_Access_Array_Access;
   type CommandCurrentSelectionFormFactory_Access_Array_Access_Array_Access is access all CommandCurrentSelectionFormFactory_Access_Array_Access_Array;
end org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References;

with org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
limited with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.form.FormType_Package_References;

package org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   use type ABCustomItem_Access;
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   use type ABCustomItem_Access_Array;
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access;
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   use type ABCustomItem_Access_Array_Access_Array;
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access_Array_Access;
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
   subtype FormType_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access;
   use type FormType_Access;
   subtype FormType_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array;
   use type FormType_Access_Array;
   subtype FormType_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access;
   use type FormType_Access_Array_Access;
   subtype FormType_Access_Array_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array;
   use type FormType_Access_Array_Access_Array;
   subtype FormType_Access_Array_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array_Access;
   use type FormType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CommandCurrentSelectionFormFactory_Access is org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References.CommandCurrentSelectionFormFactory_Access;
   function "=" (Left, Right : CommandCurrentSelectionFormFactory_Access) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References."=";
   subtype CommandCurrentSelectionFormFactory_Access_Array is org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References.CommandCurrentSelectionFormFactory_Access_Array;
   function "=" (Left, Right : CommandCurrentSelectionFormFactory_Access_Array) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References."=";
   subtype CommandCurrentSelectionFormFactory_Access_Array_Access is org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References.CommandCurrentSelectionFormFactory_Access_Array_Access;
   function "=" (Left, Right : CommandCurrentSelectionFormFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References."=";
   subtype CommandCurrentSelectionFormFactory_Access_Array_Access_Array is org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References.CommandCurrentSelectionFormFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CommandCurrentSelectionFormFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References."=";
   subtype CommandCurrentSelectionFormFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References.CommandCurrentSelectionFormFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandCurrentSelectionFormFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package_References."=";

   type CommandCurrentSelectionFormFactory is new Java_Object with null record;

   procedure Initialize (This : in out CommandCurrentSelectionFormFactory'Class);
   function Create return CommandCurrentSelectionFormFactory_Access;
   function getInstance (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ScrollSelectionForm_Access;
   procedure getInstance (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;


