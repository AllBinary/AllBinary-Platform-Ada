-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

limited with org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package;
package org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References is
   type RTSScrollSelectionFormFactory_Access is access all org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package.RTSScrollSelectionFormFactory'Class;
   type RTSScrollSelectionFormFactory_Access_Array is array (Natural range <>) of RTSScrollSelectionFormFactory_Access;
   type RTSScrollSelectionFormFactory_Access_Array_Access is access all RTSScrollSelectionFormFactory_Access_Array;
   type RTSScrollSelectionFormFactory_Access_Array_Access_Array is array (Natural range <>) of RTSScrollSelectionFormFactory_Access_Array_Access;
   type RTSScrollSelectionFormFactory_Access_Array_Access_Array_Access is access all RTSScrollSelectionFormFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References;

with org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References;
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
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;

package org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package is

   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
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


   subtype RTSScrollSelectionFormFactory_Access is org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References.RTSScrollSelectionFormFactory_Access;
   function "=" (Left, Right : RTSScrollSelectionFormFactory_Access) return Boolean renames org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References."=";
   subtype RTSScrollSelectionFormFactory_Access_Array is org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References.RTSScrollSelectionFormFactory_Access_Array;
   function "=" (Left, Right : RTSScrollSelectionFormFactory_Access_Array) return Boolean renames org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References."=";
   subtype RTSScrollSelectionFormFactory_Access_Array_Access is org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References.RTSScrollSelectionFormFactory_Access_Array_Access;
   function "=" (Left, Right : RTSScrollSelectionFormFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References."=";
   subtype RTSScrollSelectionFormFactory_Access_Array_Access_Array is org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References.RTSScrollSelectionFormFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RTSScrollSelectionFormFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References."=";
   subtype RTSScrollSelectionFormFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References.RTSScrollSelectionFormFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSScrollSelectionFormFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package_References."=";

   type RTSScrollSelectionFormFactory is new Java_Object with null record;

   procedure Initialize (This : in out RTSScrollSelectionFormFactory'Class);
   function Create return RTSScrollSelectionFormFactory_Access;
   function getInstance (formLabel : Unbounded_String; items : ABCustomItem_Access_Array_Access) return ScrollSelectionForm_Access;
   procedure getInstance (formLabel : Unbounded_String; items : ABCustomItem_Access_Array_Access);

end org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package;


