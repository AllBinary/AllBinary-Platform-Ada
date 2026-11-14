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
limited with org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;
package org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References is
   type PreGameScrollSelectionForm_Access is access all org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class;
   type PreGameScrollSelectionForm_Access_Array is array (Natural range <>) of PreGameScrollSelectionForm_Access;
   type PreGameScrollSelectionForm_Access_Array_Access is access all PreGameScrollSelectionForm_Access_Array;
   type PreGameScrollSelectionForm_Access_Array_Access_Array is array (Natural range <>) of PreGameScrollSelectionForm_Access_Array_Access;
   type PreGameScrollSelectionForm_Access_Array_Access_Array_Access is access all PreGameScrollSelectionForm_Access_Array_Access_Array;
   type PreGameScrollSelectionForm_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreGameScrollSelectionForm_Access_Array_Access;
   end record;
   function Java_Box (Value : PreGameScrollSelectionForm_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreGameScrollSelectionForm_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreGameScrollSelectionForm_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreGameScrollSelectionForm_Access_Array_Access is (if Value /= null and then Value.all in PreGameScrollSelectionForm_Access_Array_Object'Class then PreGameScrollSelectionForm_Access_Array_Object'Class (Value.all).Value else null);
   type PreGameScrollSelectionForm_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreGameScrollSelectionForm_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PreGameScrollSelectionForm_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreGameScrollSelectionForm_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreGameScrollSelectionForm_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreGameScrollSelectionForm_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PreGameScrollSelectionForm_Access_Array_Access_Array_Object'Class then PreGameScrollSelectionForm_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References;

with org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package_References;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package; use org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

package org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package is

   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ItemPaintableFactory_Package renames Standard.org.allbinary.graphics.form.ItemPaintableFactory_Package;
   package ScrollCurrentSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;
   package Reference_Types is
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
   subtype ItemPaintableFactory_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access;
   use type ItemPaintableFactory_Access;
   subtype ItemPaintableFactory_Access_Array is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array;
   use type ItemPaintableFactory_Access_Array;
   subtype ItemPaintableFactory_Access_Array_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access;
   use type ItemPaintableFactory_Access_Array_Access;
   subtype ItemPaintableFactory_Access_Array_Access_Array is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access_Array;
   use type ItemPaintableFactory_Access_Array_Access_Array;
   subtype ItemPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access_Array_Access;
   use type ItemPaintableFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PreGameScrollSelectionForm_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   subtype PreGameScrollSelectionForm_Access_Array is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   subtype PreGameScrollSelectionForm_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   function Java_Box (Value : PreGameScrollSelectionForm_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.Java_Box;
   function Java_Unbox_PreGameScrollSelectionForm_Access_Array (Value : access Java_Object'Class) return PreGameScrollSelectionForm_Access_Array_Access renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.Java_Unbox_PreGameScrollSelectionForm_Access_Array;
   subtype PreGameScrollSelectionForm_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   subtype PreGameScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   function Java_Box (Value : PreGameScrollSelectionForm_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.Java_Box;
   function Java_Unbox_PreGameScrollSelectionForm_Access_Array_Access_Array (Value : access Java_Object'Class) return PreGameScrollSelectionForm_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.Java_Unbox_PreGameScrollSelectionForm_Access_Array_Access_Array;

   type PreGameScrollSelectionForm is new ScrollCurrentSelectionForm with null record;

   procedure Initialize (This : in out PreGameScrollSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return PreGameScrollSelectionForm_Access;
   procedure init (This : in out PreGameScrollSelectionForm; rectangle_Param : access Rectangle_Package.Rectangle'Class);

end org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;


